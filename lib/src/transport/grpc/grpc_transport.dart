import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:logging/logging.dart';

import '../../auth/auth_provider.dart';
import '../../auth/credentials.dart';
import '../../errors/errors.dart';
import '../../generated/generated.dart' as ydb;
import '../../retry/retry.dart';
import '../../types/types.dart';
import '../i_ydb_transport.dart';
import 'operation_unpacker.dart';
import 'type_converter.dart';

/// gRPC-based transport for YDB using protobuf.
///
/// Uses gRPC protocol with proper protobuf serialization to communicate
/// with YDB Table Service and Query Service.
class GrpcTransport implements IYdbTransport {
  static final Logger _logger = Logger('GrpcTransport');

  final String endpoint;
  final Duration timeout;
  final YdbCredentials credentials;
  final String database;
  final RetrySettings retrySettings;
  final bool useTls;

  late ClientChannel _channel;
  late ydb.TableServiceClient _tableClient;
  late ydb.SchemeServiceClient _schemeClient;
  bool _initialized = false;

  /// Creates a GrpcTransport.
  ///
  /// [endpoint] - Server endpoint (e.g., 'ydb.serverless.yandexcloud.net:2135')
  /// [timeout] - Request timeout duration
  /// [credentials] - YDB credentials for authentication
  /// [database] - Database path (e.g., '/ru-central1/b1g.../etni...')
  /// [retrySettings] - Retry configuration
  /// [useTls] - Whether to use TLS/SSL (default: true for production)
  GrpcTransport({
    required this.endpoint,
    required this.timeout,
    required this.credentials,
    required this.database,
    required this.retrySettings,
    this.useTls = true,
  });

  @override
  Future<void> initialize() async {
    if (_initialized) return;

    _logger.info('Initializing gRPC transport to $endpoint (TLS: $useTls)');

    // Parse endpoint into host and port
    final Uri uri = _parseEndpoint(endpoint);
    final String host = uri.host;
    final int port = uri.hasPort ? uri.port : (useTls ? 2135 : 2136);

    // Create gRPC channel
    _channel = ClientChannel(
      host,
      port: port,
      options: ChannelOptions(
        credentials: useTls
            ? const ChannelCredentials.secure()
            : const ChannelCredentials.insecure(),
        connectionTimeout: timeout,
      ),
    );

    // Create service clients
    _tableClient = ydb.TableServiceClient(_channel);
    _schemeClient = ydb.SchemeServiceClient(_channel);

    _initialized = true;
    _logger.info('gRPC channel initialized: $host:$port');
  }

  @override
  Future<void> close() async {
    if (!_initialized) return;

    _logger.info('Closing gRPC channel');
    await _channel.shutdown();
    _initialized = false;
  }

  @override
  Future<T> send<T>({
    required String endpoint,
    required Object? body,
    required T Function(Object? json) decoder,
    Map<String, String>? headers,
  }) async {
    if (!_initialized) {
      throw StateError('GrpcTransport is not initialized');
    }

    Future<T> operation() async {
      final String token = await credentials.getAuthToken() ?? '';

      // Create call options with metadata
      final CallOptions options = CallOptions(
        timeout: timeout,
        metadata: <String, String>{
          'x-ydb-database': database,
          if (token.isNotEmpty) 'x-ydb-auth-ticket': token,
          ...?headers,
        },
      );

      try {
        if (endpoint.contains('query/v1/execute')) {
          return await _executeQuery(
            body as Map<String, dynamic>,
            options,
            decoder,
          );
        } else if (endpoint.contains('scheme/v1/create_table')) {
          return await _createTable(
            body as Map<String, dynamic>,
            options,
            decoder,
          );
        } else if (endpoint.contains('scheme/v1/drop_table')) {
          return await _dropTable(
            body as Map<String, dynamic>,
            options,
            decoder,
          );
        } else if (endpoint.contains('scheme/v1/alter_table')) {
          return await _alterTable(
            body as Map<String, dynamic>,
            options,
            decoder,
          );
        } else if (endpoint.contains('scheme/v1/describe_table')) {
          return await _describeTable(
            body as Map<String, dynamic>,
            options,
            decoder,
          );
        } else if (endpoint.contains('scheme/v1/list_directory')) {
          return await _listDirectory(
            body as Map<String, dynamic>,
            options,
            decoder,
          );
        }

        throw UnsupportedError('Endpoint not yet implemented: $endpoint');
      } on GrpcError catch (e) {
        _logger.warning('gRPC error: ${e.codeName} - ${e.message}');
        throw _mapGrpcError(e);
      }
    }

    // Use retry logic
    return withRetry(
      operation,
      retrySettings,
      auth: credentials is AuthProvider ? credentials as AuthProvider : null,
    );
  }

  /// Execute a query using Table Service with proper type conversion.
  Future<T> _executeQuery<T>(
    Map<String, dynamic> requestBody,
    CallOptions options,
    T Function(Object? json) decoder,
  ) async {
    return _withSession(options, (String sessionId) async {
      // Execute query
      final ydb.ExecuteDataQueryRequest queryRequest =
          ydb.ExecuteDataQueryRequest()
            ..sessionId = sessionId
            ..query = (ydb.Query()..yqlText = requestBody['yql_text'] as String)
            ..txControl = (ydb.TransactionControl()
              ..beginTx = (ydb.TransactionSettings()
                ..serializableReadWrite = ydb.SerializableModeSettings())
              ..commitTx = true);

      // Add parameters if present - use TypeConverter
      if (requestBody.containsKey('parameters')) {
        final Map<String, dynamic> params =
            requestBody['parameters'] as Map<String, dynamic>;
        queryRequest.parameters.addAll(_convertParameters(params));
      }

      final ydb.ExecuteDataQueryResponse queryResponseWrapper =
          await _tableClient.executeDataQuery(queryRequest, options: options);

      // Unpack ExecuteDataQueryResult from Operation
      final ydb.ExecuteQueryResult queryResult = OperationUnpacker.unpack(
        queryResponseWrapper.operation,
        ydb.ExecuteQueryResult.new,
      );

      // Convert protobuf result to JSON format expected by QueryResult
      final Map<String, dynamic> jsonResponse =
          _convertQueryResultToJson(queryResult);

      return decoder(jsonResponse);
    });
  }

  /// Executes a callback within a Table Service session.
  ///
  /// Creates a session, runs [callback], and always deletes the session after.
  Future<T> _withSession<T>(
    CallOptions options,
    Future<T> Function(String sessionId) callback,
  ) async {
    // Create session
    final ydb.CreateSessionRequest createSessionRequest =
        ydb.CreateSessionRequest();

    final ydb.CreateSessionResponse sessionResponseWrapper = await _tableClient
        .createSession(createSessionRequest, options: options);

    final ydb.CreateSessionResult sessionResult = OperationUnpacker.unpack(
      sessionResponseWrapper.operation,
      ydb.CreateSessionResult.new,
    );

    final String sessionId = sessionResult.sessionId;
    _logger.info('Created session: $sessionId');

    try {
      return await callback(sessionId);
    } finally {
      try {
        final ydb.DeleteSessionRequest deleteRequest =
            ydb.DeleteSessionRequest()..sessionId = sessionId;
        await _tableClient.deleteSession(deleteRequest, options: options);
        _logger.info('Deleted session: $sessionId');
      } catch (e) {
        _logger.warning('Failed to delete session: $e');
      }
    }
  }

  /// Create a table using Table Service.
  Future<T> _createTable<T>(
    Map<String, dynamic> body,
    CallOptions options,
    T Function(Object? json) decoder,
  ) async {
    return _withSession(options, (String sessionId) async {
      final ydb.CreateTableRequest request = ydb.CreateTableRequest()
        ..sessionId = sessionId
        ..path = body['path'] as String;

      // Convert columns
      if (body.containsKey('columns')) {
        final List<dynamic> columns = body['columns'] as List<dynamic>;
        for (final dynamic col in columns) {
          final Map<String, dynamic> colMap = col as Map<String, dynamic>;
          request.columns.add(_buildColumnMeta(colMap));
        }
      }

      // Add primary key
      if (body.containsKey('primary_key')) {
        final List<dynamic> pk = body['primary_key'] as List<dynamic>;
        request.primaryKey.addAll(pk.cast<String>());
      }

      // Add indexes
      if (body.containsKey('indexes')) {
        final List<dynamic> indexes = body['indexes'] as List<dynamic>;
        for (final dynamic idx in indexes) {
          final Map<String, dynamic> idxMap = idx as Map<String, dynamic>;
          request.indexes.add(_buildTableIndex(idxMap));
        }
      }

      final ydb.CreateTableResponse response =
          await _tableClient.createTable(request, options: options);

      // Check operation status (no result payload expected)
      OperationUnpacker.unpack(
        response.operation,
        ydb.CreateTableResponse.new,
      );

      _logger.info('Created table: ${body['path']}');
      return decoder(null);
    });
  }

  /// Drop a table using Table Service.
  Future<T> _dropTable<T>(
    Map<String, dynamic> body,
    CallOptions options,
    T Function(Object? json) decoder,
  ) async {
    return _withSession(options, (String sessionId) async {
      final ydb.DropTableRequest request = ydb.DropTableRequest()
        ..sessionId = sessionId
        ..path = body['path'] as String;

      final ydb.DropTableResponse response =
          await _tableClient.dropTable(request, options: options);

      OperationUnpacker.unpack(
        response.operation,
        ydb.DropTableResponse.new,
      );

      _logger.info('Dropped table: ${body['path']}');
      return decoder(null);
    });
  }

  /// Alter a table using Table Service.
  Future<T> _alterTable<T>(
    Map<String, dynamic> body,
    CallOptions options,
    T Function(Object? json) decoder,
  ) async {
    return _withSession(options, (String sessionId) async {
      final ydb.AlterTableRequest request = ydb.AlterTableRequest()
        ..sessionId = sessionId
        ..path = body['path'] as String;

      // Add columns
      if (body.containsKey('add_columns')) {
        final List<dynamic> columns = body['add_columns'] as List<dynamic>;
        for (final dynamic col in columns) {
          request.addColumns.add(_buildColumnMeta(col as Map<String, dynamic>));
        }
      }

      // Drop columns
      if (body.containsKey('drop_columns')) {
        final List<dynamic> columns = body['drop_columns'] as List<dynamic>;
        request.dropColumns.addAll(columns.cast<String>());
      }

      // Add indexes
      if (body.containsKey('add_indexes')) {
        final List<dynamic> indexes = body['add_indexes'] as List<dynamic>;
        for (final dynamic idx in indexes) {
          request.addIndexes.add(_buildTableIndex(idx as Map<String, dynamic>));
        }
      }

      // Drop indexes
      if (body.containsKey('drop_indexes')) {
        final List<dynamic> indexes = body['drop_indexes'] as List<dynamic>;
        request.dropIndexes.addAll(indexes.cast<String>());
      }

      final ydb.AlterTableResponse response =
          await _tableClient.alterTable(request, options: options);

      OperationUnpacker.unpack(
        response.operation,
        ydb.AlterTableResponse.new,
      );

      _logger.info('Altered table: ${body['path']}');
      return decoder(null);
    });
  }

  /// Describe a table using Table Service.
  Future<T> _describeTable<T>(
    Map<String, dynamic> body,
    CallOptions options,
    T Function(Object? json) decoder,
  ) async {
    return _withSession(options, (String sessionId) async {
      final ydb.DescribeTableRequest request = ydb.DescribeTableRequest()
        ..sessionId = sessionId
        ..path = body['path'] as String;

      final ydb.DescribeTableResponse response =
          await _tableClient.describeTable(request, options: options);

      final ydb.DescribeTableResult result = OperationUnpacker.unpack(
        response.operation,
        ydb.DescribeTableResult.new,
      );

      // Convert protobuf DescribeTableResult to JSON for SDK
      final Map<String, dynamic> jsonResult = _convertDescribeResultToJson(
        result,
        body['path'] as String,
      );

      _logger.info('Described table: ${body['path']}');
      return decoder(jsonResult);
    });
  }

  /// List directory entries using Scheme Service.
  Future<T> _listDirectory<T>(
    Map<String, dynamic> body,
    CallOptions options,
    T Function(Object? json) decoder,
  ) async {
    final ydb.ListDirectoryRequest request = ydb.ListDirectoryRequest()
      ..path = body['path'] as String;

    final ydb.ListDirectoryResponse response =
        await _schemeClient.listDirectory(request, options: options);

    final ydb.ListDirectoryResult result = OperationUnpacker.unpack(
      response.operation,
      ydb.ListDirectoryResult.new,
    );

    // Convert protobuf Entry list to JSON format for SDK layer
    final List<Map<String, dynamic>> entries = <Map<String, dynamic>>[];
    for (final ydb.Entry child in result.children) {
      entries.add(<String, dynamic>{
        'name': child.name,
        'owner': child.owner,
        'type': child.type.name,
        'size_bytes': child.sizeBytes.toInt(),
      });
    }

    _logger
        .info('Listed directory: ${body['path']} (${entries.length} entries)');
    return decoder(entries);
  }

  /// Convert DescribeTableResult protobuf to JSON format.
  Map<String, dynamic> _convertDescribeResultToJson(
    ydb.DescribeTableResult result,
    String path,
  ) {
    // Extract table name from path
    final String name =
        result.hasSelf() ? result.self.name : path.split('/').last;

    // Convert columns
    final List<Map<String, dynamic>> columns = <Map<String, dynamic>>[];
    for (final ydb.ColumnMeta col in result.columns) {
      final bool isOptional = col.type.hasOptionalType();
      final String typeName = isOptional
          ? _convertTypeToString(col.type.optionalType.item)
          : _convertTypeToString(col.type);
      columns.add(<String, dynamic>{
        'name': col.name,
        'type': typeName,
        'nullable': isOptional || !col.notNull,
      });
    }

    // Convert indexes
    final List<Map<String, dynamic>> indexes = <Map<String, dynamic>>[];
    for (final ydb.TableIndexDescription idx in result.indexes) {
      String indexType = 'global';
      if (idx.hasGlobalAsyncIndex()) {
        indexType = 'global_async';
      } else if (idx.hasGlobalUniqueIndex()) {
        indexType = 'global_unique';
      }
      indexes.add(<String, dynamic>{
        'name': idx.name,
        'columns': idx.indexColumns.toList(),
        'type': indexType,
      });
    }

    return <String, dynamic>{
      'name': name,
      'columns': columns,
      'primary_key': result.primaryKey.toList(),
      if (indexes.isNotEmpty) 'indexes': indexes,
    };
  }

  /// Build a protobuf ColumnMeta from SDK JSON column definition.
  ydb.ColumnMeta _buildColumnMeta(Map<String, dynamic> colMap) {
    final String name = colMap['name'] as String;
    final String typeName = colMap['type'] as String;
    final bool nullable = colMap['nullable'] as bool? ?? true;

    final ydb.ColumnMeta meta = ydb.ColumnMeta()..name = name;

    final ydb.Type primitiveType = _sdkTypeStringToProto(typeName);

    if (nullable) {
      // Wrap in OptionalType for nullable columns
      meta.type = ydb.Type()
        ..optionalType = (ydb.OptionalType()..item = primitiveType);
    } else {
      meta.type = primitiveType;
      meta.notNull = true;
    }

    return meta;
  }

  /// Build a protobuf TableIndex from SDK JSON index definition.
  ydb.TableIndex _buildTableIndex(Map<String, dynamic> idxMap) {
    final ydb.TableIndex index = ydb.TableIndex()
      ..name = idxMap['name'] as String;

    final List<dynamic> columns = idxMap['columns'] as List<dynamic>;
    index.indexColumns.addAll(columns.cast<String>());

    final String indexType = idxMap['type'] as String? ?? 'global';
    switch (indexType) {
      case 'global_async':
        index.globalAsyncIndex = ydb.GlobalAsyncIndex();
        break;
      case 'global_unique':
        index.globalUniqueIndex = ydb.GlobalUniqueIndex();
        break;
      default:
        index.globalIndex = ydb.GlobalIndex();
    }

    return index;
  }

  /// Convert SDK type name string (e.g., 'Int64', 'Utf8') to protobuf Type.
  ydb.Type _sdkTypeStringToProto(String typeName) {
    final Map<String, ydb.Type_PrimitiveTypeId> typeMap =
        <String, ydb.Type_PrimitiveTypeId>{
      'Bool': ydb.Type_PrimitiveTypeId.BOOL,
      'Int8': ydb.Type_PrimitiveTypeId.INT8,
      'Int16': ydb.Type_PrimitiveTypeId.INT16,
      'Int32': ydb.Type_PrimitiveTypeId.INT32,
      'Int64': ydb.Type_PrimitiveTypeId.INT64,
      'Uint8': ydb.Type_PrimitiveTypeId.UINT8,
      'Uint16': ydb.Type_PrimitiveTypeId.UINT16,
      'Uint32': ydb.Type_PrimitiveTypeId.UINT32,
      'Uint64': ydb.Type_PrimitiveTypeId.UINT64,
      'Float': ydb.Type_PrimitiveTypeId.FLOAT,
      'Double': ydb.Type_PrimitiveTypeId.DOUBLE,
      'String': ydb.Type_PrimitiveTypeId.STRING,
      'Utf8': ydb.Type_PrimitiveTypeId.UTF8,
      'Yson': ydb.Type_PrimitiveTypeId.YSON,
      'Json': ydb.Type_PrimitiveTypeId.JSON,
      'JsonDocument': ydb.Type_PrimitiveTypeId.JSON_DOCUMENT,
      'Date': ydb.Type_PrimitiveTypeId.DATE,
      'Datetime': ydb.Type_PrimitiveTypeId.DATETIME,
      'Timestamp': ydb.Type_PrimitiveTypeId.TIMESTAMP,
      'Interval': ydb.Type_PrimitiveTypeId.INTERVAL,
      'Uuid': ydb.Type_PrimitiveTypeId.UUID,
      'DyNumber': ydb.Type_PrimitiveTypeId.DYNUMBER,
    };

    final ydb.Type_PrimitiveTypeId? typeId = typeMap[typeName];
    if (typeId != null) {
      return ydb.Type()..typeId = typeId;
    }

    // Default to UTF8 for unknown types
    _logger.warning('Unknown type name "$typeName", defaulting to UTF8');
    return ydb.Type()..typeId = ydb.Type_PrimitiveTypeId.UTF8;
  }

  /// Convert our parameter format to YDB protobuf format using TypeConverter.
  Map<String, ydb.TypedValue> _convertParameters(Map<String, dynamic> params) {
    final Map<String, ydb.TypedValue> result = <String, ydb.TypedValue>{};

    for (final MapEntry<String, dynamic> entry in params.entries) {
      // Parameters come as JSON from QueryClient, need to deserialize to IYdbValue
      if (entry.value is! Map<String, dynamic>) {
        _logger.warning('Parameter ${entry.key} is not a Map, skipping');
        continue;
      }

      try {
        final IYdbValue sdkValue =
            IYdbValue.fromJson(entry.value as Map<String, dynamic>);
        result[entry.key] = YdbTypeConverter.toProto(sdkValue);
      } catch (e) {
        _logger.warning('Failed to convert parameter ${entry.key}: $e');
      }
    }

    return result;
  }

  /// Convert YDB protobuf result to JSON format.
  Map<String, dynamic> _convertQueryResultToJson(
      ydb.ExecuteQueryResult result) {
    final List<Map<String, dynamic>> resultSets = <Map<String, dynamic>>[];

    for (final ydb.ResultSet rs in result.resultSets) {
      final List<Map<String, dynamic>> columns = <Map<String, dynamic>>[];
      final List<Map<String, dynamic>> rows = <Map<String, dynamic>>[];

      // Process columns
      for (final ydb.Column col in rs.columns) {
        columns.add(<String, dynamic>{
          'name': col.name,
          'type': _convertTypeToString(col.type),
        });
      }

      // Process rows - use TypeConverter to convert back to SDK types
      for (final ydb.Value row in rs.rows) {
        final Map<String, dynamic> rowMap = <String, dynamic>{};

        // Each row has items corresponding to columns
        for (int i = 0; i < row.items.length && i < rs.columns.length; i++) {
          final String columnName = rs.columns[i].name;
          final ydb.TypedValue typedValue = ydb.TypedValue()
            ..type = rs.columns[i].type
            ..value = row.items[i];

          try {
            final IYdbValue sdkValue = YdbTypeConverter.fromProto(typedValue);
            rowMap[columnName] = sdkValue.toJson();
          } catch (e) {
            _logger.warning(
                'Failed to convert value for column "$columnName": $e');
            rowMap[columnName] = null;
          }
        }

        rows.add(rowMap);
      }

      resultSets.add(<String, dynamic>{
        'columns': columns,
        'rows': rows,
      });
    }

    return <String, dynamic>{
      'result_sets': resultSets,
    };
  }

  /// Convert YDB Type to string representation.
  String _convertTypeToString(ydb.Type type) {
    if (type.hasTypeId()) {
      return type.typeId.name;
    }
    if (type.hasOptionalType()) {
      return 'Optional<${_convertTypeToString(type.optionalType.item)}>';
    }
    if (type.hasListType()) {
      return 'List<${_convertTypeToString(type.listType.item)}>';
    }
    if (type.hasTupleType()) {
      final String elements =
          type.tupleType.elements.map(_convertTypeToString).join(', ');
      return 'Tuple<$elements>';
    }
    if (type.hasStructType()) {
      final String members = type.structType.members
          .map((ydb.StructMember m) =>
              '${m.name}: ${_convertTypeToString(m.type)}')
          .join(', ');
      return 'Struct<$members>';
    }
    if (type.hasDictType()) {
      return 'Dict<${_convertTypeToString(type.dictType.key)}, ${_convertTypeToString(type.dictType.payload)}>';
    }
    return 'Unknown';
  }

  /// Parse endpoint string into URI.
  Uri _parseEndpoint(String endpoint) {
    String normalized = endpoint;
    if (normalized.startsWith('grpc://') || normalized.startsWith('grpcs://')) {
      normalized = normalized.replaceFirst(RegExp(r'^grpcs?://'), '');
    } else if (normalized.startsWith('https://')) {
      normalized = normalized.replaceFirst('https://', '');
    } else if (normalized.startsWith('http://')) {
      normalized = normalized.replaceFirst('http://', '');
    }

    if (!normalized.contains('://')) {
      normalized = 'grpc://$normalized';
    }

    return Uri.parse(normalized);
  }

  /// Map gRPC errors to YDB exceptions.
  YdbException _mapGrpcError(GrpcError error) {
    switch (error.code) {
      case StatusCode.unavailable:
      case StatusCode.deadlineExceeded:
        return YdbNetworkException(
          'gRPC ${error.codeName}: ${error.message}',
        );
      case StatusCode.unauthenticated:
        return YdbNetworkException(
          'Authentication failed: ${error.message}\n'
          'Token may be expired or invalid. For OAuth tokens, regenerate with: yc iam create-token',
        );
      case StatusCode.permissionDenied:
        return YdbNetworkException(
          'Permission denied: ${error.message}',
        );
      default:
        return YdbNetworkException(
          'gRPC error (${error.codeName}): ${error.message}',
        );
    }
  }
}

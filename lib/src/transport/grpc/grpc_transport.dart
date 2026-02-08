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
        // For now, we use ExecuteDataQuery from Table Service
        // This requires a session, which is a simplified approach
        if (endpoint.contains('query/v1/execute')) {
          return await _executeQuery(
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
    // Create session first
    final ydb.CreateSessionRequest createSessionRequest =
        ydb.CreateSessionRequest();

    final ydb.CreateSessionResponse sessionResponseWrapper = await _tableClient
        .createSession(createSessionRequest, options: options);

    // Unpack CreateSessionResult from Operation
    final ydb.CreateSessionResult sessionResult = OperationUnpacker.unpack(
      sessionResponseWrapper.operation,
      ydb.CreateSessionResult.new,
    );

    final String sessionId = sessionResult.sessionId;
    _logger.info('Created session: $sessionId');

    try {
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
    } finally {
      // Delete session
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

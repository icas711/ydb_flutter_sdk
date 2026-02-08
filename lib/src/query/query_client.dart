import '../query/query_result.dart';
import '../transport/i_ydb_transport.dart';
import '../types/i_ydb_value.dart';

/// Client for YDB Query Service API.
///
/// QueryClient provides methods to execute YQL queries against YDB.
/// It supports parameterized queries, transactions, and result parsing.
///
/// Usage:
/// ```dart
/// final driver = YdbDriver(config);
/// await driver.initialize();
///
/// final result = await driver.queryClient.execute(
///   'SELECT * FROM users WHERE id = \$id',
///   parameters: {'id': YdbInt64(1)},
/// );
/// ```
class QueryClient {
  final IYdbTransport _transport;
  final String _database;

  /// Creates a QueryClient instance.
  ///
  /// [transport] - The underlying YDB transport for HTTP/gRPC communication.
  /// [database] - The database path (e.g., '/local').
  QueryClient({
    required IYdbTransport transport,
    required String database,
  })  : _transport = transport,
        _database = database;

  /// Execute a YQL query.
  ///
  /// [yql] - YQL query string. Use named parameters with $ prefix (e.g., \$id).
  /// [parameters] - Map of parameter names (without $) to YdbValue instances.
  ///
  /// Example:
  /// ```dart
  /// final result = await queryClient.execute(
  ///   'SELECT * FROM users WHERE id = \$id AND age > \$minAge',
  ///   parameters: {
  ///     'id': YdbInt64(123),
  ///     'minAge': YdbInt32(18),
  ///   },
  /// );
  ///
  /// for (final row in result.rows) {
  ///   print('User: \${row['name']?.value}');
  /// }
  /// ```
  ///
  /// Throws [YdbStatusException] if YDB returns an error status.
  /// Throws [YdbNetworkException] on network/transport errors.
  Future<QueryResult> execute(
    String yql, {
    Map<String, IYdbValue>? parameters,
  }) async {
    final Map<String, dynamic> requestBody = <String, dynamic>{
      'yql_text': yql,
    };

    // Serialize parameters if provided
    if (parameters != null && parameters.isNotEmpty) {
      requestBody['parameters'] = _serializeParameters(parameters);
    }

    final QueryResult result = await _transport.send<QueryResult>(
      endpoint: '$_database/query/v1/execute',
      body: requestBody,
      decoder: (Object? json) =>
          QueryResult.fromJson(json as Map<String, dynamic>),
    );

    return result;
  }

  /// Serialize parameters to YDB JSON format.
  ///
  /// Converts Map<String, IYdbValue> to the format expected by YDB:
  /// {
  ///   "\$param1": {"type": "Int64", "value": "123"},
  ///   "\$param2": {"type": "Utf8", "value": "text"}
  /// }
  Map<String, dynamic> _serializeParameters(Map<String, IYdbValue> parameters) {
    final Map<String, dynamic> serialized = <String, dynamic>{};

    for (final MapEntry<String, IYdbValue<dynamic>> entry
        in parameters.entries) {
      // Add $ prefix if not already present
      final String key =
          entry.key.startsWith('\$') ? entry.key : '\$${entry.key}';
      serialized[key] = entry.value.toJson();
    }

    return serialized;
  }

  @override
  String toString() => 'QueryClient(database: $_database)';
}

import '../query/query_client.dart';
import '../scheme/scheme_client.dart';
import '../transport/transport.dart';
import 'driver_config.dart';

class YdbDriver {
  final DriverConfig _config;

  IYdbTransport? _transport;
  QueryClient? _queryClient;
  SchemeClient? _schemeClient;
  bool _initialized = false;
  bool _closed = false;

  YdbDriver(this._config);

  /// True if driver is initialized and ready to use
  bool get isReady => _initialized && !_closed;

  /// Access to underlying transport (internal SDK use)
  IYdbTransport get transport {
    if (!isReady || _transport == null) {
      throw StateError('YdbDriver is not initialized');
    }
    return _transport!;
  }

  /// Access to Query Service API.
  ///
  /// Use this client to execute YQL queries.
  ///
  /// Example:
  /// ```dart
  /// final result = await driver.queryClient.execute(
  ///   'SELECT * FROM users WHERE id = \$id',
  ///   parameters: {'id': YdbInt64(1)},
  /// );
  /// ```
  QueryClient get queryClient {
    if (!isReady || _queryClient == null) {
      throw StateError('YdbDriver is not initialized');
    }
    return _queryClient!;
  }

  /// Access to Scheme Service API (DDL operations).
  ///
  /// Use this client to create, alter, drop, and describe tables.
  ///
  /// Example:
  /// ```dart
  /// await driver.schemeClient.createTable(
  ///   'users',
  ///   TableDescription(
  ///     name: 'users',
  ///     columns: [
  ///       ColumnDefinition(name: 'id', type: 'Int64', nullable: false),
  ///       ColumnDefinition(name: 'name', type: 'Utf8'),
  ///     ],
  ///     primaryKey: ['id'],
  ///   ),
  /// );
  /// ```
  SchemeClient get schemeClient {
    if (!isReady || _schemeClient == null) {
      throw StateError('YdbDriver is not initialized');
    }
    return _schemeClient!;
  }

  /// Initialize driver:
  /// - resolve transport
  /// - initialize credentials
  /// - establish connection (if needed)
  Future<void> initialize() async {
    if (_initialized) {
      return;
    }
    if (_closed) {
      throw StateError('YdbDriver is already closed');
    }

    // 1. Initialize credentials
    await _config.credentials.initialize();

    // 2. Create transport based on endpoint scheme
    final IYdbTransport transport = TransportFactory.create(
      endpoint: _config.endpoint,
      timeout: _config.timeout,
      retrySettings: _config.retrySettings,
      credentials: _config.credentials,
      database: _config.database,
      transportType: _config.transportType,
      useTls: _config.useTls,
    );

    // 3. Initialize transport (handshake, warm-up, etc.)
    await transport.initialize();

    _transport = transport;

    // 4. Create QueryClient
    _queryClient = QueryClient(
      transport: _transport!,
      database: _config.database,
    );

    // 5. Create SchemeClient
    _schemeClient = SchemeClient(
      transport: _transport!,
      database: _config.database,
    );

    _initialized = true;
  }

  /// Gracefully close driver
  Future<void> close() async {
    if (_closed) {
      return;
    }

    try {
      await _transport?.close();
    } finally {
      _queryClient = null;
      _schemeClient = null;
      _transport = null;
      _initialized = false;
      _closed = true;
    }
  }

  @override
  String toString() => 'YdbDriver(endpoint: ${_config.endpoint}, '
      'database: ${_config.database}, '
      'ready: $isReady)';
}

import 'dart:async';
import 'dart:collection';

import '../transaction/transaction_mode.dart';
import '../transport/i_ydb_transport.dart';
import 'query_session.dart';

/// Configuration for SessionPool.
class SessionPoolConfig {
  /// Minimum number of sessions to keep in the pool.
  final int minSize;

  /// Maximum number of sessions allowed in the pool.
  final int maxSize;

  /// Timeout for acquiring a session from the pool.
  final Duration acquireTimeout;

  const SessionPoolConfig({
    this.minSize = 0,
    this.maxSize = 50,
    this.acquireTimeout = const Duration(seconds: 5),
  });
}

/// Pool of YDB sessions for efficient resource management.
///
/// SessionPool maintains a pool of reusable [QuerySession] instances
/// to avoid the overhead of creating/destroying sessions for each request.
///
/// Features:
/// - Lazy session creation (sessions created on-demand)
/// - Min/Max pool size limits
/// - Automatic session reuse
/// - Safe concurrent access
///
/// Example:
/// ```dart
/// final pool = SessionPool(
///   transport: transport,
///   database: '/local',
///   config: SessionPoolConfig(minSize: 5, maxSize: 20),
/// );
///
/// // Execute a query
/// final result = await pool.execute((session) async {
///   return session.execute('SELECT * FROM users');
/// });
///
/// // Execute in transaction
/// await pool.executeInTransaction((session, tx) async {
///   await tx.execute('UPDATE accounts SET balance = balance - 100 WHERE id = 1');
///   await tx.execute('UPDATE accounts SET balance = balance + 100 WHERE id = 2');
/// }, txMode: TransactionMode.serializableReadWrite);
/// ```
class SessionPool {
  final IYdbTransport _transport;
  final String _database;
  final SessionPoolConfig _config;

  final Queue<QuerySession> _availableSessions = Queue();
  final Set<QuerySession> _busySessions = <QuerySession>{};
  final Queue<Completer<QuerySession>> _waiters = Queue();

  int _sessionCounter = 0;
  bool _closed = false;

  SessionPool({
    required IYdbTransport transport,
    required String database,
    SessionPoolConfig? config,
  })  : _transport = transport,
        _database = database,
        _config = config ?? const SessionPoolConfig();

  /// Total number of sessions (available + busy).
  int get size => _availableSessions.length + _busySessions.length;

  /// Number of available sessions.
  int get availableCount => _availableSessions.length;

  /// Number of busy (in-use) sessions.
  int get busyCount => _busySessions.length;

  /// Whether the pool has been closed.
  bool get isClosed => _closed;

  /// Execute a callback with a session from the pool.
  ///
  /// Automatically acquires a session, executes the callback, and releases
  /// the session back to the pool (even if an error occurs).
  ///
  /// [callback] - Function that receives a session and returns a result.
  ///
  /// Example:
  /// ```dart
  /// final users = await pool.execute((session) async {
  ///   final result = await session.execute('SELECT * FROM users');
  ///   return result.rows;
  /// });
  /// ```
  Future<T> execute<T>(
    Future<T> Function(QuerySession session) callback,
  ) async {
    final QuerySession session = await _acquire();
    try {
      return await callback(session);
    } finally {
      _release(session);
    }
  }

  /// Execute a callback within a transaction.
  ///
  /// Automatically:
  /// - Acquires a session
  /// - Begins a transaction
  /// - Executes the callback
  /// - Commits on success or rolls back on error
  /// - Releases the session
  ///
  /// [callback] - Function that receives session and transaction context.
  /// [txMode] - Transaction mode (default: serializableReadWrite).
  ///
  /// Example:
  /// ```dart
  /// await pool.executeInTransaction((session, tx) async {
  ///   await tx.execute('INSERT INTO users (id, name) VALUES (1, "Alice")');
  ///   await tx.execute('INSERT INTO logs (event) VALUES ("user_created")');
  /// }, txMode: TransactionMode.serializableReadWrite);
  /// ```
  Future<T> executeInTransaction<T>(
    Future<T> Function(QuerySession session, QueryTxContext tx) callback,
    TransactionMode txMode,
  ) async {
    final QuerySession session = await _acquire();
    QueryTxContext? tx;

    try {
      tx = await session.beginTransaction(txMode);
      final T result = await callback(session, tx);

      if (!tx.isFinished) {
        await tx.commit();
      }

      return result;
    } catch (e) {
      if (tx != null && !tx.isFinished) {
        try {
          await tx.rollback();
        } catch (_) {
          // Ignore rollback errors
        }
      }
      rethrow;
    } finally {
      _release(session);
    }
  }

  /// Acquire a session from the pool.
  ///
  /// If no sessions are available and pool is not at max size, creates a new session.
  /// If pool is at max size, waits for a session to become available (with timeout).
  Future<QuerySession> _acquire() async {
    if (_closed) {
      throw StateError('SessionPool is closed');
    }

    // Try to get an available session
    if (_availableSessions.isNotEmpty) {
      final QuerySession session = _availableSessions.removeFirst();
      _busySessions.add(session);
      return session;
    }

    // Try to create a new session if under max size
    if (size < _config.maxSize) {
      final QuerySession session = _createSession();
      _busySessions.add(session);
      return session;
    }

    // Wait for a session to become available
    final Completer<QuerySession> completer = Completer<QuerySession>();
    _waiters.add(completer);

    try {
      return await completer.future.timeout(
        _config.acquireTimeout,
        onTimeout: () {
          _waiters.remove(completer);
          throw TimeoutException(
            'Failed to acquire session within ${_config.acquireTimeout}',
          );
        },
      );
    } catch (e) {
      _waiters.remove(completer);
      rethrow;
    }
  }

  /// Release a session back to the pool.
  void _release(QuerySession session) {
    if (_closed) {
      session.close();
      return;
    }

    _busySessions.remove(session);

    // If there are waiters, give the session to the next waiter
    if (_waiters.isNotEmpty) {
      final Completer<QuerySession> waiter = _waiters.removeFirst();
      _busySessions.add(session);
      waiter.complete(session);
      return;
    }

    // Otherwise, return to available pool
    _availableSessions.add(session);
  }

  /// Create a new session.
  QuerySession _createSession() {
    final String id = 'session-${_sessionCounter++}';
    return QuerySession(
      id: id,
      transport: _transport,
      database: _database,
    );
  }

  /// Close the pool and all sessions.
  ///
  /// After calling close(), the pool cannot be used.
  /// Any pending acquire operations will fail.
  Future<void> close() async {
    if (_closed) return;
    _closed = true;

    // Fail all waiters
    while (_waiters.isNotEmpty) {
      final Completer<QuerySession> waiter = _waiters.removeFirst();
      waiter.completeError(StateError('SessionPool is closed'));
    }

    // Close all sessions
    final List<QuerySession> allSessions = <QuerySession>[
      ..._availableSessions,
      ..._busySessions
    ];
    await Future.wait(allSessions.map((QuerySession s) => s.close()));

    _availableSessions.clear();
    _busySessions.clear();
  }
}

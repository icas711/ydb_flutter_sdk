import '../query/query_result.dart';
import '../transaction/transaction_mode.dart';
import '../transport/i_ydb_transport.dart';
import 'session.dart';

/// Query Service session for executing YQL queries.
///
/// QuerySession represents a logical connection to YDB Query Service.
/// It provides methods to execute queries and manage transactions.
///
/// Sessions should be obtained from [SessionPool] rather than created directly.
class QuerySession extends Session {
  final String _id;
  final IYdbTransport _transport;
  final String _database;

  bool _closed = false;
  String? _currentTxId;

  QuerySession({
    required String id,
    required IYdbTransport transport,
    required String database,
  })  : _id = id,
        _transport = transport,
        _database = database;

  @override
  String get id => _id;

  @override
  bool get isClosed => _closed;

  @override
  Future<void> close() async {
    if (_closed) return;

    // Rollback any active transaction
    if (_currentTxId != null) {
      try {
        await _rollbackTransaction(_currentTxId!);
      } catch (_) {
        // Ignore rollback errors during close
      }
      _currentTxId = null;
    }

    _closed = true;
  }

  /// Execute a YQL query in this session.
  ///
  /// [yql] - YQL query string with optional parameter placeholders ($param).
  /// [parameters] - Named parameters for the query.
  ///
  /// Example:
  /// ```dart
  /// final result = await session.execute(
  ///   'SELECT * FROM users WHERE id = \$id',
  ///   parameters: {'id': 1},
  /// );
  /// ```
  ///
  /// Throws [StateError] if session is closed.
  Future<QueryResult> execute(
    String yql, {
    Map<String, dynamic>? parameters,
  }) async {
    if (_closed) {
      throw StateError('Session is closed');
    }

    final QueryResult response = await _transport.send(
      endpoint: '$_database/query/v1/execute',
      body: <String, Object>{
        'yql_text': yql,
        if (parameters != null) 'parameters': parameters,
      },
      decoder: (Object? json) =>
          QueryResult.fromJson(json as Map<String, dynamic>),
    );

    return response;
  }

  /// Begin a new transaction with the specified mode.
  ///
  /// [mode] - Transaction mode (serializableReadWrite, onlineReadOnly, staleReadOnly).
  ///
  /// Returns a [QueryTxContext] for executing queries within the transaction.
  ///
  /// Example:
  /// ```dart
  /// final tx = await session.beginTransaction(TransactionMode.serializableReadWrite);
  /// try {
  ///   await tx.execute('UPDATE users SET balance = balance + 100 WHERE id = 1');
  ///   await tx.commit();
  /// } catch (e) {
  ///   await tx.rollback();
  ///   rethrow;
  /// }
  /// ```
  ///
  /// Throws [StateError] if session is closed or already has an active transaction.
  Future<QueryTxContext> beginTransaction(TransactionMode mode) async {
    if (_closed) {
      throw StateError('Session is closed');
    }
    if (_currentTxId != null) {
      throw StateError('Session already has an active transaction');
    }

    final String response = await _transport.send(
      endpoint: '$_database/query/v1/begin_transaction',
      body: <String, String>{
        'tx_mode': _txModeToString(mode),
      },
      decoder: (Object? json) =>
          (json as Map<String, dynamic>)['tx_id'] as String,
    );

    _currentTxId = response;

    return QueryTxContext(
      txId: _currentTxId!,
      executeFunc: (String yql, Map<String, dynamic>? params) =>
          _executeInTransaction(_currentTxId!, yql, params),
      commitFunc: () => _commitTransaction(_currentTxId!),
      rollbackFunc: () => _rollbackTransaction(_currentTxId!),
    );
  }

  Future<QueryResult> _executeInTransaction(
    String txId,
    String yql,
    Map<String, dynamic>? parameters,
  ) async {
    final QueryResult response = await _transport.send(
      endpoint: '$_database/query/v1/execute',
      body: <String, Object>{
        'yql_text': yql,
        'tx_id': txId,
        if (parameters != null) 'parameters': parameters,
      },
      decoder: (Object? json) =>
          QueryResult.fromJson(json as Map<String, dynamic>),
    );

    return response;
  }

  Future<void> _commitTransaction(String txId) async {
    await _transport.send(
      endpoint: '$_database/query/v1/commit_transaction',
      body: <String, String>{'tx_id': txId},
      decoder: (_) => null,
    );

    if (_currentTxId == txId) {
      _currentTxId = null;
    }
  }

  Future<void> _rollbackTransaction(String txId) async {
    await _transport.send(
      endpoint: '$_database/query/v1/rollback_transaction',
      body: <String, String>{'tx_id': txId},
      decoder: (_) => null,
    );

    if (_currentTxId == txId) {
      _currentTxId = null;
    }
  }

  String _txModeToString(TransactionMode mode) {
    switch (mode) {
      case TransactionMode.serializableReadWrite:
        return 'serializable-read-write';
      case TransactionMode.onlineReadOnly:
        return 'online-read-only';
      case TransactionMode.staleReadOnly:
        return 'stale-read-only';
    }
  }
}

/// Context for executing queries within a transaction.
class QueryTxContext {
  final String _txId;
  final Future<QueryResult> Function(
      String yql, Map<String, dynamic>? parameters) _executeFunc;
  final Future<void> Function() _commitFunc;
  final Future<void> Function() _rollbackFunc;

  bool _finished = false;

  QueryTxContext({
    required String txId,
    required Future<QueryResult> Function(
            String yql, Map<String, dynamic>? parameters)
        executeFunc,
    required Future<void> Function() commitFunc,
    required Future<void> Function() rollbackFunc,
  })  : _txId = txId,
        _executeFunc = executeFunc,
        _commitFunc = commitFunc,
        _rollbackFunc = rollbackFunc;

  /// Transaction ID.
  String get id => _txId;

  /// Whether this transaction has been committed or rolled back.
  bool get isFinished => _finished;

  /// Execute a query within this transaction.
  Future<QueryResult> execute(
    String yql, {
    Map<String, dynamic>? parameters,
  }) async {
    if (_finished) {
      throw StateError('Transaction is already finished');
    }
    return _executeFunc(yql, parameters);
  }

  /// Commit this transaction.
  Future<void> commit() async {
    if (_finished) {
      throw StateError('Transaction is already finished');
    }
    await _commitFunc();
    _finished = true;
  }

  /// Rollback this transaction.
  Future<void> rollback() async {
    if (_finished) {
      throw StateError('Transaction is already finished');
    }
    await _rollbackFunc();
    _finished = true;
  }
}

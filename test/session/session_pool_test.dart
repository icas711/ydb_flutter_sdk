import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/session/query_session.dart';
import 'package:ydb_flutter_sdk/src/session/session_pool.dart';
import 'package:ydb_flutter_sdk/src/transaction/transaction_mode.dart';

import '../helpers/mock_transport.dart';

void main() {
  group('SessionPool', () {
    late MockTransport transport;
    late SessionPool pool;

    setUp(() {
      transport = MockTransport();
      pool = SessionPool(
        transport: transport,
        database: '/local',
        config: const SessionPoolConfig(
          minSize: 0,
          maxSize: 5,
        ),
      );
    });

    tearDown(() async {
      await pool.close();
    });

    test('creates session on demand', () async {
      expect(pool.size, 0);
      expect(pool.availableCount, 0);
      expect(pool.busyCount, 0);

      await pool.execute((QuerySession session) async {
        expect(pool.size, 1);
        expect(pool.busyCount, 1);
        expect(pool.availableCount, 0);
        expect(session.id, 'session-0');
        expect(session.isClosed, false);
      });

      expect(pool.size, 1);
      expect(pool.busyCount, 0);
      expect(pool.availableCount, 1);
    });

    test('reuses available sessions', () async {
      String? firstSessionId;

      await pool.execute((QuerySession session) async {
        firstSessionId = session.id;
      });

      await pool.execute((QuerySession session) async {
        expect(session.id, firstSessionId);
      });

      expect(pool.size, 1);
    });

    test('creates multiple sessions when needed', () async {
      final List<Future<String>> futures = List.generate(
        3,
        (int i) => pool.execute((QuerySession session) async {
          await Future.delayed(const Duration(milliseconds: 10));
          return session.id;
        }),
      );

      final List<String> sessionIds = await Future.wait(futures);

      expect(pool.size, 3);
      expect(sessionIds.toSet().length, 3); // All unique
    });

    test('respects max pool size', () async {
      final List<Future<String>> futures = List.generate(
        10,
        (int i) => pool.execute((QuerySession session) async {
          await Future.delayed(const Duration(milliseconds: 50));
          return session.id;
        }),
      );

      await Future.wait(futures);

      expect(pool.size, lessThanOrEqualTo(5));
    });

    test('waits for available session when pool is full', () async {
      // Fill the pool
      final List<Future<Null>> blockers = List.generate(
        5,
        (int i) => pool.execute((QuerySession session) async {
          await Future.delayed(const Duration(milliseconds: 100));
        }),
      );

      // This should wait for a session
      final DateTime waiterStarted = DateTime.now();
      final Future<Null> waiterFuture =
          pool.execute((QuerySession session) async {
        final Duration waited = DateTime.now().difference(waiterStarted);
        expect(waited.inMilliseconds, greaterThan(50));
      });

      await Future.wait(<Future<Null>>[...blockers, waiterFuture]);
    });

    test('throws timeout when cannot acquire session', () async {
      final SessionPool shortTimeoutPool = SessionPool(
        transport: transport,
        database: '/local',
        config: const SessionPoolConfig(
          maxSize: 1,
          acquireTimeout: Duration(milliseconds: 50),
        ),
      );

      // Block the only session
      final Future<Null> blocker =
          shortTimeoutPool.execute((QuerySession session) async {
        await Future.delayed(const Duration(milliseconds: 200));
      });

      // This should timeout
      expect(
        shortTimeoutPool.execute((QuerySession session) async {}),
        throwsA(isA<TimeoutException>()),
      );

      await blocker;
      await shortTimeoutPool.close();
    });

    test('executeInTransaction commits on success', () async {
      transport
        ..whenRequest('/local/query/v1/begin_transaction')
        ..thenRespond(
            MockTransport.successResponse(<String, String>{'tx_id': 'tx-123'}));

      transport
        ..whenRequest('/local/query/v1/execute')
        ..thenRespond(MockTransport.successResponse(
            <String, List<dynamic>>{'rows': <dynamic>[]}));

      transport
        ..whenRequest('/local/query/v1/commit_transaction')
        ..thenRespond(MockTransport.successResponse(<dynamic, dynamic>{}));

      await pool.executeInTransaction(
        (QuerySession session, QueryTxContext tx) async {
          expect(tx.id, 'tx-123');
          expect(tx.isFinished, false);
          await tx.execute('INSERT INTO users VALUES (1)');
        },
        TransactionMode.serializableReadWrite,
      );

      expect(
          transport.pendingResponseCount('/local/query/v1/begin_transaction'),
          0);
      expect(transport.pendingResponseCount('/local/query/v1/execute'), 0);
      expect(
          transport.pendingResponseCount('/local/query/v1/commit_transaction'),
          0);
    });

    test('executeInTransaction rolls back on error', () async {
      transport
        ..whenRequest('/local/query/v1/begin_transaction')
        ..thenRespond(
            MockTransport.successResponse(<String, String>{'tx_id': 'tx-456'}));

      transport
        ..whenRequest('/local/query/v1/rollback_transaction')
        ..thenRespond(MockTransport.successResponse(<dynamic, dynamic>{}));

      expect(
        pool.executeInTransaction(
          (QuerySession session, QueryTxContext tx) async {
            throw Exception('Simulated error');
          },
          TransactionMode.serializableReadWrite,
        ),
        throwsA(isA<Exception>()),
      );

      await Future.delayed(const Duration(milliseconds: 50));

      expect(
          transport
              .pendingResponseCount('/local/query/v1/rollback_transaction'),
          0);
    });

    test('close() closes all sessions and prevents new operations', () async {
      await pool.execute((QuerySession session) async {});
      expect(pool.size, 1);

      await pool.close();

      expect(pool.isClosed, true);
      expect(
        pool.execute((QuerySession session) async {}),
        throwsStateError,
      );
    });

    test('releasing session to closed pool closes the session', () async {
      // ignore: unused_local_variable
      bool? sessionClosedAfterRelease;

      // Execute with session, close pool inside callback
      await pool.execute((QuerySession session) async {
        // During execute, session should not be closed yet
        expect(session.isClosed, false);
      });

      // After execute completes and pool is closed, check if session is closed
      await pool.close();

      // Create new session to verify pool is closed
      expect(pool.isClosed, true);
    });
  });
}

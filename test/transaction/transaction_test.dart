import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/query/query_result.dart';
import 'package:ydb_flutter_sdk/src/session/query_session.dart';
import 'package:ydb_flutter_sdk/src/transaction/transaction_mode.dart';

import '../helpers/mock_transport.dart';

void main() {
  group('Transaction', () {
    late MockTransport transport;
    late QuerySession session;

    setUp(() {
      transport = MockTransport();
      session = QuerySession(
        id: 'session-123',
        transport: transport,
        database: '/local',
      );
    });

    group('TransactionMode', () {
      test('all three modes are defined', () {
        expect(TransactionMode.serializableReadWrite, isNotNull);
        expect(TransactionMode.onlineReadOnly, isNotNull);
        expect(TransactionMode.staleReadOnly, isNotNull);
      });

      test('serializableReadWrite mode begins transaction', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-rw-001'});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        expect(tx.id, 'tx-rw-001');
        expect(tx.isFinished, false);
      });

      test('onlineReadOnly mode begins transaction', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-ro-001'});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.onlineReadOnly,
        );

        expect(tx.id, 'tx-ro-001');
        expect(tx.isFinished, false);
      });

      test('staleReadOnly mode begins transaction', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-stale-001'});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.staleReadOnly,
        );

        expect(tx.id, 'tx-stale-001');
        expect(tx.isFinished, false);
      });
    });

    group('QueryTxContext', () {
      test('execute query within transaction', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-001'});

        transport
          ..whenRequest('/local/query/v1/execute')
          ..thenRespond(<String, dynamic>{
            'result_sets':
                <Map<String, List<Map<String, Map<String, String>>>>>[
              <String, List<Map<String, Map<String, String>>>>{
                'rows': <Map<String, Map<String, String>>>[
                  <String, Map<String, String>>{
                    'id': <String, String>{'type': 'Int64', 'value': '1'},
                    'name': <String, String>{'type': 'Utf8', 'value': 'Alice'},
                  }
                ]
              }
            ]
          });

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        final QueryResult result = await tx.execute(
          'SELECT id, name FROM users WHERE id = \$id',
          parameters: <String, dynamic>{'id': 1},
        );

        expect(result.rows, isNotEmpty);
        expect(result.rows.length, 1);
      });

      test('commit transaction marks it as finished', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-002'});

        transport
          ..whenRequest('/local/query/v1/commit_transaction')
          ..thenRespond(<String, dynamic>{});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        expect(tx.isFinished, false);
        await tx.commit();
        expect(tx.isFinished, true);
      });

      test('rollback transaction marks it as finished', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-003'});

        transport
          ..whenRequest('/local/query/v1/rollback_transaction')
          ..thenRespond(<String, dynamic>{});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        expect(tx.isFinished, false);
        await tx.rollback();
        expect(tx.isFinished, true);
      });

      test('cannot execute after commit', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-004'});

        transport
          ..whenRequest('/local/query/v1/commit_transaction')
          ..thenRespond(<String, dynamic>{});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        await tx.commit();

        expect(
          () => tx.execute('SELECT 1'),
          throwsA(isA<StateError>().having(
            (StateError e) => e.message,
            'message',
            'Transaction is already finished',
          )),
        );
      });

      test('cannot execute after rollback', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-005'});

        transport
          ..whenRequest('/local/query/v1/rollback_transaction')
          ..thenRespond(<String, dynamic>{});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        await tx.rollback();

        expect(
          () => tx.execute('SELECT 1'),
          throwsA(isA<StateError>().having(
            (StateError e) => e.message,
            'message',
            'Transaction is already finished',
          )),
        );
      });

      test('cannot commit twice', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-006'});

        transport
          ..whenRequest('/local/query/v1/commit_transaction')
          ..thenRespond(<String, dynamic>{});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        await tx.commit();

        expect(
          () => tx.commit(),
          throwsA(isA<StateError>().having(
            (StateError e) => e.message,
            'message',
            'Transaction is already finished',
          )),
        );
      });

      test('cannot rollback twice', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-007'});

        transport
          ..whenRequest('/local/query/v1/rollback_transaction')
          ..thenRespond(<String, dynamic>{});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        await tx.rollback();

        expect(
          () => tx.rollback(),
          throwsA(isA<StateError>().having(
            (StateError e) => e.message,
            'message',
            'Transaction is already finished',
          )),
        );
      });

      test('multiple queries in one transaction', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-multi-001'});

        // First query
        transport
          ..whenRequest('/local/query/v1/execute')
          ..thenRespond(<String, dynamic>{
            'result_sets':
                <Map<String, List<Map<String, Map<String, String>>>>>[
              <String, List<Map<String, Map<String, String>>>>{
                'rows': <Map<String, Map<String, String>>>[
                  <String, Map<String, String>>{
                    'result': <String, String>{'type': 'Int64', 'value': '1'}
                  }
                ]
              }
            ]
          });

        // Second query
        transport
          ..whenRequest('/local/query/v1/execute')
          ..thenRespond(<String, dynamic>{
            'result_sets':
                <Map<String, List<Map<String, Map<String, String>>>>>[
              <String, List<Map<String, Map<String, String>>>>{
                'rows': <Map<String, Map<String, String>>>[
                  <String, Map<String, String>>{
                    'result': <String, String>{'type': 'Int64', 'value': '2'}
                  }
                ]
              }
            ]
          });

        transport
          ..whenRequest('/local/query/v1/commit_transaction')
          ..thenRespond(<String, dynamic>{});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        final QueryResult result1 =
            await tx.execute('INSERT INTO users VALUES (1)');
        expect(result1.rows.length, 1);

        final QueryResult result2 =
            await tx.execute('INSERT INTO logs VALUES (2)');
        expect(result2.rows.length, 1);

        await tx.commit();
        expect(tx.isFinished, true);
      });
    });

    group('Session transaction state', () {
      test('session tracks active transaction', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-track-001'});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        expect(tx.id, 'tx-track-001');

        // Trying to begin another transaction should fail
        expect(
          () => session.beginTransaction(TransactionMode.serializableReadWrite),
          throwsA(isA<StateError>().having(
            (StateError e) => e.message,
            'message',
            'Session already has an active transaction',
          )),
        );
      });

      test('session clears transaction after commit', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-clear-001'});

        transport
          ..whenRequest('/local/query/v1/commit_transaction')
          ..thenRespond(<String, dynamic>{});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        await tx.commit();

        // Should be able to start a new transaction
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-clear-002'});

        final QueryTxContext tx2 = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        expect(tx2.id, 'tx-clear-002');
      });

      test('session clears transaction after rollback', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-rollback-001'});

        transport
          ..whenRequest('/local/query/v1/rollback_transaction')
          ..thenRespond(<String, dynamic>{});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        await tx.rollback();

        // Should be able to start a new transaction
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-rollback-002'});

        final QueryTxContext tx2 = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        expect(tx2.id, 'tx-rollback-002');
      });

      test('closing session with active transaction rolls it back', () async {
        transport
          ..whenRequest('/local/query/v1/begin_transaction')
          ..thenRespond(<String, dynamic>{'tx_id': 'tx-close-001'});

        transport
          ..whenRequest('/local/query/v1/rollback_transaction')
          ..thenRespond(<String, dynamic>{});

        final QueryTxContext tx = await session.beginTransaction(
          TransactionMode.serializableReadWrite,
        );

        expect(tx.isFinished, false);

        // Close session (should trigger rollback)
        await session.close();

        expect(session.isClosed, true);
      });
    });

    group('Transaction errors', () {
      test('cannot begin transaction on closed session', () async {
        await session.close();

        expect(
          () => session.beginTransaction(TransactionMode.serializableReadWrite),
          throwsA(isA<StateError>().having(
            (StateError e) => e.message,
            'message',
            'Session is closed',
          )),
        );
      });
    });
  });
}

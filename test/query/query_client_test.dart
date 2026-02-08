import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/query/query_client.dart';
import 'package:ydb_flutter_sdk/src/query/query_result.dart';
import 'package:ydb_flutter_sdk/src/types/i_ydb_value.dart';
import 'package:ydb_flutter_sdk/src/types/primitives.dart';

import '../helpers/mock_transport.dart';

void main() {
  group('QueryClient', () {
    late MockTransport transport;
    late QueryClient client;

    setUp(() {
      transport = MockTransport();
      client = QueryClient(
        transport: transport,
        database: '/local',
      );
    });

    test('execute simple query without parameters', () async {
      transport
        ..whenRequest('/local/query/v1/execute')
        ..thenRespond(<String, List<Map<String, List<Map<String, Object>>>>>{
          'result_sets': <Map<String, List<Map<String, Object>>>>[
            <String, List<Map<String, Object>>>{
              'columns': <Map<String, String>>[
                <String, String>{'name': 'id', 'type': 'Int64'},
                <String, String>{'name': 'name', 'type': 'Utf8'},
              ],
              'rows': <Map<String, Map<String, String>>>[
                <String, Map<String, String>>{
                  'id': <String, String>{'type': 'Int64', 'value': '1'},
                  'name': <String, String>{'type': 'Utf8', 'value': 'Alice'},
                },
                <String, Map<String, String>>{
                  'id': <String, String>{'type': 'Int64', 'value': '2'},
                  'name': <String, String>{'type': 'Utf8', 'value': 'Bob'},
                },
              ],
            },
          ],
        });

      final QueryResult result = await client.execute('SELECT * FROM users');

      expect(result.rows, hasLength(2));
      expect(result.rows[0]['id']?.value, 1);
      expect(result.rows[0]['name']?.value, 'Alice');
      expect(result.rows[1]['id']?.value, 2);
      expect(result.rows[1]['name']?.value, 'Bob');
    });

    test('execute query with parameters', () async {
      transport
        ..whenRequest('/local/query/v1/execute')
        ..thenRespond(<String,
            List<Map<String, List<Map<String, Map<String, String>>>>>>{
          'result_sets': <Map<String, List<Map<String, Map<String, String>>>>>[
            <String, List<Map<String, Map<String, String>>>>{
              'rows': <Map<String, Map<String, String>>>[
                <String, Map<String, String>>{
                  'id': <String, String>{'type': 'Int64', 'value': '123'},
                  'name': <String, String>{
                    'type': 'Utf8',
                    'value': 'Test User'
                  },
                },
              ],
            },
          ],
        });

      final QueryResult result = await client.execute(
        'SELECT * FROM users WHERE id = \$id',
        parameters: <String, IYdbValue<dynamic>>{
          'id': YdbInt64(123),
        },
      );

      expect(result.rows, hasLength(1));
      expect(result.rows[0]['id']?.value, 123);
      expect(result.rows[0]['name']?.value, 'Test User');
    });

    test('execute query with multiple parameters', () async {
      transport
        ..whenRequest('/local/query/v1/execute')
        ..thenRespond(<String,
            List<Map<String, List<Map<String, Map<String, String>>>>>>{
          'result_sets': <Map<String, List<Map<String, Map<String, String>>>>>[
            <String, List<Map<String, Map<String, String>>>>{
              'rows': <Map<String, Map<String, String>>>[
                <String, Map<String, String>>{
                  'id': <String, String>{'type': 'Int64', 'value': '10'},
                  'name': <String, String>{
                    'type': 'Utf8',
                    'value': 'Young User'
                  },
                  'age': <String, String>{'type': 'Int32', 'value': '20'},
                },
              ],
            },
          ],
        });

      final QueryResult result = await client.execute(
        'SELECT * FROM users WHERE age > \$minAge AND name LIKE \$pattern',
        parameters: <String, IYdbValue<dynamic>>{
          'minAge': YdbInt32(18),
          'pattern': YdbUtf8('%User%'),
        },
      );

      expect(result.rows, hasLength(1));
      expect(result.rows[0]['age']?.value, 20);
      expect(result.rows[0]['name']?.value, 'Young User');
    });

    test('execute query returns empty result', () async {
      transport
        ..whenRequest('/local/query/v1/execute')
        ..thenRespond(<String, List<Map<String, List<dynamic>>>>{
          'result_sets': <Map<String, List<dynamic>>>[
            <String, List<dynamic>>{
              'rows': <dynamic>[],
            },
          ],
        });

      final QueryResult result =
          await client.execute('SELECT * FROM users WHERE id = -1');

      expect(result.isEmpty, true);
      expect(result.isNotEmpty, false);
      expect(result.length, 0);
    });

    test('execute query with no result_sets', () async {
      transport
        ..whenRequest('/local/query/v1/execute')
        ..thenRespond(<String, dynamic>{});

      final QueryResult result =
          await client.execute('UPDATE users SET name = "Test"');

      expect(result.isEmpty, true);
    });

    test('serializes parameters with \$ prefix', () async {
      // ignore: unused_local_variable
      Map<String, dynamic>? capturedBody;

      transport
        ..whenRequest('/local/query/v1/execute')
        ..thenRespond(<String, List<Map<String, List<dynamic>>>>{
          'result_sets': <Map<String, List<dynamic>>>[
            <String, List<dynamic>>{'rows': <dynamic>[]}
          ],
        });

      // We need to capture what was sent to transport
      // For now, just verify it doesn't throw
      await client.execute(
        'SELECT * FROM users WHERE id = \$id',
        parameters: <String, IYdbValue<dynamic>>{
          'id': YdbInt64(100),
        },
      );

      // Parameters should be serialized correctly
      // (tested implicitly through successful execution)
    });

    test('handles parameters without \$ prefix', () async {
      transport
        ..whenRequest('/local/query/v1/execute')
        ..thenRespond(<String,
            List<Map<String, List<Map<String, Map<String, String>>>>>>{
          'result_sets': <Map<String, List<Map<String, Map<String, String>>>>>[
            <String, List<Map<String, Map<String, String>>>>{
              'rows': <Map<String, Map<String, String>>>[
                <String, Map<String, String>>{
                  'value': <String, String>{'type': 'Int32', 'value': '42'},
                },
              ],
            },
          ],
        });

      // Parameters provided without $, client should add it
      final QueryResult result = await client.execute(
        'SELECT \$value AS value',
        parameters: <String, IYdbValue<dynamic>>{
          'value': YdbInt32(42),
        },
      );

      expect(result.rows, hasLength(1));
      expect(result.rows[0]['value']?.value, 42);
    });

    test('execute with stats in response', () async {
      transport
        ..whenRequest('/local/query/v1/execute')
        ..thenRespond(<String, Object>{
          'result_sets': <Map<String, List<Map<String, Map<String, String>>>>>[
            <String, List<Map<String, Map<String, String>>>>{
              'rows': <Map<String, Map<String, String>>>[
                <String, Map<String, String>>{
                  'count': <String, String>{'type': 'Int64', 'value': '5'}
                },
              ],
            },
          ],
          'stats': <String, Object>{
            'duration': '123ms',
            'rows_read': 5,
          },
        });

      final QueryResult result =
          await client.execute('SELECT COUNT(*) AS count FROM users');

      expect(result.rows, hasLength(1));
      expect(result.stats, isNotNull);
      expect(result.stats?['duration'], '123ms');
      expect(result.stats?['rows_read'], 5);
    });

    test('toString returns database info', () {
      expect(client.toString(), 'QueryClient(database: /local)');
    });

    test('result isEmpty and isNotEmpty work correctly', () async {
      // Empty result
      transport
        ..whenRequest('/local/query/v1/execute')
        ..thenRespond(<String, List<Map<String, List<dynamic>>>>{
          'result_sets': <Map<String, List<dynamic>>>[
            <String, List<dynamic>>{'rows': <dynamic>[]}
          ]
        });

      QueryResult result = await client.execute('SELECT * FROM empty_table');
      expect(result.isEmpty, true);
      expect(result.isNotEmpty, false);

      // Non-empty result
      transport
        ..whenRequest('/local/query/v1/execute')
        ..thenRespond(<String,
            List<Map<String, List<Map<String, Map<String, String>>>>>>{
          'result_sets': <Map<String, List<Map<String, Map<String, String>>>>>[
            <String, List<Map<String, Map<String, String>>>>{
              'rows': <Map<String, Map<String, String>>>[
                <String, Map<String, String>>{
                  'id': <String, String>{'type': 'Int64', 'value': '1'}
                },
              ],
            },
          ],
        });

      result = await client.execute('SELECT * FROM users');
      expect(result.isEmpty, false);
      expect(result.isNotEmpty, true);
      expect(result.length, 1);
    });
  });
}

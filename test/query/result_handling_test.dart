import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/query/query_result.dart';
import 'package:ydb_flutter_sdk/src/query/result_extensions.dart';
import 'package:ydb_flutter_sdk/src/types/i_ydb_value.dart';
import 'package:ydb_flutter_sdk/src/types/primitives.dart';

void main() {
  group('ResultHandling', () {
    group('ColumnMetadata', () {
      test('creates from JSON', () {
        final Map<String, String> json = <String, String>{
          'name': 'id',
          'type': 'Int64'
        };
        final ColumnMetadata column = ColumnMetadata.fromJson(json);

        expect(column.name, 'id');
        expect(column.type, 'Int64');
      });

      test('handles missing type', () {
        final Map<String, String> json = <String, String>{'name': 'id'};
        final ColumnMetadata column = ColumnMetadata.fromJson(json);

        expect(column.name, 'id');
        expect(column.type, 'Unknown');
      });

      test('toString returns readable format', () {
        final ColumnMetadata column = ColumnMetadata(name: 'id', type: 'Int64');
        expect(column.toString(), 'ColumnMetadata(name: id, type: Int64)');
      });

      test('equality works correctly', () {
        final ColumnMetadata column1 =
            ColumnMetadata(name: 'id', type: 'Int64');
        final ColumnMetadata column2 =
            ColumnMetadata(name: 'id', type: 'Int64');
        final ColumnMetadata column3 =
            ColumnMetadata(name: 'name', type: 'Utf8');

        expect(column1, equals(column2));
        expect(column1, isNot(equals(column3)));
      });

      test('hashCode is consistent', () {
        final ColumnMetadata column1 =
            ColumnMetadata(name: 'id', type: 'Int64');
        final ColumnMetadata column2 =
            ColumnMetadata(name: 'id', type: 'Int64');

        expect(column1.hashCode, equals(column2.hashCode));
      });
    });

    group('QueryResult with columns', () {
      test('parses columns from result_sets', () {
        final Map<String, dynamic> json = <String, dynamic>{
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
                }
              ]
            }
          ]
        };

        final QueryResult result = QueryResult.fromJson(json);

        expect(result.columns.length, 2);
        expect(result.columns[0].name, 'id');
        expect(result.columns[0].type, 'Int64');
        expect(result.columns[1].name, 'name');
        expect(result.columns[1].type, 'Utf8');
      });

      test('handles missing columns gracefully', () {
        final Map<String, dynamic> json = <String, dynamic>{
          'result_sets': <Map<String, List<Map<String, Map<String, String>>>>>[
            <String, List<Map<String, Map<String, String>>>>{
              'rows': <Map<String, Map<String, String>>>[
                <String, Map<String, String>>{
                  'id': <String, String>{'type': 'Int64', 'value': '1'},
                }
              ]
            }
          ]
        };

        final QueryResult result = QueryResult.fromJson(json);

        expect(result.columns, isEmpty);
        expect(result.rows.length, 1);
      });

      test('handles empty result_sets', () {
        final Map<String, dynamic> json = <String, dynamic>{
          'result_sets': <dynamic>[],
        };

        final QueryResult result = QueryResult.fromJson(json);

        expect(result.columns, isEmpty);
        expect(result.rows, isEmpty);
      });
    });

    group('QueryResult helper methods', () {
      late QueryResult result;

      setUp(() {
        final Map<String, dynamic> json = <String, dynamic>{
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
                }
              ]
            }
          ]
        };

        result = QueryResult.fromJson(json);
      });

      test('map transforms all rows', () {
        final List<int?> ids =
            result.map((Map<String, IYdbValue> row) => row.getInt('id'));

        expect(ids, <int>[1, 2]);
      });

      test('map with complex transformation', () {
        final List<Map<String, Object?>> users =
            result.map((Map<String, IYdbValue> row) => <String, Object?>{
                  'id': row.getInt('id'),
                  'name': row.getString('name'),
                });

        expect(users.length, 2);
        expect(users[0]['id'], 1);
        expect(users[0]['name'], 'Alice');
        expect(users[1]['id'], 2);
        expect(users[1]['name'], 'Bob');
      });

      test('single returns value for single row result', () {
        final Map<String, dynamic> json = <String, dynamic>{
          'result_sets': <Map<String, List<Map<String, Map<String, String>>>>>[
            <String, List<Map<String, Map<String, String>>>>{
              'rows': <Map<String, Map<String, String>>>[
                <String, Map<String, String>>{
                  'id': <String, String>{'type': 'Int64', 'value': '42'},
                }
              ]
            }
          ]
        };

        final QueryResult singleResult = QueryResult.fromJson(json);
        final int? id = singleResult
            .single((Map<String, IYdbValue> row) => row.getInt('id'));

        expect(id, 42);
      });

      test('single throws on empty result', () {
        final Map<String, dynamic> json = <String, dynamic>{
          'result_sets': <Map<String, List<dynamic>>>[
            <String, List<dynamic>>{'rows': <dynamic>[]}
          ]
        };

        final QueryResult emptyResult = QueryResult.fromJson(json);

        expect(
          () => emptyResult
              .single((Map<String, IYdbValue> row) => row.getInt('id')),
          throwsA(isA<StateError>().having(
            (StateError e) => e.message,
            'message',
            'Result is empty, expected exactly one row',
          )),
        );
      });

      test('single throws on multiple rows', () {
        expect(
          () => result.single((Map<String, IYdbValue> row) => row.getInt('id')),
          throwsA(isA<StateError>().having(
            (StateError e) => e.message,
            'message',
            contains('Result contains 2 rows, expected exactly one'),
          )),
        );
      });

      test('firstOrNull returns first row', () {
        final int? id = result.firstOrNull<int?>(
            (Map<String, IYdbValue> row) => row.getInt('id'));

        expect(id, 1);
      });

      test('firstOrNull returns null for empty result', () {
        final Map<String, dynamic> json = <String, dynamic>{
          'result_sets': <Map<String, List<dynamic>>>[
            <String, List<dynamic>>{'rows': <dynamic>[]}
          ]
        };

        final QueryResult emptyResult = QueryResult.fromJson(json);
        final int? id = emptyResult.firstOrNull<int?>(
            (Map<String, IYdbValue> row) => row.getInt('id'));

        expect(id, isNull);
      });
    });

    group('YdbValueHelpers extension', () {
      late Map<String, IYdbValue> row;

      setUp(() {
        row = <String, IYdbValue<dynamic>>{
          'id': YdbInt64(123),
          'age': YdbInt32(25),
          'name': YdbUtf8('Alice'),
          'active': YdbBool(true),
          'score': YdbDouble(95.5),
          'data': YdbBytes(<int>[1, 2, 3]),
        };
      });

      test('get returns value if exists', () {
        final YdbInt64? id = row.get<YdbInt64>('id');
        expect(id, isNotNull);
        expect(id?.value, 123);
      });

      test('get returns null if key missing', () {
        final YdbInt64? missing = row.get<YdbInt64>('missing');
        expect(missing, isNull);
      });

      test('get returns null if type mismatch', () {
        final YdbUtf8? wrongType = row.get<YdbUtf8>('id');
        expect(wrongType, isNull);
      });

      test('getRequired returns value if exists', () {
        final YdbInt64 id = row.getRequired<YdbInt64>('id');
        expect(id.value, 123);
      });

      test('getRequired throws if key missing', () {
        expect(
          () => row.getRequired<YdbInt64>('missing'),
          throwsA(isA<ArgumentError>().having(
            (ArgumentError e) => e.message,
            'message',
            contains('Required key "missing" not found'),
          )),
        );
      });

      test('getRequired throws if type mismatch', () {
        expect(
          () => row.getRequired<YdbUtf8>('id'),
          throwsA(isA<ArgumentError>().having(
            (ArgumentError e) => e.message,
            'message',
            contains('has type YdbInt64, expected YdbUtf8'),
          )),
        );
      });

      test('getInt returns integer values', () {
        expect(row.getInt('id'), 123);
        expect(row.getInt('age'), 25);
      });

      test('getInt returns null for non-integer', () {
        expect(row.getInt('name'), isNull);
        expect(row.getInt('missing'), isNull);
      });

      test('getIntRequired throws if missing', () {
        expect(
          () => row.getIntRequired('missing'),
          throwsA(isA<ArgumentError>().having(
            (ArgumentError e) => e.message,
            'message',
            contains('Required integer key "missing" not found'),
          )),
        );
      });

      test('getString returns string values', () {
        expect(row.getString('name'), 'Alice');
      });

      test('getString returns null for non-string', () {
        expect(row.getString('id'), isNull);
        expect(row.getString('missing'), isNull);
      });

      test('getStringRequired throws if missing', () {
        expect(
          () => row.getStringRequired('missing'),
          throwsA(isA<ArgumentError>().having(
            (ArgumentError e) => e.message,
            'message',
            contains('Required string key "missing" not found'),
          )),
        );
      });

      test('getBool returns boolean values', () {
        expect(row.getBool('active'), true);
      });

      test('getBool returns null for non-boolean', () {
        expect(row.getBool('id'), isNull);
        expect(row.getBool('missing'), isNull);
      });

      test('getBoolRequired throws if missing', () {
        expect(
          () => row.getBoolRequired('missing'),
          throwsA(isA<ArgumentError>().having(
            (ArgumentError e) => e.message,
            'message',
            contains('Required boolean key "missing" not found'),
          )),
        );
      });

      test('getDouble returns double values', () {
        expect(row.getDouble('score'), 95.5);
      });

      test('getDouble returns null for non-double', () {
        expect(row.getDouble('id'), isNull);
        expect(row.getDouble('missing'), isNull);
      });

      test('getDoubleRequired throws if missing', () {
        expect(
          () => row.getDoubleRequired('missing'),
          throwsA(isA<ArgumentError>().having(
            (ArgumentError e) => e.message,
            'message',
            contains('Required double key "missing" not found'),
          )),
        );
      });

      test('getBytes returns bytes values', () {
        expect(row.getBytes('data'), <int>[1, 2, 3]);
      });

      test('getBytes returns null for non-bytes', () {
        expect(row.getBytes('id'), isNull);
        expect(row.getBytes('missing'), isNull);
      });

      test('getBytesRequired throws if missing', () {
        expect(
          () => row.getBytesRequired('missing'),
          throwsA(isA<ArgumentError>().having(
            (ArgumentError e) => e.message,
            'message',
            contains('Required bytes key "missing" not found'),
          )),
        );
      });

      test('hasKey checks key existence', () {
        expect(row.hasKey('id'), true);
        expect(row.hasKey('missing'), false);
      });

      test('getValue returns unwrapped value', () {
        expect(row.getValue('id'), 123);
        expect(row.getValue('name'), 'Alice');
        expect(row.getValue('active'), true);
        expect(row.getValue('missing'), isNull);
      });

      test('getInt supports all integer types', () {
        final Map<String, IYdbValue> allInts = <String, IYdbValue>{
          'int8': YdbInt8(1),
          'int16': YdbInt16(2),
          'int32': YdbInt32(3),
          'int64': YdbInt64(4),
          'uint8': YdbUint8(5),
          'uint16': YdbUint16(6),
          'uint32': YdbUint32(7),
          'uint64': YdbUint64(8),
        };

        expect(allInts.getInt('int8'), 1);
        expect(allInts.getInt('int16'), 2);
        expect(allInts.getInt('int32'), 3);
        expect(allInts.getInt('int64'), 4);
        expect(allInts.getInt('uint8'), 5);
        expect(allInts.getInt('uint16'), 6);
        expect(allInts.getInt('uint32'), 7);
        expect(allInts.getInt('uint64'), 8);
      });

      test('getString supports all string types', () {
        final Map<String, IYdbValue> allStrings = <String, IYdbValue>{
          'utf8': YdbUtf8('Hello'),
          'string': YdbString('World'),
        };

        expect(allStrings.getString('utf8'), 'Hello');
        expect(allStrings.getString('string'), 'World');
      });

      test('getDouble supports Float and Double', () {
        final Map<String, IYdbValue> allFloats = <String, IYdbValue>{
          'float': YdbFloat(1.5),
          'double': YdbDouble(2.5),
        };

        expect(allFloats.getDouble('float'), 1.5);
        expect(allFloats.getDouble('double'), 2.5);
      });
    });

    group('Integration with real query result', () {
      test('complete workflow with columns and extensions', () {
        final Map<String, dynamic> json = <String, dynamic>{
          'result_sets': <Map<String, Object>>[
            <String, Object>{
              'columns': <Map<String, String>>[
                <String, String>{'name': 'user_id', 'type': 'Int64'},
                <String, String>{'name': 'username', 'type': 'Utf8'},
                <String, String>{'name': 'is_active', 'type': 'Bool'},
                <String, String>{'name': 'balance', 'type': 'Double'},
              ],
              'rows': <Map<String, Map<String, Object>>>[
                <String, Map<String, Object>>{
                  'user_id': <String, String>{'type': 'Int64', 'value': '1'},
                  'username': <String, String>{
                    'type': 'Utf8',
                    'value': 'alice'
                  },
                  'is_active': <String, Object>{'type': 'Bool', 'value': true},
                  'balance': <String, String>{
                    'type': 'Double',
                    'value': '100.50'
                  },
                },
                <String, Map<String, Object>>{
                  'user_id': <String, String>{'type': 'Int64', 'value': '2'},
                  'username': <String, String>{'type': 'Utf8', 'value': 'bob'},
                  'is_active': <String, Object>{'type': 'Bool', 'value': false},
                  'balance': <String, String>{
                    'type': 'Double',
                    'value': '50.25'
                  },
                }
              ],
              'stats': <String, int>{'duration_ms': 10}
            }
          ]
        };

        final QueryResult result = QueryResult.fromJson(json);

        // Check columns
        expect(result.columns.length, 4);
        expect(result.columns[0].name, 'user_id');
        expect(result.columns[1].name, 'username');

        // Map to domain objects
        final List<Map<String, Object>> users =
            result.map((Map<String, IYdbValue> row) => <String, Object>{
                  'id': row.getIntRequired('user_id'),
                  'name': row.getStringRequired('username'),
                  'active': row.getBoolRequired('is_active'),
                  'balance': row.getDoubleRequired('balance'),
                });

        expect(users.length, 2);
        expect(users[0]['id'], 1);
        expect(users[0]['name'], 'alice');
        expect(users[0]['active'], true);
        expect(users[0]['balance'], 100.50);

        expect(users[1]['id'], 2);
        expect(users[1]['name'], 'bob');
        expect(users[1]['active'], false);
        expect(users[1]['balance'], 50.25);
      });

      test('firstOrNull handles empty results gracefully', () {
        final Map<String, dynamic> json = <String, dynamic>{
          'result_sets': <Map<String, List<dynamic>>>[
            <String, List<dynamic>>{
              'columns': <Map<String, String>>[
                <String, String>{'name': 'id', 'type': 'Int64'}
              ],
              'rows': <dynamic>[]
            }
          ]
        };

        final QueryResult result = QueryResult.fromJson(json);
        final Map<String, int?>? user = result.firstOrNull<Map<String, int?>>(
            (Map<String, IYdbValue> row) => <String, int?>{
                  'id': row.getInt('id'),
                });

        expect(user, isNull);
        expect(result.columns.length, 1);
      });
    });
  });
}

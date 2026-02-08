import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/types/i_ydb_value.dart';
import 'package:ydb_flutter_sdk/src/types/primitives.dart';

/// Convenient builder for YDB values
class YdbBuilder {
  // Integer types
  YdbInt8 int8(int value) => YdbInt8(value);
  YdbInt16 int16(int value) => YdbInt16(value);
  YdbInt32 int32(int value) => YdbInt32(value);
  YdbInt64 int64(int value) => YdbInt64(value);

  YdbUint8 uint8(int value) => YdbUint8(value);
  YdbUint16 uint16(int value) => YdbUint16(value);
  YdbUint32 uint32(int value) => YdbUint32(value);
  YdbUint64 uint64(int value) => YdbUint64(value);

  // Floating point
  YdbFloat float(double value) => YdbFloat(value);
  YdbDouble double_(double value) => YdbDouble(value);

  // String types
  YdbUtf8 utf8(String value) => YdbUtf8(value);
  YdbString string(String value) => YdbString(value);
  YdbBytes bytes(List<int> value) => YdbBytes(value);

  // Boolean
  YdbBool bool_(bool value) => YdbBool(value);

  // Date/Time
  YdbDate date(DateTime value) => YdbDate(value);
  YdbDatetime datetime(DateTime value) => YdbDatetime(value);
  YdbTimestamp timestamp(DateTime value) => YdbTimestamp(value);
  YdbInterval interval(Duration value) => YdbInterval(value);

  // JSON
  YdbJson json(String value) => YdbJson(value);
  YdbJsonDocument jsonDocument(String value) => YdbJsonDocument(value);

  // Special types
  YdbDecimal decimal(String value, {int precision = 22, int scale = 9}) =>
      YdbDecimal(value, precision: precision, scale: scale);
  YdbUuid uuid(String value) => YdbUuid(value);

  // Container types
  YdbOptional<T> optional<T extends IYdbValue>(T? value) => YdbOptional(value);
  YdbOptional<YdbInt64> optionalInt(int? value) =>
      YdbOptional(value != null ? YdbInt64(value) : null);
  YdbOptional<YdbUtf8> optionalString(String? value) =>
      YdbOptional(value != null ? YdbUtf8(value) : null);

  YdbList<T> list<T extends IYdbValue>(List<T> value) => YdbList(value);
  YdbTuple tuple(List<IYdbValue> value) => YdbTuple(value);
  YdbStruct struct(Map<String, IYdbValue> value) => YdbStruct(value);
  YdbDict<K, V> dict<K extends IYdbValue, V extends IYdbValue>(
    Map<K, V> value,
  ) => YdbDict(value);

  // Special
  YdbNull null_() => const YdbNull();
  YdbVoid void_() => const YdbVoid();
}

// Global instance for convenience
final YdbBuilder ydb = YdbBuilder();

void main() {
  group('YDB Value Builders', () {
    test('simple values', () {
      final YdbString stringValue = ydb.string('hello');
      expect(stringValue.value, 'hello');

      // Validate YDB JSON wire format
      final Map<String, dynamic> json = stringValue.toJson();
      expect(json, <String, String>{'type': 'String', 'value': 'hello'});
    });

    test('optional int with null', () {
      final YdbOptional<YdbInt64> optValue = ydb.optionalInt(null);
      expect(optValue.value, isNull);

      // Validate YDB JSON wire format for Optional with null
      final Map<String, dynamic> json = optValue.toJson();
      expect(json, <String, String?>{'type': 'Optional', 'value': null});
    });

    test('optional int with value', () {
      final YdbOptional<YdbInt64> optValue = ydb.optionalInt(42);
      expect(optValue.value, isNotNull);
      expect(optValue.value!.value, 42);

      // Validate YDB JSON wire format for Optional with value
      final Map<String, dynamic> json = optValue.toJson();
      expect(json, <String, Object>{
        'type': 'Optional',
        'value': <String, Object>{'type': 'Int64', 'value': 42},
      });
    });

    test('struct with nested values', () {
      final YdbStruct structValue = ydb.struct(<String, IYdbValue<dynamic>>{
        'id': ydb.int64(1),
        'name': ydb.utf8('Bob'),
      });

      expect(structValue.value['id'], isA<YdbInt64>());
      expect((structValue.value['id'] as YdbInt64).value, 1);
      expect(structValue.value['name'], isA<YdbUtf8>());
      expect((structValue.value['name'] as YdbUtf8).value, 'Bob');

      // Validate YDB JSON wire format for Struct
      final Map<String, dynamic> json = structValue.toJson();
      expect(json, <String, Object>{
        'type': 'Struct',
        'value': <String, Map<String, Object>>{
          'id': <String, Object>{'type': 'Int64', 'value': 1},
          'name': <String, String>{'type': 'Utf8', 'value': 'Bob'},
        },
      });
    });

    test('list of integers', () {
      final YdbList<YdbInt64> listValue = ydb.list(<YdbInt64>[
        ydb.int64(1),
        ydb.int64(2),
        ydb.int64(3),
      ]);

      expect(listValue.value.length, 3);
      expect(listValue.value[0].value, 1);
      expect(listValue.value[1].value, 2);
      expect(listValue.value[2].value, 3);

      // Validate YDB JSON wire format for List
      final Map<String, dynamic> json = listValue.toJson();
      expect(json, <String, Object>{
        'type': 'List',
        'value': <Map<String, Object>>[
          <String, Object>{'type': 'Int64', 'value': 1},
          <String, Object>{'type': 'Int64', 'value': 2},
          <String, Object>{'type': 'Int64', 'value': 3},
        ],
      });
    });

    test('complex nested structure', () {
      final YdbStruct complex = ydb.struct(<String, IYdbValue<dynamic>>{
        'user': ydb.struct(<String, IYdbValue<dynamic>>{
          'id': ydb.int64(1),
          'name': ydb.utf8('Alice'),
          'email': ydb.optionalString('alice@example.com'),
        }),
        'scores': ydb.list(<YdbInt32>[
          ydb.int32(100),
          ydb.int32(95),
          ydb.int32(88),
        ]),
        'active': ydb.bool_(true),
        'lastLogin': ydb.timestamp(DateTime.utc(2026, 2, 7)),
      });

      expect(complex.value['user'], isA<YdbStruct>());
      expect(complex.value['scores'], isA<YdbList>());
      expect(complex.value['active'], isA<YdbBool>());
      expect(complex.value['lastLogin'], isA<YdbTimestamp>());

      // Validate YDB JSON wire format for nested structure
      final Map<String, dynamic> json = complex.toJson();
      expect(json['type'], 'Struct');
      expect(json['value']['user']['type'], 'Struct');
      expect(json['value']['user']['value']['id'], <String, Object>{
        'type': 'Int64',
        'value': 1,
      });
      expect(json['value']['user']['value']['name'], <String, String>{
        'type': 'Utf8',
        'value': 'Alice',
      });
      expect(json['value']['user']['value']['email']['type'], 'Optional');
      expect(json['value']['scores']['type'], 'List');
      expect(json['value']['scores']['value'], hasLength(3));
      expect(json['value']['active'], <String, Object>{
        'type': 'Bool',
        'value': true,
      });
    });

    test('tuple with mixed types', () {
      final YdbTuple tupleValue = ydb.tuple(<IYdbValue<dynamic>>[
        ydb.int64(1),
        ydb.utf8('text'),
        ydb.bool_(false),
      ]);

      expect(tupleValue.value.length, 3);
      expect(tupleValue.value[0], isA<YdbInt64>());
      expect(tupleValue.value[1], isA<YdbUtf8>());
      expect(tupleValue.value[2], isA<YdbBool>());

      // Validate YDB JSON wire format for Tuple
      final Map<String, dynamic> json = tupleValue.toJson();
      expect(json, <String, Object>{
        'type': 'Tuple',
        'value': <Map<String, Object>>[
          <String, Object>{'type': 'Int64', 'value': 1},
          <String, String>{'type': 'Utf8', 'value': 'text'},
          <String, Object>{'type': 'Bool', 'value': false},
        ],
      });
    });

    test('integer types', () {
      // Test all integer types serialize correctly
      expect(ydb.int8(127).toJson(), <String, Object>{
        'type': 'Int8',
        'value': 127,
      });
      expect(ydb.int16(32767).toJson(), <String, Object>{
        'type': 'Int16',
        'value': 32767,
      });
      expect(ydb.int32(2147483647).toJson(), <String, Object>{
        'type': 'Int32',
        'value': 2147483647,
      });
      expect(ydb.int64(9223372036854775807).toJson(), <String, Object>{
        'type': 'Int64',
        'value': 9223372036854775807,
      });

      expect(ydb.uint8(255).toJson(), <String, Object>{
        'type': 'Uint8',
        'value': 255,
      });
      expect(ydb.uint16(65535).toJson(), <String, Object>{
        'type': 'Uint16',
        'value': 65535,
      });
      expect(ydb.uint32(4294967295).toJson(), <String, Object>{
        'type': 'Uint32',
        'value': 4294967295,
      });
      expect(ydb.uint64(1234567890).toJson(), <String, Object>{
        'type': 'Uint64',
        'value': 1234567890,
      });
    });

    test('floating point types', () {
      expect(ydb.float(3.14).toJson(), <String, Object>{
        'type': 'Float',
        'value': 3.14,
      });
      expect(ydb.double_(2.718281828).toJson(), <String, Object>{
        'type': 'Double',
        'value': 2.718281828,
      });
    });

    test('boolean type', () {
      expect(ydb.bool_(true).toJson(), <String, Object>{
        'type': 'Bool',
        'value': true,
      });
      expect(ydb.bool_(false).toJson(), <String, Object>{
        'type': 'Bool',
        'value': false,
      });
    });

    test('string types', () {
      expect(ydb.utf8('Hello').toJson(), <String, String>{
        'type': 'Utf8',
        'value': 'Hello',
      });
      expect(ydb.string('World').toJson(), <String, String>{
        'type': 'String',
        'value': 'World',
      });
    });

    test('deserialization from JSON', () {
      // Test simple type deserialization
      final Map<String, String> json = <String, String>{
        'type': 'Int64',
        'value': '123',
      };

      final IYdbValue<dynamic> value = IYdbValue.fromJson(json);
      expect(value, isA<YdbInt64>());
      expect(value.value, 123);

      // Verify it serializes back to the same format
      expect(value.toJson(), <String, Object>{'type': 'Int64', 'value': 123});
    });

    test('roundtrip serialization', () {
      final YdbStruct original = ydb.struct(<String, IYdbValue<dynamic>>{
        'id': ydb.int64(42),
        'name': ydb.utf8('Test'),
        'optional': ydb.optionalInt(null),
      });

      final Map<String, dynamic> json = original.toJson();

      // Validate exact YDB JSON format
      expect(json, <String, Object>{
        'type': 'Struct',
        'value': <String, Map<String, Object?>>{
          'id': <String, Object>{'type': 'Int64', 'value': 42},
          'name': <String, String>{'type': 'Utf8', 'value': 'Test'},
          'optional': <String, String?>{'type': 'Optional', 'value': null},
        },
      });

      final IYdbValue<dynamic> restored = IYdbValue.fromJson(json);

      expect(restored, isA<YdbStruct>());
      final YdbStruct restoredStruct = restored as YdbStruct;
      expect((restoredStruct.value['id'] as YdbInt64).value, 42);
      expect((restoredStruct.value['name'] as YdbUtf8).value, 'Test');
      expect((restoredStruct.value['optional'] as YdbOptional).value, isNull);
    });

    test('YDB wire format compatibility - parameters', () {
      // Simulate YDB query parameters format
      final Map<String, IYdbValue<dynamic>> params = <String, IYdbValue>{
        r'$id': ydb.uint64(1),
        r'$name': ydb.utf8('Alice'),
        r'$description': ydb.optionalString(null),
      };

      // Convert to JSON as it would be sent to YDB
      final Map<String, Map<String, dynamic>> paramsJson = params.map(
        (String key, IYdbValue<dynamic> value) => MapEntry(key, value.toJson()),
      );

      // Validate format matches YDB wire format specification
      expect(paramsJson[r'$id'], <String, Object>{
        'type': 'Uint64',
        'value': 1,
      });
      expect(paramsJson[r'$name'], <String, String>{
        'type': 'Utf8',
        'value': 'Alice',
      });
      expect(paramsJson[r'$description'], <String, String?>{
        'type': 'Optional',
        'value': null,
      });
    });

    test('YDB wire format compatibility - result rows', () {
      // Simulate YDB result row format
      final Map<String, Map<String, Object>> rowJson =
          <String, Map<String, Object>>{
            'id': <String, String>{'type': 'Uint64', 'value': '1'},
            'name': <String, String>{'type': 'Utf8', 'value': 'Alice'},
            'age': <String, String>{'type': 'Int32', 'value': '30'},
            'active': <String, Object>{'type': 'Bool', 'value': true},
          };

      // Parse as if receiving from YDB
      final Map<String, IYdbValue<dynamic>> row = rowJson.map(
        (String key, Map<String, Object> value) =>
            MapEntry(key, IYdbValue.fromJson(value)),
      );

      expect(row['id'], isA<YdbUint64>());
      expect((row['id'] as YdbUint64).value, 1);
      expect(row['name'], isA<YdbUtf8>());
      expect((row['name'] as YdbUtf8).value, 'Alice');
      expect(row['age'], isA<YdbInt32>());
      expect((row['age'] as YdbInt32).value, 30);
      expect(row['active'], isA<YdbBool>());
      expect((row['active'] as YdbBool).value, true);
    });
  });
}

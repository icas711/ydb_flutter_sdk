import 'dart:convert';
import 'dart:typed_data';

import 'i_ydb_value.dart';
import 'primitives.dart';
import 'ydb_type.dart';

/// Converter for serializing YdbValue to JSON/wire format
///
/// Use [YdbValueSerializer.toJson] for detailed type information
/// or simply call [IYdbValue.toJson] on any value for basic serialization.
///
/// Example:
/// ```dart
/// final value = YdbInt64(123);
/// final json = YdbValueSerializer.toJson(value);
/// // Includes full type metadata
/// ```
class YdbValueSerializer {
  static Map<String, dynamic> toJson(IYdbValue value) {
    return <String, dynamic>{
      'type': _typeToJson(value.type, value),
      'value': _valueToJson(value),
    };
  }

  static Map<String, dynamic> _typeToJson(YdbType type, IYdbValue value) {
    switch (type) {
      case YdbType.optional:
        final YdbOptional<IYdbValue<dynamic>> optValue = value as YdbOptional;
        return <String, dynamic>{
          'optional_type': optValue.value != null
              ? _typeToJson(optValue.value!.type, optValue.value!)
              : <String, Map<dynamic, dynamic>>{
                  'void_type': <dynamic, dynamic>{},
                },
        };
      case YdbType.list:
        final YdbList<IYdbValue<dynamic>> listValue = value as YdbList;
        return <String, dynamic>{
          'list_type': <String, Map<String, dynamic>>{
            'item': listValue.value.isNotEmpty
                ? _typeToJson(listValue.value.first.type, listValue.value.first)
                : <String, Map<dynamic, dynamic>>{
                    'void_type': <dynamic, dynamic>{},
                  },
          },
        };
      case YdbType.tuple:
        final YdbTuple tupleValue = value as YdbTuple;
        return <String, dynamic>{
          'tuple_type': <String, List<Map<String, dynamic>>>{
            'elements': tupleValue.value
                .map((IYdbValue<dynamic> e) => _typeToJson(e.type, e))
                .toList(),
          },
        };
      case YdbType.struct:
        final YdbStruct structValue = value as YdbStruct;
        return <String, dynamic>{
          'struct_type': <String, List<Map<String, Object>>>{
            'members': structValue.value.entries
                .map(
                  (MapEntry<String, IYdbValue<dynamic>> e) => <String, Object>{
                    'name': e.key,
                    'type': _typeToJson(e.value.type, e.value),
                  },
                )
                .toList(),
          },
        };
      case YdbType.dict:
        final YdbDict<IYdbValue<dynamic>, IYdbValue<dynamic>> dictValue =
            value as YdbDict;
        if (dictValue.value.isEmpty) {
          return <String, dynamic>{
            'dict_type': <String, Map<String, Map<dynamic, dynamic>>>{
              'key': <String, Map<dynamic, dynamic>>{
                'void_type': <dynamic, dynamic>{},
              },
              'payload': <String, Map<dynamic, dynamic>>{
                'void_type': <dynamic, dynamic>{},
              },
            },
          };
        }
        final MapEntry<IYdbValue<dynamic>, IYdbValue<dynamic>> firstEntry =
            dictValue.value.entries.first;
        return <String, dynamic>{
          'dict_type': <String, Map<String, dynamic>>{
            'key': _typeToJson(firstEntry.key.type, firstEntry.key),
            'payload': _typeToJson(firstEntry.value.type, firstEntry.value),
          },
        };
      case YdbType.decimal:
        final YdbDecimal decValue = value as YdbDecimal;
        return <String, dynamic>{
          'decimal_type': <String, int>{
            'precision': decValue.precision,
            'scale': decValue.scale,
          },
        };
      default:
        return <String, dynamic>{'type_id': type.wireName.toUpperCase()};
    }
  }

  static dynamic _valueToJson(IYdbValue value) {
    switch (value.type) {
      case YdbType.int8:
      case YdbType.int16:
      case YdbType.int32:
      case YdbType.int64:
      case YdbType.uint8:
      case YdbType.uint16:
      case YdbType.uint32:
      case YdbType.uint64:
        return value.value.toString();

      case YdbType.float:
      case YdbType.double:
        return (value as IYdbValue<double>).value;

      case YdbType.utf8:
      case YdbType.string:
      case YdbType.json:
      case YdbType.jsonDocument:
      case YdbType.decimal:
      case YdbType.uuid:
        return value.value;

      case YdbType.bytes:
        final List<int> bytes = (value as YdbBytes).value;
        return base64Encode(Uint8List.fromList(bytes));

      case YdbType.yson:
        final List<int> bytes = (value as YdbYson).value;
        return base64Encode(Uint8List.fromList(bytes));

      case YdbType.boolType:
        return (value as YdbBool).value;

      case YdbType.date:
        final DateTime date = (value as YdbDate).value;
        final DateTime epoch = DateTime.utc(1970, 1, 1);
        return date.difference(epoch).inDays.toString();

      case YdbType.datetime:
        final DateTime datetime = (value as YdbDatetime).value;
        return (datetime.millisecondsSinceEpoch ~/ 1000).toString();

      case YdbType.timestamp:
        final DateTime timestamp = (value as YdbTimestamp).value;
        return timestamp.microsecondsSinceEpoch.toString();

      case YdbType.interval:
        final Duration interval = (value as YdbInterval).value;
        return interval.inMicroseconds.toString();

      case YdbType.optional:
        final YdbOptional<IYdbValue<dynamic>> opt = value as YdbOptional;
        return opt.value != null ? _valueToJson(opt.value!) : null;

      case YdbType.list:
        final List<IYdbValue<dynamic>> list = (value as YdbList).value;
        return list.map(_valueToJson).toList();

      case YdbType.tuple:
        final List<IYdbValue<dynamic>> tuple = (value as YdbTuple).value;
        return tuple.map(_valueToJson).toList();

      case YdbType.struct:
        final Map<String, IYdbValue<dynamic>> struct =
            (value as YdbStruct).value;
        return struct.map(
          (String k, IYdbValue<dynamic> v) => MapEntry(k, _valueToJson(v)),
        );

      case YdbType.dict:
        final Map<IYdbValue<dynamic>, IYdbValue<dynamic>> dict =
            (value as YdbDict).value;
        return dict.entries
            .map(
              (MapEntry<IYdbValue<dynamic>, IYdbValue<dynamic>> e) =>
                  <String, dynamic>{
                    'key': _valueToJson(e.key),
                    'payload': _valueToJson(e.value),
                  },
            )
            .toList();

      case YdbType.void_:
      case YdbType.null_:
        return null;
    }
  }
}

/// Converter for deserializing JSON/wire format to YdbValue
///
/// You can use [YdbValueDeserializer.fromJson] directly or the convenience
/// method [IYdbValue.fromJson].
///
/// Example:
/// ```dart
/// // Using static method
/// final value = YdbValue.fromJson({
///   'type': 'Int64',
///   'value': '123'
/// });
///
/// // Or using deserializer directly
/// final value2 = YdbValueDeserializer.fromJson({
///   'type': 'Int64',
///   'value': '456'
/// });
/// ```
class YdbValueDeserializer {
  static IYdbValue fromJson(Map<String, dynamic> json) {
    final typeInfo = json['type'];
    final value = json['value'];

    // Handle simple format: {"type": "Int64", "value": 123}
    if (typeInfo is String) {
      return _fromSimpleFormat(typeInfo, value);
    }

    // Handle complex format with type metadata
    return _fromJsonWithType(typeInfo as Map<String, dynamic>, value);
  }

  /// Parse simple wire format: {"type": "Int64", "value": 123}
  static IYdbValue _fromSimpleFormat(String typeName, dynamic value) {
    final YdbType type = YdbType.values.firstWhere(
      (YdbType t) => t.wireName == typeName,
      orElse: () => throw ArgumentError('Unknown type: $typeName'),
    );

    // Handle Optional with nested value
    if (type == YdbType.optional) {
      if (value == null) return YdbOptional(null);
      if (value is Map<String, dynamic> && value.containsKey('type')) {
        return YdbOptional(
          _fromSimpleFormat(value['type'] as String, value['value']),
        );
      }
      throw ArgumentError('Invalid Optional value format: $value');
    }

    // Handle List
    if (type == YdbType.list) {
      if (value is! List) throw ArgumentError('List value must be an array');
      if (value.isEmpty) return YdbList<IYdbValue>(<IYdbValue<dynamic>>[]);

      final List<IYdbValue> items = value
          .map((item) {
            if (item is Map<String, dynamic> && item.containsKey('type')) {
              return _fromSimpleFormat(item['type'] as String, item['value']);
            }
            throw ArgumentError('List items must have type information');
          })
          .cast<IYdbValue>()
          .toList();
      return YdbList(items);
    }

    // Handle Struct
    if (type == YdbType.struct) {
      if (value is! Map) throw ArgumentError('Struct value must be an object');

      final Map<String, IYdbValue> structValue = <String, IYdbValue>{};
      for (MapEntry<String, dynamic> entry
          in (value as Map<String, dynamic>).entries) {
        final fieldValue = entry.value;
        if (fieldValue is Map<String, dynamic> &&
            fieldValue.containsKey('type')) {
          structValue[entry.key] = _fromSimpleFormat(
            fieldValue['type'] as String,
            fieldValue['value'],
          );
        } else {
          throw ArgumentError('Struct fields must have type information');
        }
      }
      return YdbStruct(structValue);
    }

    // Handle Tuple
    if (type == YdbType.tuple) {
      if (value is! List) throw ArgumentError('Tuple value must be an array');

      final List<IYdbValue> items = value
          .map((item) {
            if (item is Map<String, dynamic> && item.containsKey('type')) {
              return _fromSimpleFormat(item['type'] as String, item['value']);
            }
            throw ArgumentError('Tuple items must have type information');
          })
          .cast<IYdbValue>()
          .toList();
      return YdbTuple(items);
    }

    return _fromPrimitiveType(type, value);
  }

  static IYdbValue _fromJsonWithType(
    Map<String, dynamic> typeInfo,
    dynamic value,
  ) {
    if (typeInfo.containsKey('type_id')) {
      final String typeId = (typeInfo['type_id'] as String).toLowerCase();
      final YdbType type = YdbType.values.firstWhere(
        (YdbType t) => t.wireName.toLowerCase() == typeId,
        orElse: () => throw ArgumentError('Unknown type: $typeId'),
      );

      return _fromPrimitiveType(type, value);
    }

    if (typeInfo.containsKey('optional_type')) {
      if (value == null) return YdbOptional(null);
      final innerType = typeInfo['optional_type'];
      return YdbOptional(_fromJsonWithType(innerType, value));
    }

    if (typeInfo.containsKey('list_type')) {
      final itemType = typeInfo['list_type']['item'];
      final List<IYdbValue<dynamic>> items = (value as List)
          .map((v) => _fromJsonWithType(itemType, v))
          .cast<IYdbValue>()
          .toList();
      return YdbList(items);
    }

    if (typeInfo.containsKey('tuple_type')) {
      final List<dynamic> elements = typeInfo['tuple_type']['elements'] as List;
      final List<IYdbValue<dynamic>> values = List<IYdbValue>.generate(
        elements.length,
        (int i) {
          return _fromJsonWithType(elements[i], (value as List)[i]);
        },
      );
      return YdbTuple(values);
    }

    if (typeInfo.containsKey('struct_type')) {
      final List<dynamic> members = typeInfo['struct_type']['members'] as List;
      final Map<String, IYdbValue<dynamic>> structValue = <String, IYdbValue>{};
      for (var member in members) {
        final String name = member['name'] as String;
        final memberType = member['type'];
        structValue[name] = _fromJsonWithType(memberType, value[name]);
      }
      return YdbStruct(structValue);
    }

    if (typeInfo.containsKey('dict_type')) {
      final keyType = typeInfo['dict_type']['key'];
      final payloadType = typeInfo['dict_type']['payload'];
      final Map<IYdbValue<dynamic>, IYdbValue<dynamic>> dictValue =
          <IYdbValue, IYdbValue>{};
      for (var entry in value as List) {
        final IYdbValue<dynamic> key = _fromJsonWithType(keyType, entry['key']);
        final IYdbValue<dynamic> payload = _fromJsonWithType(
          payloadType,
          entry['payload'],
        );
        dictValue[key] = payload;
      }
      return YdbDict(dictValue);
    }

    if (typeInfo.containsKey('decimal_type')) {
      final int precision = typeInfo['decimal_type']['precision'] as int;
      final int scale = typeInfo['decimal_type']['scale'] as int;
      return YdbDecimal(value as String, precision: precision, scale: scale);
    }

    throw ArgumentError('Unknown type structure: $typeInfo');
  }

  static IYdbValue _fromPrimitiveType(YdbType type, dynamic value) {
    switch (type) {
      case YdbType.int8:
        return YdbInt8(int.parse(value.toString()));
      case YdbType.int16:
        return YdbInt16(int.parse(value.toString()));
      case YdbType.int32:
        return YdbInt32(int.parse(value.toString()));
      case YdbType.int64:
        return YdbInt64(int.parse(value.toString()));
      case YdbType.uint8:
        return YdbUint8(int.parse(value.toString()));
      case YdbType.uint16:
        return YdbUint16(int.parse(value.toString()));
      case YdbType.uint32:
        return YdbUint32(int.parse(value.toString()));
      case YdbType.uint64:
        return YdbUint64(int.parse(value.toString()));

      case YdbType.float:
        return YdbFloat(double.parse(value.toString()));
      case YdbType.double:
        return YdbDouble(double.parse(value.toString()));

      case YdbType.utf8:
        return YdbUtf8(value as String);
      case YdbType.string:
        return YdbString(value as String);
      case YdbType.bytes:
        return YdbBytes(base64Decode(value as String));

      case YdbType.boolType:
        return YdbBool(value as bool);

      case YdbType.date:
        final int days = int.parse(value.toString());
        final DateTime epoch = DateTime.utc(1970, 1, 1);
        return YdbDate(epoch.add(Duration(days: days)));

      case YdbType.datetime:
        final int seconds = int.parse(value.toString());
        return YdbDatetime(
          DateTime.fromMillisecondsSinceEpoch(seconds * 1000, isUtc: true),
        );

      case YdbType.timestamp:
        final int micros = int.parse(value.toString());
        return YdbTimestamp(
          DateTime.fromMicrosecondsSinceEpoch(micros, isUtc: true),
        );

      case YdbType.interval:
        final int micros = int.parse(value.toString());
        return YdbInterval(Duration(microseconds: micros));

      case YdbType.json:
        return YdbJson(value as String);
      case YdbType.jsonDocument:
        return YdbJsonDocument(value as String);
      case YdbType.yson:
        return YdbYson(base64Decode(value as String));

      case YdbType.uuid:
        return YdbUuid(value as String);

      case YdbType.void_:
        return YdbVoid();
      case YdbType.null_:
        return YdbNull();

      default:
        throw ArgumentError('Unsupported type for primitive conversion: $type');
    }
  }
}

/// Extension for convenient Dart to YdbValue conversion
extension DartToYdbValue on Object? {
  IYdbValue toYdbValue() {
    final Object? value = this;

    if (value == null) return YdbOptional(null);

    if (value is int) return YdbInt64(value);
    if (value is double) return YdbDouble(value);
    if (value is String) return YdbUtf8(value);
    if (value is bool) return YdbBool(value);
    if (value is DateTime) return YdbTimestamp(value);
    if (value is Duration) return YdbInterval(value);
    if (value is List<int>) return YdbBytes(value);

    if (value is List) {
      final List<IYdbValue<dynamic>> items = value
          .map((e) => e.toYdbValue())
          .cast<IYdbValue>()
          .toList();
      return YdbList(items);
    }

    if (value is Map<String, dynamic>) {
      final Map<String, IYdbValue<dynamic>> structValue = value
          .map<String, IYdbValue>((String k, v) => MapEntry(k, v.toYdbValue()));
      return YdbStruct(structValue);
    }

    throw ArgumentError('Cannot convert ${value.runtimeType} to YdbValue');
  }

  YdbOptional toYdbOptional() {
    return YdbOptional(this?.toYdbValue());
  }
}

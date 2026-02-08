import 'i_ydb_value.dart';
import 'ydb_type.dart';

// Base mixin for simple toJson implementation
mixin _SimpleValueJson<T> on IYdbValue<T> {
  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.wireName,
        'value': value,
      };
}

// Integer types
final class YdbInt8 extends IYdbValue<int> with _SimpleValueJson {
  @override
  final int value;

  YdbInt8(this.value);

  @override
  YdbType get type => YdbType.int8;
}

final class YdbInt16 extends IYdbValue<int> with _SimpleValueJson {
  @override
  final int value;

  const YdbInt16(this.value);

  @override
  YdbType get type => YdbType.int16;
}

final class YdbInt32 extends IYdbValue<int> with _SimpleValueJson {
  @override
  final int value;

  const YdbInt32(this.value);

  @override
  YdbType get type => YdbType.int32;
}

final class YdbInt64 extends IYdbValue<int> with _SimpleValueJson {
  @override
  final int value;

  const YdbInt64(this.value);

  @override
  YdbType get type => YdbType.int64;
}

final class YdbUint8 extends IYdbValue<int> with _SimpleValueJson {
  @override
  final int value;

  const YdbUint8(this.value);

  @override
  YdbType get type => YdbType.uint8;
}

final class YdbUint16 extends IYdbValue<int> with _SimpleValueJson {
  @override
  final int value;

  const YdbUint16(this.value);

  @override
  YdbType get type => YdbType.uint16;
}

final class YdbUint32 extends IYdbValue<int> with _SimpleValueJson {
  @override
  final int value;

  const YdbUint32(this.value);

  @override
  YdbType get type => YdbType.uint32;
}

final class YdbUint64 extends IYdbValue<int> with _SimpleValueJson {
  @override
  final int value;

  const YdbUint64(this.value);

  @override
  YdbType get type => YdbType.uint64;
}

// Floating point types
final class YdbFloat extends IYdbValue<double> with _SimpleValueJson {
  @override
  final double value;

  const YdbFloat(this.value);

  @override
  YdbType get type => YdbType.float;
}

final class YdbDouble extends IYdbValue<double> with _SimpleValueJson {
  @override
  final double value;

  const YdbDouble(this.value);

  @override
  YdbType get type => YdbType.double;
}

// String and binary types
final class YdbUtf8 extends IYdbValue<String> with _SimpleValueJson {
  @override
  final String value;

  const YdbUtf8(this.value);

  @override
  YdbType get type => YdbType.utf8;
}

final class YdbString extends IYdbValue<String> with _SimpleValueJson {
  @override
  final String value;

  const YdbString(this.value);

  @override
  YdbType get type => YdbType.string;
}

final class YdbBytes extends IYdbValue<List<int>> with _SimpleValueJson {
  @override
  final List<int> value;

  const YdbBytes(this.value);

  @override
  YdbType get type => YdbType.bytes;
}

// Boolean
final class YdbBool extends IYdbValue<bool> with _SimpleValueJson {
  @override
  final bool value;

  const YdbBool(this.value);

  @override
  YdbType get type => YdbType.boolType;
}

// Date and time types
final class YdbDate extends IYdbValue<DateTime> with _SimpleValueJson {
  @override
  final DateTime value;

  const YdbDate(this.value);

  @override
  YdbType get type => YdbType.date;
}

final class YdbDatetime extends IYdbValue<DateTime> with _SimpleValueJson {
  @override
  final DateTime value;

  const YdbDatetime(this.value);

  @override
  YdbType get type => YdbType.datetime;
}

final class YdbTimestamp extends IYdbValue<DateTime> {
  @override
  final DateTime value;

  const YdbTimestamp(this.value);

  @override
  YdbType get type => YdbType.timestamp;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.wireName,
        'value': value.microsecondsSinceEpoch.toString(),
      };
}

final class YdbInterval extends IYdbValue<Duration> {
  @override
  final Duration value;

  const YdbInterval(this.value);

  @override
  YdbType get type => YdbType.interval;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.wireName,
        'value': value.inMicroseconds.toString(),
      };
}

// JSON and YSON
final class YdbJson extends IYdbValue<String> with _SimpleValueJson {
  @override
  final String value;

  const YdbJson(this.value);

  @override
  YdbType get type => YdbType.json;
}

final class YdbJsonDocument extends IYdbValue<String> with _SimpleValueJson {
  @override
  final String value;

  const YdbJsonDocument(this.value);

  @override
  YdbType get type => YdbType.jsonDocument;
}

final class YdbYson extends IYdbValue<List<int>> with _SimpleValueJson {
  @override
  final List<int> value;

  const YdbYson(this.value);

  @override
  YdbType get type => YdbType.yson;
}

// Decimal
final class YdbDecimal extends IYdbValue<String> {
  @override
  final String value;

  final int precision;
  final int scale;

  const YdbDecimal(this.value, {this.precision = 22, this.scale = 9});

  @override
  YdbType get type => YdbType.decimal;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.wireName,
        'value': value,
        'precision': precision,
        'scale': scale,
      };
}

// UUID
final class YdbUuid extends IYdbValue<String> with _SimpleValueJson {
  @override
  final String value;

  const YdbUuid(this.value);

  @override
  YdbType get type => YdbType.uuid;
}

// Container types
final class YdbOptional<T extends IYdbValue> extends IYdbValue<T?> {
  @override
  final T? value;

  const YdbOptional(this.value);

  @override
  YdbType get type => YdbType.optional;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.wireName,
        'value': value?.toJson(),
      };
}

final class YdbList<T extends IYdbValue> extends IYdbValue<List<T>> {
  @override
  final List<T> value;

  const YdbList(this.value);

  @override
  YdbType get type => YdbType.list;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.wireName,
        'value': value.map((e) => e.toJson()).toList(),
      };
}

final class YdbTuple extends IYdbValue<List<IYdbValue>> {
  @override
  final List<IYdbValue> value;

  const YdbTuple(this.value);

  @override
  YdbType get type => YdbType.tuple;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.wireName,
        'value': value.map((IYdbValue<dynamic> e) => e.toJson()).toList(),
      };
}

final class YdbStruct extends IYdbValue<Map<String, IYdbValue>> {
  @override
  final Map<String, IYdbValue> value;

  const YdbStruct(this.value);

  @override
  YdbType get type => YdbType.struct;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.wireName,
        'value': value.map(
          (String k, IYdbValue<dynamic> v) => MapEntry(k, v.toJson()),
        ),
      };
}

final class YdbDict<K extends IYdbValue, V extends IYdbValue>
    extends IYdbValue<Map<K, V>> {
  @override
  final Map<K, V> value;

  const YdbDict(this.value);

  @override
  YdbType get type => YdbType.dict;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.wireName,
        'value': value.entries
            .map(
              (MapEntry<K, V> e) => <String, Map<String, dynamic>>{
                'key': e.key.toJson(),
                'payload': e.value.toJson(),
              },
            )
            .toList(),
      };
}

// Special types
final class YdbVoid extends IYdbValue<void> {
  @override
  void get value {}

  const YdbVoid();

  @override
  YdbType get type => YdbType.void_;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.wireName,
        'value': null,
      };
}

final class YdbNull extends IYdbValue<Null> {
  @override
  Null get value => null;

  const YdbNull();

  @override
  YdbType get type => YdbType.null_;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.wireName,
        'value': null,
      };
}

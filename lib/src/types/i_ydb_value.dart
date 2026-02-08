import 'converters.dart';
import 'ydb_type.dart';

typedef RowMapper<T> = T Function(Map<String, IYdbValue> row);

abstract class IYdbValue<T> {
  T get value;
  YdbType get type;
  const IYdbValue();

  Map<String, dynamic> toJson();

  /// Create YdbValue from JSON representation
  ///
  /// Example:
  /// ```dart
  /// final value = YdbValue.fromJson({
  ///   'type': 'Int64',
  ///   'value': '123'
  /// });
  /// ```
  static IYdbValue fromJson(Map<String, dynamic> json) {
    return YdbValueDeserializer.fromJson(json);
  }
}

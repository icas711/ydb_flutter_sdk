import '../types/i_ydb_value.dart';
import '../types/primitives.dart';

/// Extension methods for convenient access to values in query result rows.
extension YdbValueHelpers on Map<String, IYdbValue> {
  /// Get a value by key, or null if the key doesn't exist.
  ///
  /// Example:
  /// ```dart
  /// final id = row.get<YdbInt64>('id');
  /// ```
  T? get<T extends IYdbValue>(String key) {
    final IYdbValue<dynamic>? value = this[key];
    if (value == null) return null;
    return value is T ? value : null;
  }

  /// Get a required value by key, throw if key doesn't exist or has wrong type.
  ///
  /// Example:
  /// ```dart
  /// final id = row.getRequired<YdbInt64>('id');
  /// ```
  T getRequired<T extends IYdbValue>(String key) {
    final IYdbValue<dynamic>? value = this[key];
    if (value == null) {
      throw ArgumentError('Required key "$key" not found in row');
    }
    if (value is! T) {
      throw ArgumentError(
        'Key "$key" has type ${value.runtimeType}, expected $T',
      );
    }
    return value;
  }

  /// Get an integer value (Int8, Int16, Int32, or Int64).
  ///
  /// Returns null if key doesn't exist or value cannot be converted to int.
  int? getInt(String key) {
    final IYdbValue<dynamic>? value = this[key];
    if (value == null) return null;

    if (value is YdbInt8) return value.value;
    if (value is YdbInt16) return value.value;
    if (value is YdbInt32) return value.value;
    if (value is YdbInt64) return value.value;
    if (value is YdbUint8) return value.value;
    if (value is YdbUint16) return value.value;
    if (value is YdbUint32) return value.value;
    if (value is YdbUint64) return value.value;

    return null;
  }

  /// Get an unsigned integer value (Uint8, Uint16, Uint32, or Uint64).
  ///
  /// Returns null if key doesn't exist or value cannot be converted to int.
  int? getUint(String key) {
    final IYdbValue<dynamic>? value = this[key];
    if (value == null) return null;

    if (value is YdbUint8) return value.value;
    if (value is YdbUint16) return value.value;
    if (value is YdbUint32) return value.value;
    if (value is YdbUint64) return value.value;

    return null;
  }

  /// Get a required integer value, throw if key doesn't exist or not an integer.
  int getIntRequired(String key) {
    final int? value = getInt(key);
    if (value == null) {
      throw ArgumentError('Required integer key "$key" not found in row');
    }
    return value;
  }

  /// Get a string value (Utf8 or String).
  ///
  /// Returns null if key doesn't exist or value is not a string.
  String? getString(String key) {
    final IYdbValue<dynamic>? value = this[key];
    if (value == null) return null;

    if (value is YdbUtf8) return value.value;
    if (value is YdbString) return value.value;

    return null;
  }

  /// Get a required string value, throw if key doesn't exist or not a string.
  String getStringRequired(String key) {
    final String? value = getString(key);
    if (value == null) {
      throw ArgumentError('Required string key "$key" not found in row');
    }
    return value;
  }

  /// Get a boolean value.
  ///
  /// Returns null if key doesn't exist or value is not a boolean.
  bool? getBool(String key) {
    final IYdbValue<dynamic>? value = this[key];
    if (value == null) return null;

    if (value is YdbBool) return value.value;

    return null;
  }

  /// Get a required boolean value, throw if key doesn't exist or not a boolean.
  bool getBoolRequired(String key) {
    final bool? value = getBool(key);
    if (value == null) {
      throw ArgumentError('Required boolean key "$key" not found in row');
    }
    return value;
  }

  /// Get a double value (Float, Double).
  ///
  /// Returns null if key doesn't exist or value cannot be converted to double.
  double? getDouble(String key) {
    final IYdbValue<dynamic>? value = this[key];
    if (value == null) return null;

    if (value is YdbFloat) return value.value;
    if (value is YdbDouble) return value.value;

    return null;
  }

  /// Get a required double value, throw if key doesn't exist or not a double.
  double getDoubleRequired(String key) {
    final double? value = getDouble(key);
    if (value == null) {
      throw ArgumentError('Required double key "$key" not found in row');
    }
    return value;
  }

  /// Get a bytes value.
  ///
  /// Returns null if key doesn't exist or value is not bytes.
  List<int>? getBytes(String key) {
    final IYdbValue<dynamic>? value = this[key];
    if (value == null) return null;

    if (value is YdbBytes) return value.value;

    return null;
  }

  /// Get a required bytes value, throw if key doesn't exist or not bytes.
  List<int> getBytesRequired(String key) {
    final List<int>? value = getBytes(key);
    if (value == null) {
      throw ArgumentError('Required bytes key "$key" not found in row');
    }
    return value;
  }

  /// Get a timestamp value.
  ///
  /// Returns null if key doesn't exist or value is not a timestamp.
  DateTime? getTimestamp(String key) {
    final IYdbValue<dynamic>? value = this[key];
    if (value == null) return null;

    if (value is YdbTimestamp) return value.value;

    return null;
  }

  /// Get a required timestamp value, throw if key doesn't exist or not a timestamp.
  DateTime getTimestampRequired(String key) {
    final DateTime? value = getTimestamp(key);
    if (value == null) {
      throw ArgumentError('Required timestamp key "$key" not found in row');
    }
    return value;
  }

  /// Check if a key exists in the row.
  bool hasKey(String key) {
    return containsKey(key);
  }

  /// Get value as dynamic (unwrapped).
  ///
  /// Returns the underlying value without type wrapper.
  dynamic getValue(String key) {
    final IYdbValue<dynamic>? value = this[key];
    return value?.value;
  }
}

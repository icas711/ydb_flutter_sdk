enum YdbType {
  // Integer types
  int8('Int8'),
  int16('Int16'),
  int32('Int32'),
  int64('Int64'),
  uint8('Uint8'),
  uint16('Uint16'),
  uint32('Uint32'),
  uint64('Uint64'),

  // Floating point types
  float('Float'),
  double('Double'),

  // String and binary types
  utf8('Utf8'),
  string('String'),
  bytes('Bytes'),

  // Boolean
  boolType('Bool'),

  // Date and time types
  date('Date'),
  datetime('Datetime'),
  timestamp('Timestamp'),
  interval('Interval'),

  // JSON and YSON
  json('Json'),
  jsonDocument('JsonDocument'),
  yson('Yson'),

  // Decimal
  decimal('Decimal'),

  // UUID
  uuid('Uuid'),

  // Container types
  optional('Optional'),
  list('List'),
  tuple('Tuple'),
  struct('Struct'),
  dict('Dict'),

  // Special types
  void_('Void'),
  null_('Null');

  final String wireName;
  const YdbType(this.wireName);

  static YdbType fromWire(String value) {
    return YdbType.values.firstWhere(
      (YdbType e) => e.wireName == value,
      orElse: () => throw ArgumentError('Unknown YDB type: $value'),
    );
  }
}

/* abstract class YdbValue<T> {
  final T value;
  YdbType get type;

  const YdbValue(this.value);

  Map<String, dynamic> toJson();

  /// helpers
  int asInt() => value as int;
  String asString() => value as String;
  bool asBool() => value as bool;
  DateTime asDateTime() => value as DateTime;
  Map<String, dynamic> asJson() => value as Map<String, dynamic>;
}
 */

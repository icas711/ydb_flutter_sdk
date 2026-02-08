import '../types/i_ydb_value.dart';

/// Take Dart values and convert them to YDB values for query parameters.
/// Serialization to JSON
///
/// Dart types are automatically converted to YDB types:
/// - `int` → `Int64`
/// - `double` → `Double`
/// - `String` → `Utf8`
/// - `bool` → `Bool`
/// - `DateTime` → `Timestamp`
/// - `null` → `Optional(null)`
/// - `List` → `List`
/// - `Map<String, dynamic>` → `Struct`
///
/// Example:
/// ```dart
/// final params = QueryParameters.fromMap({
///   'id': 1,
///   'name': null,
/// });
/// ```
/// This will produce the following JSON representation of parameters:
/// ```json
/// {
///   "$id": { "type": "Int64", "value": 1 },
///   "$name": { "type": "Optional", "value": null }
/// }
/// ```
class QueryParameters {
  final Map<String, IYdbValue> values;

  QueryParameters(this.values);

  factory QueryParameters.fromMap(Map<String, dynamic> map) {
    return QueryParameters(
      map.map(
        (String key, value) => MapEntry(_normalizeKey(key), value.toYdbValue()),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return values.map(
      (String key, IYdbValue value) => MapEntry(key, value.toJson()),
    );
  }

  static String _normalizeKey(String key) {
    // by contract, parameters ALWAYS start with $
    return key.startsWith(r'$') ? key : '\$$key';
  }
}

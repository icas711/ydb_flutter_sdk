import '../types/i_ydb_value.dart';

/// Query statistics (placeholder for Week 7).
typedef QueryStats = Map<String, dynamic>;

/// Column metadata from query result.
class ColumnMetadata {
  final String name;
  final String type;

  ColumnMetadata({
    required this.name,
    required this.type,
  });

  factory ColumnMetadata.fromJson(Map<String, dynamic> json) {
    return ColumnMetadata(
      name: json['name'] as String,
      type: json['type'] as String? ?? 'Unknown',
    );
  }

  @override
  String toString() => 'ColumnMetadata(name: $name, type: $type)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColumnMetadata &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          type == other.type;

  @override
  int get hashCode => name.hashCode ^ type.hashCode;
}

/// Result of a YQL query execution.
///
/// Contains the rows returned by the query and optional statistics.
class QueryResult {
  final List<Map<String, IYdbValue>> rows;
  final List<ColumnMetadata> columns;
  final QueryStats? stats;

  QueryResult(this.rows, this.columns, this.stats);

  /// Parse QueryResult from YDB JSON response.
  ///
  /// Expected response format:
  /// ```json
  /// {
  ///   "result_sets": [
  ///     {
  ///       "columns": [{"name": "id", "type": "Int64"}, ...],
  ///       "rows": [
  ///         {"id": {"value": "1"}, "name": {"value": "Alice"}},
  ///         ...
  ///       ]
  ///     }
  ///   ],
  ///   "stats": {...}
  /// }
  /// ```
  factory QueryResult.fromJson(Map<String, dynamic> json) {
    final List<Map<String, IYdbValue<dynamic>>> rows =
        <Map<String, IYdbValue>>[];
    final List<ColumnMetadata> columns = <ColumnMetadata>[];

    // Parse result_sets
    final List<dynamic>? resultSets = json['result_sets'] as List?;
    if (resultSets != null && resultSets.isNotEmpty) {
      final Map<String, dynamic> firstSet =
          resultSets[0] as Map<String, dynamic>;

      // Parse columns
      final List<dynamic>? columnsData = firstSet['columns'] as List?;
      if (columnsData != null) {
        for (final columnData in columnsData) {
          columns.add(
            ColumnMetadata.fromJson(columnData as Map<String, dynamic>),
          );
        }
      }

      final List<dynamic>? rowsData = firstSet['rows'] as List?;

      if (rowsData != null) {
        for (final rowData in rowsData) {
          final Map<String, dynamic> rowMap = rowData as Map<String, dynamic>;
          final Map<String, IYdbValue<dynamic>> parsedRow =
              <String, IYdbValue>{};

          for (final MapEntry<String, dynamic> entry in rowMap.entries) {
            final String columnName = entry.key;
            final Map<String, dynamic> valueData =
                entry.value as Map<String, dynamic>;

            try {
              parsedRow[columnName] = IYdbValue.fromJson(valueData);
            } catch (e) {
              // Skip columns that can't be parsed
              // TODO: Add logging in Week 7
            }
          }

          rows.add(parsedRow);
        }
      }
    }

    return QueryResult(
      rows,
      columns,
      json['stats'] as QueryStats?,
    );
  }

  /// Whether the result is empty (no rows).
  bool get isEmpty => rows.isEmpty;

  /// Whether the result contains rows.
  bool get isNotEmpty => rows.isNotEmpty;

  /// Number of rows in the result.
  int get length => rows.length;

  /// Map each row to a value using the provided mapper function.
  ///
  /// Example:
  /// ```dart
  /// final users = result.map((row) => User(
  ///   id: row.getInt('id')!,
  ///   name: row.getString('name')!,
  /// ));
  /// ```
  List<T> map<T>(T Function(Map<String, IYdbValue>) mapper) {
    return rows.map(mapper).toList();
  }

  /// Return single row mapped to a value, or throw if result contains != 1 row.
  ///
  /// Example:
  /// ```dart
  /// final user = result.single((row) => User(
  ///   id: row.getInt('id')!,
  ///   name: row.getString('name')!,
  /// ));
  /// ```
  T single<T>(T Function(Map<String, IYdbValue>) mapper) {
    if (rows.isEmpty) {
      throw StateError('Result is empty, expected exactly one row');
    }
    if (rows.length > 1) {
      throw StateError(
          'Result contains ${rows.length} rows, expected exactly one');
    }
    return mapper(rows.first);
  }

  /// Return first row mapped to a value, or null if result is empty.
  ///
  /// Example:
  /// ```dart
  /// final user = result.firstOrNull((row) => User(
  ///   id: row.getInt('id')!,
  ///   name: row.getString('name')!,
  /// ));
  /// ```
  T? firstOrNull<T>(T Function(Map<String, IYdbValue>) mapper) {
    if (rows.isEmpty) {
      return null;
    }
    return mapper(rows.first);
  }

  @override
  String toString() => 'QueryResult(rows: ${rows.length})';
}

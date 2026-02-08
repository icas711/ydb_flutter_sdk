import 'table_description.dart';

/// Settings for altering a table.
class AlterTableSettings {
  /// Columns to add to the table.
  final List<ColumnDefinition> addColumns;

  /// Names of columns to drop from the table.
  final List<String> dropColumns;

  /// Indexes to add to the table.
  final List<IndexDescription> addIndexes;

  /// Names of indexes to drop from the table.
  final List<String> dropIndexes;

  const AlterTableSettings({
    this.addColumns = const <ColumnDefinition>[],
    this.dropColumns = const <String>[],
    this.addIndexes = const <IndexDescription>[],
    this.dropIndexes = const <String>[],
  });

  /// Converts this [AlterTableSettings] to a JSON map.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (addColumns.isNotEmpty)
        'add_columns':
            addColumns.map((ColumnDefinition c) => c.toJson()).toList(),
      if (dropColumns.isNotEmpty) 'drop_columns': dropColumns,
      if (addIndexes.isNotEmpty)
        'add_indexes':
            addIndexes.map((IndexDescription i) => i.toJson()).toList(),
      if (dropIndexes.isNotEmpty) 'drop_indexes': dropIndexes,
    };
  }
}

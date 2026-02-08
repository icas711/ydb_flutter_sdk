/// Describes the structure of a YDB table.
class TableDescription {
  /// The name of the table.
  final String name;

  /// The columns of the table.
  final List<ColumnDefinition> columns;

  /// The names of the primary key columns.
  final List<String> primaryKey;

  /// The indexes on the table.
  final List<IndexDescription> indexes;

  const TableDescription({
    required this.name,
    required this.columns,
    required this.primaryKey,
    this.indexes = const <IndexDescription>[],
  });

  /// Creates a [TableDescription] from a JSON map.
  factory TableDescription.fromJson(Map<String, dynamic> json) {
    return TableDescription(
      name: json['name'] as String? ?? '',
      columns: (json['columns'] as List<dynamic>?)
              ?.map((e) => ColumnDefinition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          <ColumnDefinition>[],
      primaryKey: (json['primary_key'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          <String>[],
      indexes: (json['indexes'] as List<dynamic>?)
              ?.map((e) => IndexDescription.fromJson(e as Map<String, dynamic>))
              .toList() ??
          <IndexDescription>[],
    );
  }

  /// Converts this [TableDescription] to a JSON map.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'columns': columns.map((ColumnDefinition c) => c.toJson()).toList(),
      'primary_key': primaryKey,
      if (indexes.isNotEmpty)
        'indexes': indexes.map((IndexDescription i) => i.toJson()).toList(),
    };
  }
}

/// Defines a column in a YDB table.
class ColumnDefinition {
  /// The name of the column.
  final String name;

  /// The YDB type of the column (e.g., 'Int64', 'Utf8', 'Bool').
  final String type;

  /// Whether the column is nullable.
  final bool nullable;

  const ColumnDefinition({
    required this.name,
    required this.type,
    this.nullable = true,
  });

  /// Creates a [ColumnDefinition] from a JSON map.
  factory ColumnDefinition.fromJson(Map<String, dynamic> json) {
    return ColumnDefinition(
      name: json['name'] as String,
      type: json['type'] as String,
      nullable: json['nullable'] as bool? ?? true,
    );
  }

  /// Converts this [ColumnDefinition] to a JSON map.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'nullable': nullable,
    };
  }

  @override
  String toString() =>
      'ColumnDefinition(name: $name, type: $type, nullable: $nullable)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColumnDefinition &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          type == other.type &&
          nullable == other.nullable;

  @override
  int get hashCode => Object.hash(name, type, nullable);
}

/// Describes an index on a YDB table.
class IndexDescription {
  /// The name of the index.
  final String name;

  /// The columns included in the index.
  final List<String> columns;

  /// The type of index (e.g., 'global', 'local').
  final String type;

  const IndexDescription({
    required this.name,
    required this.columns,
    this.type = 'global',
  });

  /// Creates an [IndexDescription] from a JSON map.
  factory IndexDescription.fromJson(Map<String, dynamic> json) {
    return IndexDescription(
      name: json['name'] as String,
      columns:
          (json['columns'] as List<dynamic>).map((e) => e as String).toList(),
      type: json['type'] as String? ?? 'global',
    );
  }

  /// Converts this [IndexDescription] to a JSON map.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'columns': columns,
      'type': type,
    };
  }

  @override
  String toString() =>
      'IndexDescription(name: $name, columns: $columns, type: $type)';
}

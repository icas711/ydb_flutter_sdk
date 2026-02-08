import '../transport/i_ydb_transport.dart';
import 'alter_table_settings.dart';
import 'table_description.dart';

/// Client for performing DDL (Data Definition Language) operations on YDB.
///
/// Provides methods for creating, altering, dropping, and describing tables.
///
/// Example:
/// ```dart
/// final client = SchemeClient(transport: transport, database: '/local');
///
/// // Create a table
/// await client.createTable(
///   'users',
///   TableDescription(
///     name: 'users',
///     columns: [
///       ColumnDefinition(name: 'id', type: 'Int64', nullable: false),
///       ColumnDefinition(name: 'name', type: 'Utf8'),
///     ],
///     primaryKey: ['id'],
///   ),
/// );
///
/// // Describe a table
/// final description = await client.describeTable('users');
/// print(description.columns);
///
/// // Drop a table
/// await client.dropTable('users');
/// ```
class SchemeClient {
  final IYdbTransport _transport;
  final String _database;

  SchemeClient({
    required IYdbTransport transport,
    required String database,
  })  : _transport = transport,
        _database = database;

  /// Creates a new table with the specified structure.
  ///
  /// [path] is the table name or full path (e.g., 'users' or '/local/users').
  /// [description] defines the table structure including columns and primary key.
  ///
  /// Throws [YdbException] if the operation fails.
  ///
  /// Example:
  /// ```dart
  /// await client.createTable(
  ///   'users',
  ///   TableDescription(
  ///     name: 'users',
  ///     columns: [
  ///       ColumnDefinition(name: 'id', type: 'Int64', nullable: false),
  ///       ColumnDefinition(name: 'name', type: 'Utf8'),
  ///       ColumnDefinition(name: 'email', type: 'Utf8'),
  ///     ],
  ///     primaryKey: ['id'],
  ///   ),
  /// );
  /// ```
  Future<void> createTable(String path, TableDescription description) async {
    final String fullPath = _getFullPath(path);

    final Map<String, dynamic> body = <String, dynamic>{
      'path': fullPath,
      'columns':
          description.columns.map((ColumnDefinition c) => c.toJson()).toList(),
      'primary_key': description.primaryKey,
    };

    if (description.indexes.isNotEmpty) {
      body['indexes'] =
          description.indexes.map((IndexDescription i) => i.toJson()).toList();
    }

    await _transport.send<void>(
      endpoint: '/scheme/v1/create_table',
      body: body,
      decoder: (_) {},
    );
  }

  /// Alters an existing table structure.
  ///
  /// [path] is the table name or full path.
  /// [settings] specifies the changes to apply (add/drop columns or indexes).
  ///
  /// Throws [YdbException] if the operation fails.
  ///
  /// Example:
  /// ```dart
  /// await client.alterTable(
  ///   'users',
  ///   AlterTableSettings(
  ///     addColumns: [
  ///       ColumnDefinition(name: 'age', type: 'Int32'),
  ///     ],
  ///     dropColumns: ['email'],
  ///   ),
  /// );
  /// ```
  Future<void> alterTable(String path, AlterTableSettings settings) async {
    final String fullPath = _getFullPath(path);

    final Map<String, dynamic> body = <String, dynamic>{
      'path': fullPath,
      ...settings.toJson(),
    };

    await _transport.send<void>(
      endpoint: '/scheme/v1/alter_table',
      body: body,
      decoder: (_) {},
    );
  }

  /// Drops (deletes) an existing table.
  ///
  /// [path] is the table name or full path.
  ///
  /// Throws [YdbException] if the operation fails.
  ///
  /// Example:
  /// ```dart
  /// await client.dropTable('users');
  /// ```
  Future<void> dropTable(String path) async {
    final String fullPath = _getFullPath(path);

    await _transport.send<void>(
      endpoint: '/scheme/v1/drop_table',
      body: <String, String>{'path': fullPath},
      decoder: (_) {},
    );
  }

  /// Retrieves the structure of an existing table.
  ///
  /// [path] is the table name or full path.
  ///
  /// Returns a [TableDescription] with the table structure.
  ///
  /// Throws [YdbException] if the operation fails.
  ///
  /// Example:
  /// ```dart
  /// final description = await client.describeTable('users');
  /// for (final column in description.columns) {
  ///   print('${column.name}: ${column.type}');
  /// }
  /// ```
  Future<TableDescription> describeTable(String path) async {
    final String fullPath = _getFullPath(path);

    final Map<String, dynamic> result =
        await _transport.send<Map<String, dynamic>>(
      endpoint: '/scheme/v1/describe_table',
      body: <String, String>{'path': fullPath},
      decoder: (Object? response) => response as Map<String, dynamic>,
    );

    return TableDescription.fromJson(result);
  }

  /// Converts a relative path to a full database path.
  String _getFullPath(String path) {
    if (path.startsWith('/')) {
      return path;
    }
    return '$_database/$path';
  }
}

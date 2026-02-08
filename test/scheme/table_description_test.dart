import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/scheme/scheme.dart';

void main() {
  group('TableDescription', () {
    test('creates table description', () {
      final TableDescription table = TableDescription(
        name: 'users',
        columns: <ColumnDefinition>[
          ColumnDefinition(name: 'id', type: 'Int64', nullable: false),
          ColumnDefinition(name: 'name', type: 'Utf8'),
        ],
        primaryKey: <String>['id'],
      );

      expect(table.name, 'users');
      expect(table.columns.length, 2);
      expect(table.primaryKey, <String>['id']);
      expect(table.indexes, isEmpty);
    });

    test('creates from JSON', () {
      final Map<String, Object> json = <String, Object>{
        'name': 'users',
        'columns': <Map<String, Object>>[
          <String, Object>{'name': 'id', 'type': 'Int64', 'nullable': false},
          <String, Object>{'name': 'name', 'type': 'Utf8', 'nullable': true},
        ],
        'primary_key': <String>['id'],
      };

      final TableDescription table = TableDescription.fromJson(json);

      expect(table.name, 'users');
      expect(table.columns.length, 2);
      expect(table.columns[0].name, 'id');
      expect(table.columns[0].nullable, false);
      expect(table.primaryKey, <String>['id']);
    });

    test('converts to JSON', () {
      final TableDescription table = TableDescription(
        name: 'users',
        columns: <ColumnDefinition>[
          ColumnDefinition(name: 'id', type: 'Int64', nullable: false),
        ],
        primaryKey: <String>['id'],
      );

      final Map<String, dynamic> json = table.toJson();

      expect(json['name'], 'users');
      expect(json['columns'], isA<List>());
      expect(json['primary_key'], <String>['id']);
    });

    test('handles indexes', () {
      final TableDescription table = TableDescription(
        name: 'users',
        columns: <ColumnDefinition>[
          ColumnDefinition(name: 'id', type: 'Int64', nullable: false),
          ColumnDefinition(name: 'email', type: 'Utf8'),
        ],
        primaryKey: <String>['id'],
        indexes: <IndexDescription>[
          IndexDescription(name: 'email_idx', columns: <String>['email']),
        ],
      );

      expect(table.indexes.length, 1);
      expect(table.indexes[0].name, 'email_idx');
    });
  });

  group('ColumnDefinition', () {
    test('creates column definition', () {
      final ColumnDefinition column =
          ColumnDefinition(name: 'id', type: 'Int64', nullable: false);

      expect(column.name, 'id');
      expect(column.type, 'Int64');
      expect(column.nullable, false);
    });

    test('defaults to nullable', () {
      final ColumnDefinition column =
          ColumnDefinition(name: 'name', type: 'Utf8');

      expect(column.nullable, true);
    });

    test('creates from JSON', () {
      final Map<String, Object> json = <String, Object>{
        'name': 'id',
        'type': 'Int64',
        'nullable': false
      };
      final ColumnDefinition column = ColumnDefinition.fromJson(json);

      expect(column.name, 'id');
      expect(column.type, 'Int64');
      expect(column.nullable, false);
    });

    test('converts to JSON', () {
      final ColumnDefinition column =
          ColumnDefinition(name: 'id', type: 'Int64', nullable: false);
      final Map<String, dynamic> json = column.toJson();

      expect(json['name'], 'id');
      expect(json['type'], 'Int64');
      expect(json['nullable'], false);
    });

    test('equality works', () {
      final ColumnDefinition column1 =
          ColumnDefinition(name: 'id', type: 'Int64', nullable: false);
      final ColumnDefinition column2 =
          ColumnDefinition(name: 'id', type: 'Int64', nullable: false);
      final ColumnDefinition column3 =
          ColumnDefinition(name: 'name', type: 'Utf8');

      expect(column1, equals(column2));
      expect(column1, isNot(equals(column3)));
    });

    test('hashCode is consistent', () {
      final ColumnDefinition column1 =
          ColumnDefinition(name: 'id', type: 'Int64', nullable: false);
      final ColumnDefinition column2 =
          ColumnDefinition(name: 'id', type: 'Int64', nullable: false);

      expect(column1.hashCode, equals(column2.hashCode));
    });

    test('toString returns readable format', () {
      final ColumnDefinition column =
          ColumnDefinition(name: 'id', type: 'Int64', nullable: false);
      expect(column.toString(),
          'ColumnDefinition(name: id, type: Int64, nullable: false)');
    });
  });

  group('IndexDescription', () {
    test('creates index description', () {
      final IndexDescription index =
          IndexDescription(name: 'email_idx', columns: <String>['email']);

      expect(index.name, 'email_idx');
      expect(index.columns, <String>['email']);
      expect(index.type, 'global');
    });

    test('creates from JSON', () {
      final Map<String, Object> json = <String, Object>{
        'name': 'email_idx',
        'columns': <String>['email'],
        'type': 'local',
      };
      final IndexDescription index = IndexDescription.fromJson(json);

      expect(index.name, 'email_idx');
      expect(index.columns, <String>['email']);
      expect(index.type, 'local');
    });

    test('converts to JSON', () {
      final IndexDescription index = IndexDescription(
          name: 'email_idx', columns: <String>['email', 'created_at']);
      final Map<String, dynamic> json = index.toJson();

      expect(json['name'], 'email_idx');
      expect(json['columns'], <String>['email', 'created_at']);
      expect(json['type'], 'global');
    });

    test('toString returns readable format', () {
      final IndexDescription index =
          IndexDescription(name: 'email_idx', columns: <String>['email']);
      expect(index.toString(),
          'IndexDescription(name: email_idx, columns: [email], type: global)');
    });
  });

  group('AlterTableSettings', () {
    test('creates empty settings', () {
      final AlterTableSettings settings = AlterTableSettings();

      expect(settings.addColumns, isEmpty);
      expect(settings.dropColumns, isEmpty);
      expect(settings.addIndexes, isEmpty);
      expect(settings.dropIndexes, isEmpty);
    });

    test('creates with add columns', () {
      final AlterTableSettings settings = AlterTableSettings(
        addColumns: <ColumnDefinition>[
          ColumnDefinition(name: 'age', type: 'Int32'),
        ],
      );

      expect(settings.addColumns.length, 1);
      expect(settings.addColumns[0].name, 'age');
    });

    test('creates with drop columns', () {
      final AlterTableSettings settings = AlterTableSettings(
        dropColumns: <String>['email'],
      );

      expect(settings.dropColumns, <String>['email']);
    });

    test('converts to JSON with all fields', () {
      final AlterTableSettings settings = AlterTableSettings(
        addColumns: <ColumnDefinition>[
          ColumnDefinition(name: 'age', type: 'Int32'),
        ],
        dropColumns: <String>['email'],
        addIndexes: <IndexDescription>[
          IndexDescription(name: 'age_idx', columns: <String>['age']),
        ],
        dropIndexes: <String>['email_idx'],
      );

      final Map<String, dynamic> json = settings.toJson();

      expect(json['add_columns'], isA<List>());
      expect(json['drop_columns'], <String>['email']);
      expect(json['add_indexes'], isA<List>());
      expect(json['drop_indexes'], <String>['email_idx']);
    });

    test('converts to JSON without empty fields', () {
      final AlterTableSettings settings = AlterTableSettings(
        addColumns: <ColumnDefinition>[
          ColumnDefinition(name: 'age', type: 'Int32'),
        ],
      );

      final Map<String, dynamic> json = settings.toJson();

      expect(json.containsKey('add_columns'), true);
      expect(json.containsKey('drop_columns'), false);
      expect(json.containsKey('add_indexes'), false);
      expect(json.containsKey('drop_indexes'), false);
    });
  });
}

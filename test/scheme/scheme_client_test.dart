import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/scheme/scheme.dart';
import 'package:ydb_flutter_sdk/src/transport/i_ydb_transport.dart';

class MockSchemeTransport implements IYdbTransport {
  final Map<String, dynamic> _responses = <String, dynamic>{};
  final List<Map<String, dynamic>> _requests = <Map<String, dynamic>>[];

  void mockResponse(String endpoint, Map<String, dynamic> response) {
    _responses[endpoint] = response;
  }

  List<Map<String, dynamic>> get requests => _requests;

  @override
  Future<T> send<T>({
    required String endpoint,
    required Object? body,
    required T Function(dynamic) decoder,
    Map<String, String>? headers,
  }) async {
    _requests.add(<String, dynamic>{
      'endpoint': endpoint,
      'body': body,
    });

    final response = _responses[endpoint];
    if (response == null) {
      return decoder(null);
    }
    return decoder(response);
  }

  @override
  Future<void> initialize() async {}

  @override
  Future<void> close() async {}
}

void main() {
  group('SchemeClient', () {
    late MockSchemeTransport transport;
    late SchemeClient client;

    setUp(() {
      transport = MockSchemeTransport();
      client = SchemeClient(transport: transport, database: '/local');
    });

    group('createTable', () {
      test('sends correct request', () async {
        await client.createTable(
          'users',
          TableDescription(
            name: 'users',
            columns: <ColumnDefinition>[
              ColumnDefinition(name: 'id', type: 'Int64', nullable: false),
              ColumnDefinition(name: 'name', type: 'Utf8'),
            ],
            primaryKey: <String>['id'],
          ),
        );

        expect(transport.requests.length, 1);
        final Map<String, dynamic> request = transport.requests[0];
        expect(request['endpoint'], '/scheme/v1/create_table');
        expect(request['body']['path'], '/local/users');
        expect(request['body']['columns'], isA<List>());
        expect(request['body']['primary_key'], <String>['id']);
      });

      test('handles full path', () async {
        await client.createTable(
          '/custom/path/users',
          TableDescription(
            name: 'users',
            columns: <ColumnDefinition>[
              ColumnDefinition(name: 'id', type: 'Int64', nullable: false),
            ],
            primaryKey: <String>['id'],
          ),
        );

        final Map<String, dynamic> request = transport.requests[0];
        expect(request['body']['path'], '/custom/path/users');
      });

      test('includes indexes when provided', () async {
        await client.createTable(
          'users',
          TableDescription(
            name: 'users',
            columns: <ColumnDefinition>[
              ColumnDefinition(name: 'id', type: 'Int64', nullable: false),
              ColumnDefinition(name: 'email', type: 'Utf8'),
            ],
            primaryKey: <String>['id'],
            indexes: <IndexDescription>[
              IndexDescription(name: 'email_idx', columns: <String>['email']),
            ],
          ),
        );

        final Map<String, dynamic> request = transport.requests[0];
        expect(request['body']['indexes'], isA<List>());
        expect(request['body']['indexes'].length, 1);
      });
    });

    group('alterTable', () {
      test('sends correct request', () async {
        await client.alterTable(
          'users',
          AlterTableSettings(
            addColumns: <ColumnDefinition>[
              ColumnDefinition(name: 'age', type: 'Int32'),
            ],
            dropColumns: <String>['email'],
          ),
        );

        expect(transport.requests.length, 1);
        final Map<String, dynamic> request = transport.requests[0];
        expect(request['endpoint'], '/scheme/v1/alter_table');
        expect(request['body']['path'], '/local/users');
        expect(request['body']['add_columns'], isA<List>());
        expect(request['body']['drop_columns'], <String>['email']);
      });

      test('handles full path', () async {
        await client.alterTable(
          '/custom/path/users',
          AlterTableSettings(),
        );

        final Map<String, dynamic> request = transport.requests[0];
        expect(request['body']['path'], '/custom/path/users');
      });
    });

    group('dropTable', () {
      test('sends correct request', () async {
        await client.dropTable('users');

        expect(transport.requests.length, 1);
        final Map<String, dynamic> request = transport.requests[0];
        expect(request['endpoint'], '/scheme/v1/drop_table');
        expect(request['body']['path'], '/local/users');
      });

      test('handles full path', () async {
        await client.dropTable('/custom/path/users');

        final Map<String, dynamic> request = transport.requests[0];
        expect(request['body']['path'], '/custom/path/users');
      });
    });

    group('describeTable', () {
      test('sends correct request and parses response', () async {
        transport.mockResponse('/scheme/v1/describe_table', <String, dynamic>{
          'name': 'users',
          'columns': <Map<String, Object>>[
            <String, Object>{'name': 'id', 'type': 'Int64', 'nullable': false},
            <String, Object>{'name': 'name', 'type': 'Utf8', 'nullable': true},
          ],
          'primary_key': <String>['id'],
        });

        final TableDescription description =
            await client.describeTable('users');

        expect(transport.requests.length, 1);
        final Map<String, dynamic> request = transport.requests[0];
        expect(request['endpoint'], '/scheme/v1/describe_table');
        expect(request['body']['path'], '/local/users');

        expect(description.name, 'users');
        expect(description.columns.length, 2);
        expect(description.columns[0].name, 'id');
        expect(description.columns[0].nullable, false);
        expect(description.primaryKey, <String>['id']);
      });

      test('handles full path', () async {
        transport.mockResponse('/scheme/v1/describe_table', <String, dynamic>{
          'name': 'users',
          'columns': <dynamic>[],
          'primary_key': <dynamic>[],
        });

        await client.describeTable('/custom/path/users');

        final Map<String, dynamic> request = transport.requests[0];
        expect(request['body']['path'], '/custom/path/users');
      });

      test('parses indexes', () async {
        transport.mockResponse('/scheme/v1/describe_table', <String, dynamic>{
          'name': 'users',
          'columns': <Map<String, Object>>[
            <String, Object>{'name': 'id', 'type': 'Int64', 'nullable': false},
            <String, Object>{'name': 'email', 'type': 'Utf8', 'nullable': true},
          ],
          'primary_key': <String>['id'],
          'indexes': <Map<String, Object>>[
            <String, Object>{
              'name': 'email_idx',
              'columns': <String>['email'],
              'type': 'global',
            }
          ],
        });

        final TableDescription description =
            await client.describeTable('users');

        expect(description.indexes.length, 1);
        expect(description.indexes[0].name, 'email_idx');
        expect(description.indexes[0].columns, <String>['email']);
      });
    });
  });
}

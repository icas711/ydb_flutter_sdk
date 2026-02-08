// ignore_for_file: avoid_print

import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

/// Basic CRUD example demonstrating:
/// - Table creation (DDL)
/// - INSERT operations
/// - SELECT queries
/// - UPDATE operations
/// - DELETE operations
void main() async {
  // Configure YDB connection
  final DriverConfig config = DriverConfig(
    endpoint: 'grpcs://ydb.serverless.yandexcloud.net:2135',
    database: '/ru-central1/b1gia87mbaomfr7aac2a/etnudu2n9ri35e0kgp4a',
    credentials:
        YdbCredentials.anonymous(), // Replace with appropriate credentials
  );

  final YdbDriver driver = YdbDriver(config);

  try {
    // Initialize the driver
    print('Connecting to YDB...');
    await driver.initialize();
    print('✓ Connected successfully\n');

    // 1. CREATE TABLE
    print('1. Creating table "users"...');
    await driver.schemeClient.createTable(
      'users',
      TableDescription(
        name: 'users',
        columns: <ColumnDefinition>[
          ColumnDefinition(name: 'id', type: 'Int64', nullable: false),
          ColumnDefinition(name: 'name', type: 'Utf8', nullable: false),
          ColumnDefinition(name: 'email', type: 'Utf8', nullable: true),
          ColumnDefinition(name: 'age', type: 'Int32', nullable: true),
        ],
        primaryKey: <String>['id'],
      ),
    );
    print('✓ Table created\n');

    // 2. INSERT data
    print('2. Inserting users...');
    await driver.queryClient.execute('''
      INSERT INTO users (id, name, email, age) VALUES 
        (1, 'Alice', 'alice@example.com', 30),
        (2, 'Bob', 'bob@example.com', 25),
        (3, 'Charlie', null, 35)
      ''');
    print('✓ Users inserted\n');

    // 3. SELECT all users
    print('3. Selecting all users...');
    QueryResult result = await driver.queryClient.execute(
      'SELECT * FROM users ORDER BY id',
    );
    print('Found ${result.rows.length} users:');
    for (final Map<String, IYdbValue> row in result.rows) {
      final int? id = row.getInt('id');
      final String? name = row.getString('name');
      final String? email = row.getString('email');
      final int? age = row.getInt('age');
      print('  - ID: $id, Name: $name, Email: $email, Age: $age');
    }
    print('');

    // 4. SELECT with parameters
    print('4. Selecting user with ID = 2...');
    result = await driver.queryClient.execute(
      'SELECT * FROM users WHERE id = \$id',
      parameters: <String, IYdbValue>{'id': YdbInt64(2)},
    );
    if (result.rows.isNotEmpty) {
      final Map<String, IYdbValue> row = result.rows.first;
      print('  Found: ${row.getString('name')} (${row.getString('email')})');
    }
    print('');

    // 5. UPDATE user
    print('5. Updating user age...');
    await driver.queryClient.execute(
      'UPDATE users SET age = \$age WHERE id = \$id',
      parameters: <String, IYdbValue>{'id': YdbInt64(1), 'age': YdbInt32(31)},
    );
    print('✓ User updated\n');

    // 6. Verify UPDATE
    print('6. Verifying update...');
    result = await driver.queryClient.execute(
      'SELECT name, age FROM users WHERE id = 1',
    );
    if (result.rows.isNotEmpty) {
      final Map<String, IYdbValue> row = result.rows.first;
      print('  ${row.getString('name')} is now ${row.getInt('age')} years old');
    }
    print('');

    // 7. DELETE user
    print('7. Deleting user with ID = 3...');
    await driver.queryClient.execute(
      'DELETE FROM users WHERE id = \$id',
      parameters: <String, IYdbValue>{'id': YdbInt64(3)},
    );
    print('✓ User deleted\n');

    // 8. Verify DELETE
    print('8. Verifying deletion...');
    result = await driver.queryClient.execute(
      'SELECT COUNT(*) as count FROM users',
    );
    if (result.rows.isNotEmpty) {
      final int? count = result.rows.first.getInt('count');
      print('  Remaining users: $count');
    }
    print('');

    // 9. DROP TABLE (cleanup)
    print('9. Dropping table...');
    await driver.schemeClient.dropTable('users');
    print('✓ Table dropped\n');

    print('✓ CRUD example completed successfully!');
  } catch (e, stackTrace) {
    print('✗ Error occurred: $e');
    print(stackTrace);
  } finally {
    // Always close the driver
    await driver.close();
    print('\n✓ Connection closed');
  }
}

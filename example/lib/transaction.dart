// ignore_for_file: avoid_print

import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

/// Transaction example demonstrating:
/// - Money transfer between accounts
/// - Database operations within transactions
/// - Transaction isolation
///
/// Note: This is a simplified example. Full transaction support with
/// SessionPool.executeInTransaction() will be available in a future update.
void main() async {
  // Configure YDB connection
  final DriverConfig config = DriverConfig(
    endpoint: 'grpcs://ydb.serverless.yandexcloud.net:2135',
    database: '/ru-central1/b1.....',
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
    print('1. Creating table "accounts"...');
    await driver.schemeClient.createTable(
      'accounts',
      TableDescription(
        name: 'accounts',
        columns: <ColumnDefinition>[
          ColumnDefinition(name: 'id', type: 'Int64', nullable: false),
          ColumnDefinition(name: 'owner', type: 'Utf8', nullable: false),
          ColumnDefinition(name: 'balance', type: 'Double', nullable: false),
        ],
        primaryKey: <String>['id'],
      ),
    );
    print('✓ Table created\n');

    // 2. INSERT initial data
    print('2. Creating accounts...');
    await driver.queryClient.execute('''
      INSERT INTO accounts (id, owner, balance) VALUES 
        (1, 'Galina', 1000.0),
        (2, 'Bob', 500.0)
      ''');
    print('✓ Accounts created\n');

    // 3. Show initial balances
    print('3. Initial balances:');
    await _showBalances(driver);
    print('');

    // 4. Transfer money
    const double transferAmount = 250.0;
    print('4. Transferring \$$transferAmount from Galina to Bob...');

    // Check Galina's balance
    final QueryResult galinaResult = await driver.queryClient.execute(
      'SELECT balance FROM accounts WHERE id = \$id',
      parameters: <String, IYdbValue>{'id': YdbInt64(1)},
    );

    if (galinaResult.rows.isEmpty) {
      throw Exception('Account not found');
    }

    final double? galinaBalance = galinaResult.rows.first.getDouble('balance');
    if (galinaBalance == null || galinaBalance < transferAmount) {
      throw Exception('Insufficient funds');
    }

    // Withdraw from Galina
    await driver.queryClient.execute(
      'UPDATE accounts SET balance = balance - \$amount WHERE id = \$id',
      parameters: <String, IYdbValue>{
        'id': YdbInt64(1),
        'amount': YdbDouble(transferAmount),
      },
    );
    print('  ✓ Withdrawn \$$transferAmount from Galina');

    // Deposit to Bob
    await driver.queryClient.execute(
      'UPDATE accounts SET balance = balance + \$amount WHERE id = \$id',
      parameters: <String, IYdbValue>{
        'id': YdbInt64(2),
        'amount': YdbDouble(transferAmount),
      },
    );
    print('  ✓ Deposited \$$transferAmount to Bob');
    print('✓ Transfer completed successfully\n');

    // 5. Show final balances
    print('5. Final balances:');
    await _showBalances(driver);
    print('');

    // 6. Calculate total money in system
    print('6. Total money in system:');
    final QueryResult totalResult = await driver.queryClient.execute(
      'SELECT SUM(balance) as total FROM accounts',
    );

    if (totalResult.rows.isNotEmpty) {
      final double? total = totalResult.rows.first.getDouble('total');
      print('  Total: \$$total');
    }
    print('');

    // Cleanup
    print('7. Dropping table...');
    await driver.schemeClient.dropTable('accounts');
    print('✓ Table dropped\n');

    print('✓ Transaction example completed successfully!');
    print(
      '\nNote: This example shows basic queries. For full ACID transactions',
    );
    print(
      'with automatic commit/rollback, use SessionPool.executeInTransaction()',
    );
  } catch (e, stackTrace) {
    print('✗ Error occurred: $e');
    print(stackTrace);
  } finally {
    // Always close the driver
    await driver.close();
    print('\n✓ Connection closed');
  }
}

/// Helper function to display account balances
Future<void> _showBalances(YdbDriver driver) async {
  final QueryResult result = await driver.queryClient.execute(
    'SELECT id, owner, balance FROM accounts ORDER BY id',
  );

  for (final Map<String, IYdbValue> row in result.rows) {
    final int? id = row.getInt('id');
    final String? owner = row.getString('owner');
    final double? balance = row.getDouble('balance');
    print('  Account $id ($owner): \$$balance');
  }
}

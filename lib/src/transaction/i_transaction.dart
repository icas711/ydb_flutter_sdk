import 'transaction_mode.dart';

abstract class ITransaction {
  TransactionMode get mode;

  Future<void> commit();
  Future<void> rollback();
}

import 'transaction_mode.dart';

class TransactionDescriptor {
  final String? id;
  final TransactionMode mode;

  TransactionDescriptor({required this.mode, this.id});

  Map<String, dynamic> toJson() => <String, dynamic>{
    'mode': _modeToWire(mode),
    'id': id,
  };

  static String _modeToWire(TransactionMode mode) {
    switch (mode) {
      case TransactionMode.serializableReadWrite:
        return 'serializable_read_write';
      case TransactionMode.onlineReadOnly:
        return 'online_read_only';
      case TransactionMode.staleReadOnly:
        return 'stale_read_only';
    }
  }
}

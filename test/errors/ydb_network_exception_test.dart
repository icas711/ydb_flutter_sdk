import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/errors/ydb_network_exception.dart';

void main() {
  test('detects timeout', () {
    final YdbNetworkException error = YdbNetworkException(
      'Request timeout',
    );

    expect(error.isTimeout, isTrue);
  });

  test('non-timeout message', () {
    final YdbNetworkException error = YdbNetworkException(
      'Connection refused',
    );

    expect(error.isTimeout, isFalse);
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/errors/ydb_client_exception.dart';

void main() {
  test('creates client exception', () {
    final YdbClientException error = YdbClientException('Invalid query');

    expect(error.message, 'Invalid query');
    expect(error, isA<Exception>());
  });
}

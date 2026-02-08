import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/errors/errors.dart';
import 'package:ydb_flutter_sdk/src/retry/retry.dart';

import '../helpers/mock_transport.dart';

void main() {
  test('retries aborted and succeeds', () async {
    final MockTransport transport = MockTransport();

    transport
      ..whenRequest('/query')
      ..thenThrow(YdbStatusException(
        status: YdbStatusCode.aborted,
        message: 'conflict',
      ))
      ..thenRespond(<String, String>{'status': 'success'});

    final RetryExecutor executor = RetryExecutor(
      policy: YdbRetryPolicy(maxRetries: 2),
    );

    final Map<String, dynamic> result = await executor.execute(() async {
      return transport.send<Map<String, dynamic>>(
        endpoint: '/query',
        body: <dynamic, dynamic>{},
        decoder: (Object? json) => json as Map<String, dynamic>,
      );
    });

    expect(result['status'], 'success');
  });
}

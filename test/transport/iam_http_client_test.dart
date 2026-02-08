import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/transport/http/iam_http_client.dart';

void main() {
  group('IamHttpClient', () {
    test('creates client with baseUrl', () {
      final client = IamHttpClient(
        baseUrl: 'https://iam.api.cloud.yandex.net',
      );

      expect(client, isNotNull);
      expect(client.baseUrl, equals('https://iam.api.cloud.yandex.net'));
      expect(client.timeout, equals(const Duration(seconds: 10)));
    });

    test('creates client with custom timeout', () {
      final client = IamHttpClient(
        baseUrl: 'https://iam.api.cloud.yandex.net',
        timeout: const Duration(seconds: 30),
      );

      expect(client.timeout, equals(const Duration(seconds: 30)));
    });

    test('can initialize and close', () async {
      final client = IamHttpClient(
        baseUrl: 'https://iam.api.cloud.yandex.net',
      );

      await client.initialize();
      await client.close();
    });

    test('can initialize multiple times', () async {
      final client = IamHttpClient(
        baseUrl: 'https://iam.api.cloud.yandex.net',
      );

      await client.initialize();
      await client.initialize(); // Should not throw
      await client.close();
    });
  });
}

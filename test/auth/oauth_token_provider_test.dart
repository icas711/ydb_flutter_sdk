import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/auth/iam_token.dart';
import 'package:ydb_flutter_sdk/src/auth/oauth_token_provider.dart';
import 'package:ydb_flutter_sdk/src/errors/errors.dart';

import '../helpers/mock_transport.dart';

void main() {
  group('OAuthTokenProvider', () {
    late MockTransport transport;
    late OAuthTokenProvider provider;
    const String testOAuthToken = 'test-oauth-token-12345';

    setUp(() {
      transport = MockTransport();
      provider = OAuthTokenProvider(
        oauthToken: testOAuthToken,
        transport: transport,
      );
    });

    group('Basic Exchange', () {
      test('exchanges OAuth token for IAM token', () async {
        final expiresAt = DateTime.utc(2026, 12, 31, 23, 59, 59);

        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenRespond({
            'iamToken': 'iam-token-abc123',
            'expiresAt': expiresAt.toIso8601String(),
          });

        final token = await provider.fetchToken();

        expect(token, isA<IamToken>());
        expect(token.token, equals('iam-token-abc123'));
        expect(token.expiresAt, equals(expiresAt));
      });

      test('sends correct request body with yandexPassportOauthToken',
          () async {
        String? capturedEndpoint;
        Map<String, dynamic>? capturedBody;

        transport.captureRequest((endpoint, body) {
          capturedEndpoint = endpoint;
          capturedBody = body;
        });

        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenRespond({
            'iamToken': 'token',
            'expiresAt': DateTime.now().toIso8601String(),
          });

        await provider.fetchToken();

        expect(capturedEndpoint, equals('/iam/v1/tokens'));
        expect(capturedBody, isNotNull);
        expect(
            capturedBody!['yandexPassportOauthToken'], equals(testOAuthToken));
      });

      test('parses expiration date correctly', () async {
        // Test with different date formats
        final testCases = [
          DateTime.utc(2026, 1, 1, 0, 0, 0),
          DateTime.utc(2026, 6, 15, 12, 30, 45),
          DateTime.utc(2026, 12, 31, 23, 59, 59),
        ];

        for (final expectedDate in testCases) {
          transport
            ..whenRequest('/iam/v1/tokens')
            ..thenRespond({
              'iamToken': 'token-${expectedDate.millisecondsSinceEpoch}',
              'expiresAt': expectedDate.toIso8601String(),
            });

          final token = await provider.fetchToken();
          expect(token.expiresAt, equals(expectedDate),
              reason: 'Failed for date: $expectedDate');
        }
      });
    });

    group('Error Handling', () {
      test('handles IAM API 401 error', () async {
        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenThrowError('Unauthorized', statusCode: 401);

        expect(
          () => provider.fetchToken(),
          throwsA(isA<YdbClientException>()),
        );
      });

      test('handles IAM API 500 error', () async {
        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenThrowError('Internal Server Error', statusCode: 500);

        expect(
          () => provider.fetchToken(),
          throwsA(isA<YdbClientException>()),
        );
      });

      test('handles invalid response format (missing iamToken)', () async {
        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenRespond({
            // Missing 'iamToken' field
            'expiresAt': DateTime.now().toIso8601String(),
          });

        expect(
          () => provider.fetchToken(),
          throwsA(isA<TypeError>()),
        );
      });

      test('handles invalid response format (missing expiresAt)', () async {
        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenRespond({
            'iamToken': 'token-123',
            // Missing 'expiresAt' field
          });

        expect(
          () => provider.fetchToken(),
          throwsA(isA<TypeError>()),
        );
      });

      test('handles invalid date format in expiresAt', () async {
        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenRespond({
            'iamToken': 'token-123',
            'expiresAt': 'not-a-valid-date',
          });

        expect(
          () => provider.fetchToken(),
          throwsA(isA<FormatException>()),
        );
      });
    });

    group('Edge Cases', () {
      test('multiple fetches create independent tokens', () async {
        final expires1 = DateTime.utc(2026, 1, 1);
        final expires2 = DateTime.utc(2026, 2, 1);
        final expires3 = DateTime.utc(2026, 3, 1);

        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenRespond({
            'iamToken': 'token-1',
            'expiresAt': expires1.toIso8601String(),
          })
          ..thenRespond({
            'iamToken': 'token-2',
            'expiresAt': expires2.toIso8601String(),
          })
          ..thenRespond({
            'iamToken': 'token-3',
            'expiresAt': expires3.toIso8601String(),
          });

        final token1 = await provider.fetchToken();
        final token2 = await provider.fetchToken();
        final token3 = await provider.fetchToken();

        expect(token1.token, equals('token-1'));
        expect(token1.expiresAt, equals(expires1));

        expect(token2.token, equals('token-2'));
        expect(token2.expiresAt, equals(expires2));

        expect(token3.token, equals('token-3'));
        expect(token3.expiresAt, equals(expires3));
      });

      test('handles very short expiration times', () async {
        // Token expires in 1 second
        final expiresAt = DateTime.now().add(Duration(seconds: 1));

        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenRespond({
            'iamToken': 'short-lived-token',
            'expiresAt': expiresAt.toIso8601String(),
          });

        final token = await provider.fetchToken();

        expect(token.token, equals('short-lived-token'));
        expect(
            token.expiresAt.difference(DateTime.now()).inSeconds, lessThan(2));
      });

      test('handles tokens with very long expiration times', () async {
        // Token expires in 100 years
        final expiresAt = DateTime.now().add(Duration(days: 365 * 100));

        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenRespond({
            'iamToken': 'long-lived-token',
            'expiresAt': expiresAt.toIso8601String(),
          });

        final token = await provider.fetchToken();

        expect(token.token, equals('long-lived-token'));
        expect(token.expiresAt, equals(expiresAt));
      });

      test('handles empty OAuth token', () async {
        final emptyProvider = OAuthTokenProvider(
          oauthToken: '',
          transport: transport,
        );

        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenRespond({
            'iamToken': 'token-for-empty',
            'expiresAt': DateTime.now().toIso8601String(),
          });

        // Should work but may be rejected by real IAM API
        final token = await emptyProvider.fetchToken();
        expect(token.token, equals('token-for-empty'));
      });

      test('handles response with extra fields', () async {
        final expiresAt = DateTime.utc(2026, 12, 31);

        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenRespond({
            'iamToken': 'token-123',
            'expiresAt': expiresAt.toIso8601String(),
            'extraField1': 'should be ignored',
            'extraField2': 12345,
            'extraField3': {'nested': 'object'},
          });

        final token = await provider.fetchToken();

        expect(token.token, equals('token-123'));
        expect(token.expiresAt, equals(expiresAt));
      });
    });

    group('Transport Integration', () {
      test('uses provided transport instance', () async {
        final customTransport = MockTransport();
        final customProvider = OAuthTokenProvider(
          oauthToken: 'custom-token',
          transport: customTransport,
        );

        customTransport
          ..whenRequest('/iam/v1/tokens')
          ..thenRespond({
            'iamToken': 'from-custom-transport',
            'expiresAt': DateTime.now().toIso8601String(),
          });

        final token = await customProvider.fetchToken();

        expect(token.token, equals('from-custom-transport'));
      });

      test('correctly calls send method with all parameters', () async {
        // This test verifies that send() is called with correct signature
        var sendCalled = false;

        transport
          ..whenRequest('/iam/v1/tokens')
          ..thenRespondDynamic(() {
            sendCalled = true;
            return {
              'iamToken': 'verified-token',
              'expiresAt': DateTime.now().toIso8601String(),
            };
          });

        await provider.fetchToken();

        expect(sendCalled, isTrue);
      });
    });
  });
}

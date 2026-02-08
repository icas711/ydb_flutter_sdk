import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/auth/credentials.dart';
import 'package:ydb_flutter_sdk/src/auth/i_token_provider.dart';
import 'package:ydb_flutter_sdk/src/auth/iam_token.dart';
import 'package:ydb_flutter_sdk/src/errors/errors.dart';

/// Mock token provider for testing
class MockTokenProvider implements ITokenProvider {
  final List<IamToken> _tokens = [];
  int _fetchCount = 0;
  Exception? _errorToThrow;

  void addToken(IamToken token) {
    _tokens.add(token);
  }

  void throwError(Exception error) {
    _errorToThrow = error;
  }

  int get fetchCount => _fetchCount;

  @override
  Future<IamToken> fetchToken() async {
    _fetchCount++;

    if (_errorToThrow != null) {
      throw _errorToThrow!;
    }

    if (_tokens.isEmpty) {
      throw StateError('No tokens configured in MockTokenProvider');
    }

    return _tokens.removeAt(0);
  }

  void reset() {
    _tokens.clear();
    _fetchCount = 0;
    _errorToThrow = null;
  }
}

void main() {
  group('YdbCredentials', () {
    group('Anonymous Credentials', () {
      late YdbCredentials credentials;

      setUp(() {
        credentials = YdbCredentials.anonymous();
      });

      test('returns null token', () async {
        final token = await credentials.getAuthToken();
        expect(token, isNull);
      });

      test('multiple calls return null', () async {
        final token1 = await credentials.getAuthToken();
        final token2 = await credentials.getAuthToken();
        final token3 = await credentials.getAuthToken();

        expect(token1, isNull);
        expect(token2, isNull);
        expect(token3, isNull);
      });

      test('initialize is no-op', () async {
        // Should complete without errors
        await credentials.initialize();

        // Should still return null after initialize
        final token = await credentials.getAuthToken();
        expect(token, isNull);
      });
    });

    group('OAuth Direct (no provider)', () {
      const testOAuthToken = 'test-oauth-token-abc123';
      late YdbCredentials credentials;

      setUp(() {
        credentials = YdbCredentials.oauth(testOAuthToken);
      });

      test('returns OAuth token directly', () async {
        final token = await credentials.getAuthToken();
        expect(token, equals(testOAuthToken));
      });

      test('does not add Bearer prefix', () async {
        final token = await credentials.getAuthToken();

        expect(token, isNot(startsWith('Bearer ')));
        expect(token, equals(testOAuthToken));
      });

      test('multiple calls return same token', () async {
        final token1 = await credentials.getAuthToken();
        final token2 = await credentials.getAuthToken();
        final token3 = await credentials.getAuthToken();

        expect(token1, equals(testOAuthToken));
        expect(token2, equals(testOAuthToken));
        expect(token3, equals(testOAuthToken));
      });

      test('initialize does not require provider', () async {
        // Should complete without errors even without provider
        await credentials.initialize();

        final token = await credentials.getAuthToken();
        expect(token, equals(testOAuthToken));
      });
    });

    group('OAuth with IAM Exchange', () {
      const testOAuthToken = 'oauth-token-for-exchange';
      late MockTokenProvider provider;
      late YdbCredentials credentials;

      setUp(() {
        provider = MockTokenProvider();
        credentials = YdbCredentials.oauth(
          testOAuthToken,
          tokenProvider: provider,
        );
      });

      test('uses token provider when provided', () async {
        final expiresAt = DateTime.now().add(Duration(hours: 1));
        provider.addToken(IamToken(
          token: 'iam-token-1',
          expiresAt: expiresAt,
        ));

        await credentials.initialize();
        final token = await credentials.getAuthToken();

        expect(token, equals('iam-token-1'));
        expect(provider.fetchCount, equals(1));
      });

      test('caches IAM token until expiration', () async {
        // Token valid for 1 hour
        final expiresAt = DateTime.now().add(Duration(hours: 1));
        provider.addToken(IamToken(
          token: 'cached-token',
          expiresAt: expiresAt,
        ));

        await credentials.initialize();

        // Multiple calls should use cached token
        final token1 = await credentials.getAuthToken();
        final token2 = await credentials.getAuthToken();
        final token3 = await credentials.getAuthToken();

        expect(token1, equals('cached-token'));
        expect(token2, equals('cached-token'));
        expect(token3, equals('cached-token'));

        // Should only fetch once during initialize
        expect(provider.fetchCount, equals(1));
      });

      test('refreshes IAM token when expired', () async {
        // First token expires immediately (already expired with 2min safety window)
        final expiredAt = DateTime.now().subtract(Duration(minutes: 1));
        provider.addToken(IamToken(
          token: 'expired-token',
          expiresAt: expiredAt,
        ));

        // Second token valid for 1 hour
        final validExpiresAt = DateTime.now().add(Duration(hours: 1));
        provider.addToken(IamToken(
          token: 'fresh-token',
          expiresAt: validExpiresAt,
        ));

        await credentials.initialize();

        // First call should detect expired token and fetch new one
        final token = await credentials.getAuthToken();

        expect(token, equals('fresh-token'));
        expect(provider.fetchCount,
            equals(2)); // once in init, once in getAuthToken
      });

      test('refreshes before expiration (2 min threshold)', () async {
        // Token expires in 1 minute (within 2-minute safety window)
        final soonExpiredAt = DateTime.now().add(Duration(minutes: 1));
        provider.addToken(IamToken(
          token: 'soon-expired-token',
          expiresAt: soonExpiredAt,
        ));

        // Fresh token
        final freshExpiresAt = DateTime.now().add(Duration(hours: 1));
        provider.addToken(IamToken(
          token: 'refreshed-token',
          expiresAt: freshExpiresAt,
        ));

        await credentials.initialize();

        // Should refresh because within 2-minute safety window
        final token = await credentials.getAuthToken();

        expect(token, equals('refreshed-token'));
        expect(provider.fetchCount, equals(2));
      });

      test('handles provider errors during initialize', () async {
        provider.throwError(YdbClientException('IAM service unavailable'));

        expect(
          () => credentials.initialize(),
          throwsA(isA<YdbClientException>()),
        );
      });

      test('handles provider errors during token refresh', () async {
        // Create credentials with expired token to trigger refresh
        final expiredAt = DateTime.now().subtract(Duration(minutes: 3));
        provider.addToken(IamToken(
          token: 'will-be-expired',
          expiresAt: expiredAt,
        ));

        await credentials.initialize();

        // Now configure error for refresh attempt
        provider.throwError(YdbClientException('Refresh failed'));

        // Attempt to get token should trigger refresh and fail
        expect(
          () => credentials.getAuthToken(),
          throwsA(isA<YdbClientException>()),
        );
      });

      test('pre-fetches token during initialize', () async {
        final expiresAt = DateTime.now().add(Duration(hours: 1));
        provider.addToken(IamToken(
          token: 'pre-fetched-token',
          expiresAt: expiresAt,
        ));

        // Before initialize, provider hasn't been called
        expect(provider.fetchCount, equals(0));

        await credentials.initialize();

        // After initialize, token should be fetched
        expect(provider.fetchCount, equals(1));

        // getAuthToken should use cached token without fetching again
        final token = await credentials.getAuthToken();
        expect(token, equals('pre-fetched-token'));
        expect(provider.fetchCount, equals(1)); // still 1, no new fetch
      });
    });

    group('Token Provider Based', () {
      late MockTokenProvider provider;
      late YdbCredentials credentials;

      setUp(() {
        provider = MockTokenProvider();
        credentials = YdbCredentials.fromProvider(provider);
      });

      test('delegates to provider', () async {
        final expiresAt = DateTime.now().add(Duration(hours: 1));
        provider.addToken(IamToken(
          token: 'provider-token-1',
          expiresAt: expiresAt,
        ));

        await credentials.initialize();
        final token = await credentials.getAuthToken();

        expect(token, equals('provider-token-1'));
        expect(provider.fetchCount, equals(1));
      });

      test('caches token from provider', () async {
        final expiresAt = DateTime.now().add(Duration(hours: 1));
        provider.addToken(IamToken(
          token: 'cached-provider-token',
          expiresAt: expiresAt,
        ));

        await credentials.initialize();

        // Multiple calls should use cached token
        final token1 = await credentials.getAuthToken();
        final token2 = await credentials.getAuthToken();
        final token3 = await credentials.getAuthToken();

        expect(token1, equals('cached-provider-token'));
        expect(token2, equals('cached-provider-token'));
        expect(token3, equals('cached-provider-token'));

        expect(provider.fetchCount, equals(1)); // only once during initialize
      });

      test('refreshes expired token from provider', () async {
        // First token expires immediately
        final expiredAt = DateTime.now().subtract(Duration(minutes: 1));
        provider.addToken(IamToken(
          token: 'expired-provider-token',
          expiresAt: expiredAt,
        ));

        // Second token valid
        final validExpiresAt = DateTime.now().add(Duration(hours: 1));
        provider.addToken(IamToken(
          token: 'fresh-provider-token',
          expiresAt: validExpiresAt,
        ));

        await credentials.initialize();

        // Should detect expired and fetch new
        final token = await credentials.getAuthToken();

        expect(token, equals('fresh-provider-token'));
        expect(provider.fetchCount, equals(2));
      });

      test('handles provider errors during initialize', () async {
        provider
            .throwError(YdbClientException('Provider initialization failed'));

        expect(
          () => credentials.initialize(),
          throwsA(isA<YdbClientException>()),
        );
      });

      test('handles provider errors during token fetch', () async {
        // Create with expired token to force refresh
        final expiredAt = DateTime.now().subtract(Duration(minutes: 3));
        provider.addToken(IamToken(
          token: 'expired-token',
          expiresAt: expiredAt,
        ));

        await credentials.initialize();

        // Configure error for refresh
        provider.throwError(YdbClientException('Token fetch failed'));

        expect(
          () => credentials.getAuthToken(),
          throwsA(isA<YdbClientException>()),
        );
      });

      test('pre-fetches token during initialize', () async {
        final expiresAt = DateTime.now().add(Duration(hours: 1));
        provider.addToken(IamToken(
          token: 'pre-fetched-from-provider',
          expiresAt: expiresAt,
        ));

        expect(provider.fetchCount, equals(0));

        await credentials.initialize();

        expect(provider.fetchCount, equals(1));

        final token = await credentials.getAuthToken();
        expect(token, equals('pre-fetched-from-provider'));
        expect(provider.fetchCount, equals(1)); // no new fetch
      });
    });

    group('Edge Cases', () {
      test('OAuth without provider handles empty token', () async {
        final credentials = YdbCredentials.oauth('');
        final token = await credentials.getAuthToken();
        expect(token, equals('')); // empty string, not null
      });

      test('multiple initialize calls are safe', () async {
        final provider = MockTokenProvider();
        final expiresAt = DateTime.now().add(Duration(hours: 1));

        // Add multiple tokens for multiple initialize calls
        provider.addToken(IamToken(token: 'token-1', expiresAt: expiresAt));
        provider.addToken(IamToken(token: 'token-2', expiresAt: expiresAt));
        provider.addToken(IamToken(token: 'token-3', expiresAt: expiresAt));

        final credentials = YdbCredentials.fromProvider(provider);

        // Multiple initialize calls
        await credentials.initialize();
        await credentials.initialize();
        await credentials.initialize();

        // Should have called provider multiple times
        expect(provider.fetchCount, equals(3));
      });

      test('token provider with very short expiration', () async {
        final provider = MockTokenProvider();

        // Token expires in 30 seconds (within 2-minute safety window)
        final shortExpiresAt = DateTime.now().add(Duration(seconds: 30));
        provider.addToken(IamToken(
          token: 'short-lived',
          expiresAt: shortExpiresAt,
        ));

        // Fresh token
        final longExpiresAt = DateTime.now().add(Duration(hours: 1));
        provider.addToken(IamToken(
          token: 'long-lived',
          expiresAt: longExpiresAt,
        ));

        final credentials = YdbCredentials.fromProvider(provider);
        await credentials.initialize();

        // Should immediately refresh due to 2-minute safety window
        final token = await credentials.getAuthToken();
        expect(token, equals('long-lived'));
        expect(provider.fetchCount, equals(2));
      });

      test('concurrent getAuthToken calls handle caching correctly', () async {
        final provider = MockTokenProvider();
        final expiresAt = DateTime.now().add(Duration(hours: 1));
        provider.addToken(IamToken(
          token: 'concurrent-token',
          expiresAt: expiresAt,
        ));

        final credentials = YdbCredentials.fromProvider(provider);
        await credentials.initialize();

        // Multiple concurrent calls
        final futures = List.generate(
          10,
          (_) => credentials.getAuthToken(),
        );

        final tokens = await Future.wait(futures);

        // All should get same cached token
        expect(tokens, everyElement(equals('concurrent-token')));
        expect(provider.fetchCount, equals(1)); // only once during initialize
      });
    });
  });
}

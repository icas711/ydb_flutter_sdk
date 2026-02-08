import 'i_token_provider.dart';
import 'iam_token.dart';

/// Abstract base class for YDB authentication credentials.
///
/// Provides methods to initialize credentials and retrieve authentication tokens.
abstract class YdbCredentials {
  /// Initialize credentials (e.g., fetch initial token, load keys).
  ///
  /// Called once during YdbDriver.initialize().
  Future<void> initialize() async {}

  /// Get the current authentication token.
  ///
  /// Returns null for anonymous authentication.
  /// May return cached token or fetch a new one if expired.
  Future<String?> getAuthToken();

  /// Factory: Create OAuth token credentials with IAM token exchange.
  ///
  /// [token] - Yandex OAuth token
  /// [tokenProvider] - Optional token provider for IAM exchange.
  ///                    If not provided, returns OAuth token directly.
  factory YdbCredentials.oauth(
    String token, {
    ITokenProvider? tokenProvider,
  }) = _OAuthCredentials;

  /// Factory: Create token provider-based credentials.
  ///
  /// Used for Service Account and other advanced auth methods.
  factory YdbCredentials.fromProvider(ITokenProvider provider) =
      _TokenProviderCredentials;

  /// Factory: Create anonymous (no auth) credentials.
  factory YdbCredentials.anonymous() = _AnonymousCredentials;
}

/// OAuth token credentials with optional IAM exchange.
class _OAuthCredentials implements YdbCredentials {
  final String oauthToken;
  final ITokenProvider? _tokenProvider;
  IamToken? _cachedToken;

  _OAuthCredentials(this.oauthToken, {ITokenProvider? tokenProvider})
      : _tokenProvider = tokenProvider;

  @override
  Future<void> initialize() async {
    // Pre-fetch token if provider is available
    if (_tokenProvider != null) {
      _cachedToken = await _tokenProvider!.fetchToken();
    }
  }

  @override
  Future<String?> getAuthToken() async {
    // If no provider, return OAuth token directly (without Bearer prefix for gRPC)
    if (_tokenProvider == null) {
      return oauthToken;
    }

    // Check if cached token is still valid
    if (_cachedToken != null && !_cachedToken!.isExpired) {
      return _cachedToken!.token;
    }

    // Fetch new IAM token
    _cachedToken = await _tokenProvider!.fetchToken();
    return _cachedToken!.token;
  }
}

/// Token provider-based credentials (Service Account, etc.).
class _TokenProviderCredentials implements YdbCredentials {
  final ITokenProvider _provider;
  IamToken? _cachedToken;

  _TokenProviderCredentials(this._provider);

  @override
  Future<void> initialize() async {
    // Pre-fetch token
    _cachedToken = await _provider.fetchToken();
  }

  @override
  Future<String?> getAuthToken() async {
    // Check if cached token is still valid (return without Bearer prefix for gRPC)
    if (_cachedToken != null && !_cachedToken!.isExpired) {
      return _cachedToken!.token;
    }

    // Fetch new token
    _cachedToken = await _provider.fetchToken();
    return _cachedToken!.token;
  }
}

/// Anonymous (no authentication) credentials.
class _AnonymousCredentials implements YdbCredentials {
  @override
  Future<void> initialize() async {}

  @override
  Future<String?> getAuthToken() async => null;
}

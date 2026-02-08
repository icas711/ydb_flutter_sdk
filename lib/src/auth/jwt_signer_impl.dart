import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

import 'service_account_token_provider.dart';

/// Implementation of [JwtSigner] using the dart_jsonwebtoken package.
///
/// Signs JWT tokens with RS256 algorithm for Service Account authentication.
///
/// Example:
/// ```dart
/// // Option 1: Using string private key (PEM format)
/// final signer = JwtSignerImpl(privateKey: pemPrivateKey);
///
/// // Option 2: Using RSAPrivateKey directly (backward compatibility)
/// final signer = RsaJwtSigner(rsaPrivateKeyObject);
///
/// final jwt = await signer.sign({
///   'aud': 'https://iam.api.cloud.yandex.net/iam/v1/tokens',
///   'iss': serviceAccountId,
///   'iat': 1234567890,
///   'exp': 1234568490,
/// });
/// ```
class JwtSignerImpl implements JwtSigner {
  /// The RSA private key in PEM format.
  final String privateKey;

  const JwtSignerImpl({required this.privateKey});

  @override
  Future<String> sign(Map<String, dynamic> payload) async {
    final JWT jwt = JWT(payload);

    // Parse the private key
    final RSAPrivateKey key = RSAPrivateKey(privateKey);

    // Sign with RS256 algorithm
    final String token = jwt.sign(key, algorithm: JWTAlgorithm.RS256);

    return token;
  }
}

/// Backward-compatible alias for [JwtSignerImpl].
///
/// This class provides compatibility with documentation examples that use
/// `RsaJwtSigner` name. It accepts [RSAPrivateKey] directly instead of
/// a string PEM key.
///
/// Example:
/// ```dart
/// final privateKey = RSAPrivateKey(pemString);
/// final signer = RsaJwtSigner(privateKey);
/// ```
class RsaJwtSigner implements JwtSigner {
  /// The RSA private key object.
  final RSAPrivateKey privateKey;

  /// Creates a JWT signer with the given RSA private key.
  ///
  /// [privateKey] - An RSAPrivateKey object from dart_jsonwebtoken package.
  RsaJwtSigner(this.privateKey);

  @override
  Future<String> sign(Map<String, dynamic> payload) async {
    final JWT jwt = JWT(payload);
    // Sign with RS256 algorithm
    final String token = jwt.sign(privateKey, algorithm: JWTAlgorithm.RS256);
    return token;
  }
}

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

import 'service_account_token_provider.dart';

/// RSA-based JWT signer implementation.
///
/// Signs JWT tokens using PS256 algorithm (RSA-PSS with SHA-256).
/// Used for Service Account authentication with Yandex Cloud.
///
/// Example:
/// ```dart
/// final signer = RsaJwtSigner.fromPem(
///   privateKeyPem,
///   keyId: 'ajekl...',
/// );
/// ```
class RsaJwtSigner implements JwtSigner {
  final RSAPrivateKey privateKey;
  final String? keyId;

  /// Creates a JWT signer with the given RSA private key.
  ///
  /// [privateKey] - RSA private key in PEM format from Service Account JSON.
  /// [keyId] - Optional key ID (kid) to include in JWT header. Required for Yandex Cloud IAM.
  RsaJwtSigner._(this.privateKey, {this.keyId});

  /// Creates a signer from PEM-encoded private key string.
  ///
  /// Convenience factory for loading keys from Service Account JSON files.
  ///
  /// Example:
  /// ```dart
  /// final saJson = jsonDecode(File('sa-key.json').readAsStringSync());
  /// final signer = RsaJwtSigner.fromPem(
  ///   saJson['private_key'],
  ///   keyId: saJson['id'],
  /// );
  /// ```
  factory RsaJwtSigner.fromPem(String pemKey, {String? keyId}) {
    return RsaJwtSigner._(RSAPrivateKey(pemKey), keyId: keyId);
  }

  @override
  Future<String> sign(Map<String, dynamic> payload) async {
    // Create JWT with custom header if keyId is provided
    final header = keyId != null
        ? <String, dynamic>{
            'kid': keyId,
            // alg and typ will be added automatically by JWT.sign
          }
        : null;

    final jwt = JWT(payload, header: header);

    // Sign with PS256 algorithm
    return jwt.sign(privateKey, algorithm: JWTAlgorithm.PS256);
  }
}

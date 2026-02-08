import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/auth/rsa_jwt_signer.dart';

void main() {
  group('RsaJwtSigner', () {
    // Valid RSA 2048-bit private key in PKCS#8 format for testing
    // Generated with: openssl genrsa 2048
    const String testPrivateKeyPem = '''-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDJLXZxI8njBSJx
jnAiH4cm53/tyE+PTeS89zy+l6xvnoE8CZkuml9RbQ1G0+nfPeHSSzDwqy01vw4J
h/mKE+3n8MA7VNMf/AgLfsKq9qttWhTvSaFG9npPR00AMlYfm+7jy1aAT+Rt2M/V
6/MRv5Oa3NrUtXfnypf0fWQflBNd6JYk5QtaVYhljrxO60jlzHA1Bkz4fRoqQUUr
yLmoB23m1jx/fyI+JwuvNjenIaXSspSEF+b28nlo9x1n/QMgfDl3HBRTSBXEcI2j
tpZDLEMrDWAlf9HCoiVpQjG2rF5ThwZwjG74KgFbwNReFfIVwkvKCQjcNFIKzOWt
U/2JNkpbAgMBAAECggEACsf+cHVwCilfcqwk/ex9nuFKKFE9/kU44cLy2kNLm5cS
1Z0CvLjLgelxDDTVdEAfPC4JEI9ui/z8q23COvBIJXrFT94DCymZDsX7eGkMFSn+
NDgDG3KgabjoUKnh7ANnITBnptcL5rJ3VOoLq+L97eSHGl4immVE5naFKUdouvVg
Z60C93LK4cXrovkqj+FSbv4BFqWatf9DuiqHImseV5ycN+f8CSd3/O/KVrPfHHe+
5Sj5/lA02/cLgREFN6tstoyklniaPVfQYNpN07bclXAYcf9EajckWJSFm1/NZ0oE
aO2AL9+2cabo9RjOmFBl3q3uKddQTjkHJd1pG6kOAQKBgQD3tXCd+WVt6HF3ZRl/
vQwEcSsvwAjrfvkFl7CJl2iLOEJ2dRaAEKVVNpGWJdtscNWAI8xahucbIvgOg41G
zg3FWrlBdLZOL3Y65KN8C8DjqWAeqx2dPN48q0rIfyEfQY70JcGzcZ+ECv6LgDi3
mPzhIW0+tLsRy/TJjgUmlrtyAQKBgQDP6U7LM9Y9dXBbjaQLiKiJ940d1D21MPzT
7QBFLre741D1XnjRt0R5qf5G6n/O6iQSYOlwt/KMiJmZJ9ItLXEcRNBRaM15D0Uz
dvMHs4MdAm9krUsnegBqQzrt8bK4Vudp8h3B5n7BZFckKpK+6Bbbcw++db8XunoU
Z2EWmUzEWwKBgQDLreVsACXmubqS8g6FemznOibInJ65BS696ny+pkDQOPJtdNmL
dCR+bOBJFdfW0vC67LSbu1FMfvR4+rKwBb5NCMxLhixhHaWZx2amGQQCLsNadFll
cSdLu41CT0Zs7Psexe0AH+2KJYAoNMZuMN2+QD4T0YgAmjQthxm1ITwAAQKBgQC7
jPwOJDm8ASeU/yWfXeyjYJOE+AOeYo1/40ieH/GQZROP9GPK0qbLlYSSllEq514Y
0iFjFByRl1vvo9Nd+6MQXCcLeR35ecP0E/ZR2SaKUbsIt6aW+uBK+1C6epC853Aj
y0v6sSFg9VIChwEPg6+y0I3AQtlZ31bm9wbG6w0sBwKBgADK9CqJYCKS5QSrvaUa
sm64EEalZ/F7prC8cBFIfuvkN09o9gPAV7S/ktD92WWQuRkG4/qdi1TIC6plDIpY
qsMs7RQRTH+mA+V5UcrVZjpo2BQv0VEdYt1x5JaDIOtgRVY5zItmRX8tHiatxfS9
zVIWR/I7T7bK61161Fgc3Wea
-----END PRIVATE KEY-----''';

    test('creates signer with RSAPrivateKey', () {
      final signer = RsaJwtSigner.fromPem(testPrivateKeyPem);

      expect(signer, isNotNull);
      expect(signer.privateKey, isA<RSAPrivateKey>());
      expect(signer.keyId, isNull);
    });

    test('creates signer with keyId', () {
      final signer =
          RsaJwtSigner.fromPem(testPrivateKeyPem, keyId: 'test-key-id');

      expect(signer, isNotNull);
      expect(signer.keyId, equals('test-key-id'));
    });

    test('creates signer from PEM string', () {
      final signer = RsaJwtSigner.fromPem(testPrivateKeyPem);

      expect(signer, isNotNull);
      expect(signer.privateKey, isA<RSAPrivateKey>());
      expect(signer.keyId, isNull);
    });

    test('creates signer from PEM string with keyId', () {
      final signer = RsaJwtSigner.fromPem(
        testPrivateKeyPem,
        keyId: 'ajekl123',
      );

      expect(signer, isNotNull);
      expect(signer.keyId, equals('ajekl123'));
    });

    test('signs JWT payload with PS256', () async {
      final signer = RsaJwtSigner.fromPem(testPrivateKeyPem);

      final payload = {
        'aud': 'https://iam.api.cloud.yandex.net/iam/v1/tokens',
        'iss': 'aje1234567890',
        'iat': 1234567890,
        'exp': 1234568490,
      };

      final jwt = await signer.sign(payload);

      // JWT should be a string with 3 parts separated by dots
      expect(jwt, isA<String>());
      expect(jwt.split('.').length, equals(3));

      // JWT should start with header (PS256 algorithm)
      final parts = jwt.split('.');
      expect(parts[0], isNotEmpty); // Header
      expect(parts[1], isNotEmpty); // Payload
      expect(parts[2], isNotEmpty); // Signature
    });

    test('generates different signatures for different payloads', () async {
      final signer = RsaJwtSigner.fromPem(testPrivateKeyPem);

      final payload1 = {'data': 'value1', 'iat': 1234567890};
      final payload2 = {'data': 'value2', 'iat': 1234567891};

      final jwt1 = await signer.sign(payload1);
      final jwt2 = await signer.sign(payload2);

      expect(jwt1, isNot(equals(jwt2)));
    });

    test('handles empty payload', () async {
      final signer = RsaJwtSigner.fromPem(testPrivateKeyPem);

      final jwt = await signer.sign({});

      expect(jwt, isA<String>());
      expect(jwt.split('.').length, equals(3));
    });

    test('handles complex nested payload', () async {
      final signer = RsaJwtSigner.fromPem(testPrivateKeyPem);

      final payload = {
        'aud': 'https://iam.api.cloud.yandex.net/iam/v1/tokens',
        'iss': 'aje1234567890',
        'iat': 1234567890,
        'exp': 1234568490,
        'extra': {
          'nested': 'value',
          'list': [1, 2, 3],
        },
      };

      final jwt = await signer.sign(payload);

      expect(jwt, isA<String>());
      expect(jwt.split('.').length, equals(3));
    });

    test('throws on invalid private key', () {
      expect(
        () => RsaJwtSigner.fromPem('invalid-key'),
        throwsA(anything),
      );
    });
  });
}

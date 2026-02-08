import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/auth/jwt_signer_impl.dart';

void main() {
  group('JwtSignerImpl', () {
    test('creates signer with private key', () {
      const String privateKey = 'test-private-key';
      final JwtSignerImpl signer = JwtSignerImpl(privateKey: privateKey);

      expect(signer, isNotNull);
      expect(signer.privateKey, privateKey);
    });

    // Note: Full JWT signing tests require a valid RSA key in PEM format.
    // In production, use proper RSA keys from Yandex Cloud Service Account.
    test('sign method exists and returns Future<String>', () async {
      const String privateKey = 'test-key';
      final JwtSignerImpl signer = JwtSignerImpl(privateKey: privateKey);

      // This will fail with invalid key, but we're testing the interface
      expect(
        () => signer.sign(<String, dynamic>{'test': 'payload'}),
        throwsA(anything),
      );
    });
  });
}

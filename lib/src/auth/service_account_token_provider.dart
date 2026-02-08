import '../transport/i_ydb_transport.dart';
import 'i_token_provider.dart';
import 'iam_token.dart';

abstract interface class JwtSigner {
  Future<String> sign(Map<String, dynamic> payload);
}

class ServiceAccountIamTokenProvider implements ITokenProvider {
  final String serviceAccountId;
  final JwtSigner signer;
  final IYdbTransport transport;

  ServiceAccountIamTokenProvider({
    required this.serviceAccountId,
    required this.signer,
    required this.transport,
  });

  @override
  Future<IamToken> fetchToken() async {
    final DateTime now = DateTime.now().toUtc();

    final String jwt = await signer.sign(<String, dynamic>{
      'aud': 'https://iam.api.cloud.yandex.net/iam/v1/tokens',
      'iss': serviceAccountId,
      'iat': now.millisecondsSinceEpoch ~/ 1000,
      'exp':
          now.add(const Duration(minutes: 10)).millisecondsSinceEpoch ~/ 1000,
    });

    final Map<String, dynamic> json =
        await transport.send<Map<String, dynamic>>(
      endpoint: '/iam/v1/tokens',
      body: <String, String>{'jwt': jwt},
      decoder: (Object? response) => response as Map<String, dynamic>,
    );

    return IamToken(
      token: json['iamToken'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );
  }
}

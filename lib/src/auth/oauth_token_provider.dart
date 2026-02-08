import '../transport/i_ydb_transport.dart';
import 'i_token_provider.dart';
import 'iam_token.dart';

class OAuthTokenProvider implements ITokenProvider {
  final String oauthToken;
  final IYdbTransport transport;

  OAuthTokenProvider({required this.oauthToken, required this.transport});

  @override
  Future<IamToken> fetchToken() async {
    final Map<String, dynamic> json =
        await transport.send<Map<String, dynamic>>(
      endpoint: '/iam/v1/tokens',
      body: <String, String>{'yandexPassportOauthToken': oauthToken},
      decoder: (Object? response) => response as Map<String, dynamic>,
    );

    return IamToken(
      token: json['iamToken'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );
  }
}

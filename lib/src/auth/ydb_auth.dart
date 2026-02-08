import '../transport/i_ydb_transport.dart';
import 'credentials.dart';
import 'i_token_provider.dart';
import 'oauth_token_provider.dart';
import 'service_account_token_provider.dart';

/// Helper factory для создания YDB credentials с правильной аутентификацией.
///
/// Использование:
/// ```dart
/// // 1. Анонимная аутентификация
/// final creds = YdbAuth.anonymous();
///
/// // 2. OAuth токен БЕЗ IAM обмена (для локальной разработки)
/// final creds = YdbAuth.oauthDirect('y0_AgA...');
///
/// // 3. OAuth токен С IAM обменом (для Yandex Cloud)
/// final creds = YdbAuth.oauth(
///   token: 'y0_AgA...',
///   transport: httpTransport,
/// );
///
/// // 4. Service Account с JWT (для production)
/// final creds = YdbAuth.serviceAccount(
///   serviceAccountId: 'aje...',
///   signer: jwtSigner,
///   transport: httpTransport,
/// );
/// ```
class YdbAuth {
  /// Анонимная аутентификация (без токена).
  static YdbCredentials anonymous() {
    return YdbCredentials.anonymous();
  }

  /// OAuth токен БЕЗ IAM обмена.
  ///
  /// Используйте для:
  /// - Локальной разработки
  /// - YDB без Yandex Cloud IAM
  /// - Тестирования
  ///
  /// Токен передается напрямую в заголовке Authorization.
  static YdbCredentials oauthDirect(String token) {
    return YdbCredentials.oauth(token);
  }

  /// OAuth токен С IAM обменом через Yandex Cloud.
  ///
  /// Используйте для:
  /// - Production в Yandex Cloud
  /// - Когда нужен IAM токен с auto-refresh
  ///
  /// OAuth токен обменивается на IAM токен через API:
  /// POST /iam/v1/tokens
  /// body: {"yandexPassportOauthToken": "y0_AgA..."}
  ///
  /// IAM токен кэшируется и автоматически обновляется при истечении.
  static YdbCredentials oauth({
    required String token,
    required IYdbTransport transport,
  }) {
    final OAuthTokenProvider provider = OAuthTokenProvider(
      oauthToken: token,
      transport: transport,
    );
    return YdbCredentials.oauth(token, tokenProvider: provider);
  }

  /// Service Account аутентификация через JWT.
  ///
  /// Используйте для:
  /// - Production приложений
  /// - CI/CD pipelines
  /// - Server-side приложений
  ///
  /// Требует:
  /// - Service Account ID (aje...)
  /// - JWT Signer (private key для подписи)
  /// - Transport для IAM API
  ///
  /// Процесс:
  /// 1. Создается JWT с aud='https://iam.api.cloud.yandex.net/iam/v1/tokens'
  /// 2. JWT подписывается private key
  /// 3. JWT обменивается на IAM токен через API
  /// 4. IAM токен кэшируется и auto-refresh
  static YdbCredentials serviceAccount({
    required String serviceAccountId,
    required JwtSigner signer,
    required IYdbTransport transport,
  }) {
    final ServiceAccountIamTokenProvider provider =
        ServiceAccountIamTokenProvider(
      serviceAccountId: serviceAccountId,
      signer: signer,
      transport: transport,
    );
    return YdbCredentials.fromProvider(provider);
  }

  /// Создать credentials из кастомного token provider.
  ///
  /// Для продвинутых сценариев когда нужна своя логика получения токенов.
  static YdbCredentials fromProvider(ITokenProvider provider) {
    return YdbCredentials.fromProvider(provider);
  }
}

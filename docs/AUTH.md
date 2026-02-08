# YDB Authentication Guide

**Status**: ⚠️ **Implementation Complete, Testing In Progress**  
**Version**: v0.2.0  
**Last Updated**: February 8, 2026

## ⚠️ Current Status

✅ **Implementation**: All authentication methods implemented  
⚠️ **Testing**: Unit tests for authentication in progress  
✅ **Documentation**: Complete  
✅ **Production**: Working with real Yandex Cloud YDB

### Implemented Features

- ✅ Anonymous authentication
- ✅ OAuth token (direct, without IAM)
- ✅ OAuth with IAM exchange
- ✅ Service Account with JWT signing
- ✅ Custom token providers
- ✅ Token caching and auto-refresh
- ✅ TLS/SSL support

---

## Обзор архитектуры

YDB SDK поддерживает несколько способов аутентификации:

```
┌─────────────────────────────────────────────┐
│          YdbCredentials                     │
│  (интерфейс для Driver)                     │
└──────────────────┬──────────────────────────┘
                   │
        ┌──────────┴──────────┬─────────────┐
        │                     │             │
┌───────▼───────┐   ┌────────▼────────┐   ┌▼─────────┐
│  Anonymous    │   │  OAuth          │   │ Provider │
│               │   │  +IAM exchange  │   │  based   │
└───────────────┘   └─────────────────┘   └──────────┘
                                                │
                            ┌───────────────────┴────────┐
                            │                            │
                    ┌───────▼─────────┐      ┌──────────▼─────────┐
                    │ OAuthToken      │      │ ServiceAccount     │
                    │ Provider        │      │ IamTokenProvider   │
                    └─────────────────┘      └────────────────────┘
```

## 1. Анонимная аутентификация

Для локальной разработки без авторизации:

```dart
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

final driver = YdbDriver(
  config: DriverConfig(
    endpoint: 'grpc://localhost:2136',
    database: '/local',
    credentials: YdbAuth.anonymous(),
  ),
);

await driver.initialize();
```

## 2. OAuth токен (прямой, без IAM)

Для локальной разработки или YDB без Yandex Cloud:

```dart
final driver = YdbDriver(
  config: DriverConfig(
    endpoint: 'grpc://localhost:2136',
    database: '/local',
    credentials: YdbAuth.oauthDirect('y0_AgAAAAAA...'),
  ),
);
```

**Что происходит:**

- Токен передается напрямую: `Authorization: Bearer y0_AgA...`
- Нет обмена на IAM токен
- Нет кэширования и auto-refresh

## 3. OAuth с IAM обменом (Yandex Cloud)

Для production в Yandex Cloud:

```dart
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

// Создаем HTTP client для IAM API
final iamClient = IamHttpClient(
  baseUrl: 'https://iam.api.cloud.yandex.net',
);

final driver = YdbDriver(
  config: DriverConfig(
    endpoint: 'grpcs://ydb.serverless.yandexcloud.net:2135',
    database: '/ru-central1/b1g.../etn...',
    credentials: YdbAuth.oauth(
      token: 'y0_AgAAAAAA...',  // OAuth token
      transport: iamClient,
    ),
  ),
);

await driver.initialize();
```

**Что происходит:**

1. При `initialize()`:
   - OAuth токен обменивается на IAM токен
   - `POST https://iam.api.cloud.yandex.net/iam/v1/tokens`
   - `body: {"yandexPassportOauthToken": "y0_AgA..."}`
   - Получаем: `{"iamToken": "t1.9euelZqP...", "expiresAt": "2024-..."}`

2. При каждом запросе:
   - Проверяется срок действия IAM токена
   - Если истек (или <2 мин до истечения) - обменивается заново
   - `Authorization: Bearer t1.9euelZqP...`

## 4. Service Account (Production)

Для production приложений с Service Account:

```dart
import 'dart:convert';
import 'dart:io';
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

// Загружаем Service Account JSON
final serviceAccountJson = File('sa-key.json').readAsStringSync();
final saData = jsonDecode(serviceAccountJson);

// Создаем RSA JWT signer из private key с Key ID
final signer = RsaJwtSigner.fromPem(
  saData['private_key'],
  keyId: saData['id'],  // Key ID (ajekl...) - обязательно!
);

// Создаем HTTP client для IAM API
final iamClient = IamHttpClient(
  baseUrl: 'https://iam.api.cloud.yandex.net',
);

final driver = YdbDriver(
  config: DriverConfig(
    endpoint: 'grpcs://ydb.serverless.yandexcloud.net:2135',
    database: '/ru-central1/b1g.../etn...',
    credentials: YdbAuth.serviceAccount(
      serviceAccountId: saData['service_account_id'],  // aje...
      signer: signer,
      transport: iamClient,
    ),
  ),
);

await driver.initialize();
```

**Что происходит:**

1. При `initialize()`:
   - Создается JWT payload:
     ```json
     {
       "aud": "https://iam.api.cloud.yandex.net/iam/v1/tokens",
       "iss": "aje...", // service account ID
       "iat": 1234567890,
       "exp": 1234568490 // +10 minutes
     }
     ```
   - JWT подписывается private key (PS256 - RSA-PSS with SHA-256)
   - JWT обменивается на IAM токен:
     - `POST https://iam.api.cloud.yandex.net/iam/v1/tokens`
     - `body: {"jwt": "eyJhbGci..."}`
   - Получаем IAM токен с expiry

2. При каждом запросе:
   - Проверяется срок действия IAM токена
   - Если истек - создается новый JWT и обменивается
   - `Authorization: Bearer t1.9euelZqP...`

## 5. Кастомный Token Provider

Для продвинутых сценариев:

```dart
class MyCustomTokenProvider implements ITokenProvider {
  @override
  Future<IamToken> fetchToken() async {
    // Ваша логика получения токена
    final token = await myCustomAuth();

    return IamToken(
      token: token,
      expiresAt: DateTime.now().add(Duration(hours: 1)),
    );
  }
}

final driver = YdbDriver(
  config: DriverConfig(
    endpoint: 'grpcs://...',
    database: '/...',
    credentials: YdbAuth.fromProvider(MyCustomTokenProvider()),
  ),
);
```

## Сравнение методов

| Метод              | Когда использовать   | IAM обмен | Auto-refresh | Безопасность          |
| ------------------ | -------------------- | --------- | ------------ | --------------------- |
| `anonymous()`      | Локальная разработка | ❌        | ❌           | ⚠️ Нет авторизации    |
| `oauthDirect()`    | Разработка, тесты    | ❌        | ❌           | ⚠️ Токен в коде       |
| `oauth()`          | Production с OAuth   | ✅        | ✅           | ⚠️ Токен в коде       |
| `serviceAccount()` | Production           | ✅        | ✅           | ✅ Рекомендуется      |
| `fromProvider()`   | Кастомные сценарии   | ✅        | ✅           | Зависит от реализации |

## Получение OAuth токена

### Через Yandex Cloud Console:

1. Откройте: https://oauth.yandex.ru/authorize?response_type=token&client_id=1a6990aa636648e9b2ef855fa7bec2fb
2. Разрешите доступ
3. Скопируйте токен из URL: `access_token=y0_AgAAAAAA...`

### Через CLI:

```bash
yc iam create-token
```

## Service Account JSON структура

```json
{
  "id": "aje...",
  "service_account_id": "aje...",
  "private_key": "-----BEGIN PRIVATE KEY-----\n...\n-----END PRIVATE KEY-----\n",
  "public_key": "-----BEGIN PUBLIC KEY-----\n...\n-----END PUBLIC KEY-----\n",
  "created_at": "2024-01-01T00:00:00Z"
}
```

Создать Service Account:

```bash
yc iam service-account create --name my-ydb-app
yc iam key create --service-account-name my-ydb-app --output sa-key.json
```

## Troubleshooting

### Ошибка: "Unauthorized"

- Проверьте правильность токена
- Для OAuth - убедитесь что токен не истек
- Для Service Account - проверьте права доступа SA

### Ошибка: "IAM token expired"

- SDK автоматически обновляет токены
- Если ошибка повторяется - проверьте сетевое подключение к IAM API

### OAuth токен не работает

- Используйте `oauth()` с transport для IAM обмена
- Для локальной разработки без IAM - используйте `oauthDirect()`

### Service Account ошибка подписи JWT

- Проверьте формат private key
- Убедитесь что используется RS256 алгоритм
- Проверьте что Service Account существует

## Примеры для разных окружений

### Development (localhost)

```dart
credentials: YdbAuth.anonymous()
```

### Staging (Yandex Cloud)

```dart
credentials: YdbAuth.oauth(
  token: Platform.environment['YDB_TOKEN']!,
  transport: iamTransport,
)
```

### Production (Yandex Cloud)

```dart
credentials: YdbAuth.serviceAccount(
  serviceAccountId: saData['service_account_id'],
  signer: RsaJwtSigner(privateKey),
  transport: iamTransport,
)
```

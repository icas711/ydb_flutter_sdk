# Яндекс DB Flutter SDK

[![en](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![ru](https://img.shields.io/badge/lang-ru-red.svg)](README_RU.md)

**YDB SDK для Dart и Flutter** - типобезопасный клиент для работы с распределённой SQL базой данных [YDB](https://ydb.tech/).

## Обзор

### Что это?

YDB Flutter SDK - библиотека для [Yandex Database (YDB)](https://ydb.tech/) - больше, чем Distributed SQL база данных. Мы завезли поддержку YDB в экосистему Dart и Flutter, позволяя разработчикам создавать мобильные, веб и десктопные приложения с YDB в качестве backend.

### Зачем нужен YDB Flutter SDK?

**Проблема:**

- YDB - мощная распределённая база данных от Яндекса, но не имеет официальной поддержки Dart/Flutter
- Создание приложений с YDB backend требует сложной интеграции с gRPC и конвертации типов
- Аутентификация в Яндекс.Облаке (IAM, Service Account) требует специальной обработки
- Нет готового решения для Flutter разработчиков, желающих использовать YDB

**Решение:**

- **Типобезопасность**: автоматическое отображение всех YDB-типов (Int64, Uint64, Decimal, Timestamp и др.)
- **gRPC под капотом**: без необходимости работать с protobuf напрямую
- **Встроенная аутентификация**:IAM, OAuth, Service Account (JWT)
- **Управление сессиями**: пул, lifecycle, ретраи
- **Production-quality**: тесты, реальные интеграции с Yandex Cloud

### Ключевые преимущества

- **Готов к production**: тесты, реальная интеграция с Яндекс.Облаком, gRPC
- **Типобезопасный**: Полная проверка типов на этапе компиляции с использованием системы типов Dart
- **Flutter First**: Работает на мобильных (iOS/Android), веб, десктоп (Windows/macOS/Linux) платформах
- **Без привязки к вендору**: Основан на открытом протоколе YDB, следует архитектуре официальных Python/Go SDK
- **Хорошо протестирован**: 100% покрытие тестами критических путей
- **Community Driven**: Open source, лицензия Apache 2.0

## Мотивация

Этот проект родился из ~потребности~ необходимости использовать YDB в Flutter приложениях.

**Цель проекта** - реализовать для Flutter-разработчиков полноценный, надёжный и удобный доступ к YDB

**Статус**: активно развивается, gRPC-транспорт и типовая система готовы, интеграция с Yandex Cloud протестирована и используется в production

## Возможности

### Доступно сейчас

**Полная поддержка gRPC транспорта**

- Production-ready gRPC клиент для Yandex Cloud YDB
- Полная двунаправленная конвертация типов (SDK ↔ protobuf)
- Управление жизненным циклом сессий (создание, выполнение, удаление)
- TLS/SSL поддержка с автоопределением
- OAuth аутентификация через x-ydb-auth-ticket заголовок
- 240 юнит-тестов со 100% прохождением

**Полная система типов**

- Все типы YDB отображены в Dart: Int8/16/32/64, Uint8/16/32/64, Float, Double, Bool
- Строковые типы: Utf8, String, Bytes
- Временные типы: Date, Datetime, Timestamp, Interval
- Специальные типы: Decimal, Uuid, Json, JsonDocument
- Контейнеры: Optional, List, Tuple, Struct, Dict
- JSON сериализация совместимая с YDB HTTP API

**HTTP транспорт**

- HTTP/HTTPS с TLS
- Аутентификация через metadata заголовки
- Логика повторов с экспоненциальной задержкой
- Полная обработка ошибок

**Аутентификация**

- Анонимные credentials
- OAuth token provider
- Service Account с IAM
- Пользовательские token providers

**Базовый Driver и клиентские API**

- YdbDriver для управления подключениями
- QueryClient для выполнения запросов
- SchemeClient для DDL операций (CREATE/ALTER/DROP table)
- Параметризованные запросы с типобезопасными параметрами
- Пример Flutter приложения с реальными CRUD операциями

## Установка

Добавьте в ваш `pubspec.yaml`:

```yaml
dependencies:
  ydb_flutter_sdk: ^0.2.0
```

## Быстрый старт

### Базовое использование

```dart
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

void main() async {
  // Создание драйвера
  final driver = YdbDriver(
    endpoint: 'grpcs://ydb.serverless.yandexcloud.net:2135',
    database: '/ru-central1/b1g8skpblkos03malf3s/etn02qso4v3isjb00te6',
    credentials: YdbAuth.oauth(oauthToken),
  );

  await driver.initialize();

  // Выполнение запроса
  final result = await driver.queryClient.execute(
    'SELECT * FROM users WHERE id = \$id',
    parameters: {'id': YdbInt64(123)},
  );

  // Обработка результатов
  for (final row in result.rows) {
    final name = (row['name'] as YdbUtf8).value;
    print('Пользователь: $name');
  }

  await driver.close();
}
```

### Работа с типами

```dart
// Создание YDB значений
final userId = YdbInt64(123);
final userName = YdbUtf8('Иван Иванов');
final userEmail = YdbOptional(YdbUtf8('ivan@example.com'));

// Сложные типы
final struct = YdbStruct({
  'id': YdbInt64(1),
  'name': YdbUtf8('Товар'),
  'price': YdbOptional(YdbDecimal('99.99')),
  'tags': YdbList([YdbUtf8('электроника'), YdbUtf8('гаджеты')]),
});

// Сериализация в JSON (для HTTP API)
final json = userId.toJson();
// {"type": "Int64", "value": "123"}

// Десериализация из JSON
final value = IYdbValue.fromJson({
  'type': 'Utf8',
  'value': 'Привет, YDB!'
});
```

### Аутентификация

```dart
// Анонимная (для локальной разработки)
final credentials = YdbAuth.anonymous();

// OAuth токен
final credentials = YdbAuth.oauth('ваш-oauth-токен');

// Service Account с JSON ключевым файлом
final credentials = YdbAuth.serviceAccount(
  serviceAccountId: 'aje...',
  keyId: 'ajepr...',
  privateKey: '-----BEGIN PRIVATE KEY-----...',
);
```

## Архитектура

```
YdbDriver
  ├─ QuerySessionPool (stateless, рекомендуется)
  │   └─ QuerySession
  │       └─ QueryTxContext
  └─ TableSessionPool (stateful, legacy)
      └─ TableSession
          └─ Transaction

Транспортный слой (подключаемый)
  ├─ GrpcYdbTransport (production ready, v0.2.0)
  └─ HttpYdbTransport (работает, legacy)

Аутентификация
  ├─ AnonymousCredentials
  ├─ OAuthTokenProvider
  ├─ ServiceAccountTokenProvider
  └─ Пользовательский ITokenProvider
```

## Документация

- **Руководство по быстрому старту** - Начните работу за 5 минут
- **[Аутентификация](docs/AUTH.md)** - Все методы аутентификации
- **Система типов** - Работа с типами YDB
- **[Примеры](example/)** - Полные рабочие примеры

## Тестирование

Запуск всех тестов:

```bash
flutter test
```

Запуск конкретных тестовых наборов:

```bash
# Тесты системы типов
flutter test test/types_test.dart

# Тесты gRPC транспорта
flutter test test/grpc/

# Тесты аутентификации
flutter test test/auth/
```

## Лицензия

[Apache 2.0](LICENSE) - такая же как у YDB

## Ссылки

- [Документация YDB](https://ydb.tech/ru/docs/)
- [Yandex Cloud YDB](https://cloud.yandex.ru/services/ydb)

---

Создано Ollyrd Chemmyrd  
На основе официальной архитектуры YDB SDK от Яндекса

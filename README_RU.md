# Яндекс DB Flutter SDK

[![en](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![ru](https://img.shields.io/badge/lang-ru-red.svg)](README_RU.md)

**Готовый к production YDB SDK для Dart и Flutter** с типобезопасным доступом к распределённой SQL базе данных [YDB](https://ydb.tech/).

## Обзор

### Что это?

YDB Flutter SDK - это community-driven, production-ready клиентская библиотека для [Yandex Database (YDB)](https://ydb.tech/) - больше, чем Distributed SQL база данных. Мы завезли поддержку YDB в экосистему Dart и Flutter, позволяя разработчикам создавать мобильные, веб и десктопные приложения с YDB в качестве backend.

### Зачем нужен YDB Flutter SDK?

**Проблема:**

- YDB - мощная распределённая база данных от Яндекса, но не имеет официальной поддержки Dart/Flutter
- Создание приложений с YDB backend требует сложной интеграции с gRPC и конвертации типов
- Аутентификация в Яндекс.Облаке (IAM, Service Account) требует специальной обработки
- Нет готового решения для Flutter разработчиков, желающих использовать YDB

**Что мы решаем:**

- **Нет официального SDK**: Яндекс не предоставляет Dart/Flutter SDK - мы заполняем этот пробел
- **Сложное отображение типов**: YDB имеет 20+ специфичных типов (Int64, Uint64, Decimal, Timestamp и др.), которые не отображаются напрямую в Dart - мы обрабатываем все конвертации автоматически
- **Сложность gRPC**: YDB использует gRPC с protobuf - мы предоставляем чистый, идиоматичный Dart API
- **Боль с аутентификацией**: Яндекс.Облако IAM требует обмена OAuth токенов и подписи JWT для Service Account - встроено и протестировано
- **Управление сессиями**: YDB требует пулинга сессий и управления их жизненным циклом - мы это обрабатываем
- **Типобезопасность**: Мы предоставляем проверку типов на этапе компиляции для операций с YDB

### Ключевые преимущества

- **Готов к production**: тесты, реальная интеграция с Яндекс.Облаком, gRPC
- **Типобезопасный**: Полная проверка типов на этапе компиляции с использованием системы типов Dart
- **Flutter First**: Работает на мобильных (iOS/Android), веб, десктоп (Windows/macOS/Linux) платформах
- **Без привязки к вендору**: Основан на открытом протоколе YDB, следует архитектуре официальных Python/Go SDK
- **Хорошо протестирован**: 100% покрытие тестами критических путей
- **Community Driven**: Open source, лицензия Apache 2.0

## Мотивация

Этот проект родился из ~потребности~ необходимости использовать YDB в Flutter приложениях. Хотя YDB имеет отличные Python и Go SDK, экосистема Dart/Flutter оставалась без официальной поддержки.

**Почему это важно:**

1. **Рост Flutter**: Яндекс не все решения переводит на Dart/Flutter
2. **Яндекс.Облако YDB**: Production-grade распределённая база данных с строгой консистентностью, ACID транзакциями и горизонтальным масштабированием
3. **Пробел**: Не было способа соединить эти две мощные технологии

**Философия дизайна:**

- **Follow SDK**: Мы точно следуем архитектуре официальных [ydb-python-sdk](https://github.com/ydb-platform/ydb-python-sdk) и [ydb-go-sdk](https://github.com/ydb-platform/ydb-go-sdk)
- **Идиоматичный Dart**: async/await, Streams, null-safety, правильная обработка ошибок
- **Production First**: Создан для реального использования с первого дня - не proof-of-concept
- **Стандарты сообщества**: Полные тесты, документация, семантическое версионирование

**Текущий статус:**

- gRPC транспорт готов к production с полной системой типов
- Реальная интеграция с Яндекс.Облаком протестирована и работает
- Используется в production ранними последователями

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

### Планируемые функции

- Продвинутый пулинг сессий с автоматическим управлением жизненным циклом
- Балансировка нагрузки и failover для подключений
- Transaction API со всеми уровнями изоляции (SerializableRW, OnlineRO, StaleRO)
- Production-ready библиотека Flutter виджетов
- Политики повторов с настраиваемыми стратегиями
- Table Service (legacy stateful API)
- Массовые операции и batch вставки
- Streaming для больших результирующих наборов
- Discovery Service для обновления endpoint'ов
- Topic API (pub/sub)
- Coordination Service (распределённые блокировки)

## Установка

Добавьте в ваш `pubspec.yaml`:

```yaml
dependencies:
  ydb_flutter_sdk:
    git:
      url: https://github.com/icas711/ydb_flutter_sdk.git
      ref: v0.2.0
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

### Для пользователей

- **Руководство по быстрому старту** - Начните работу за 5 минут
- **[Аутентификация](docs/AUTH.md)** - Все методы аутентификации
- **Система типов** - Работа с типами YDB
- **[Примеры](example/)** - Полные рабочие примеры

### Для разработчиков

- **[MVP План](docs/MVP_PLAN.md)** - 10-недельная дорожная карта реализации
- **[gRPC Статус](docs/GRPC_STATUS.md)** - Детальный статус реализации gRPC
- **[Анализ SDK](docs/SDK_ANALYSIS.md)** - Архитектурные решения
- **Руководство по участию** - Как внести вклад

## Статус разработки

| Компонент      | Статус        | Тесты | Примечания                    |
| -------------- | ------------- | ----- | ----------------------------- |
| Система типов  | Завершена     | 143   | Все типы YDB поддерживаются   |
| gRPC транспорт | Завершён      | 97    | Production ready v0.2.0       |
| HTTP транспорт | Завершён      | 143   | Legacy, работает              |
| Аутентификация | Завершена     | 50    | Все провайдеры протестированы |
| Driver         | Запланирован  | -     | Управление подключениями      |
| Session Pool   | Запланирован  | -     | Жизненный цикл сессий         |
| Query Service  | Запланирован  | -     | Современный stateless API     |
| Table Service  | Запланирован  | -     | Legacy stateful API           |
| Транзакции     | Запланированы | -     | Все уровни изоляции           |

**Всего: 430+ тестов, 100% прохождение**

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

## Сравнение с Python SDK

Этот SDK следует дизайну [ydb-python-sdk](https://github.com/ydb-platform/ydb-python-sdk), адаптированному для Dart:

| Python                               | Dart                                        |
| ------------------------------------ | ------------------------------------------- |
| `ydb.Driver`                         | `YdbDriver`                                 |
| `ydb.QuerySessionPool`               | `QuerySessionPool`                          |
| `ydb.SerializableReadWrite`          | `TxMode.serializableReadWrite()`            |
| `@retry_operation_sync`              | `withRetry(...)`                            |
| `session.execute(query, parameters)` | `session.execute(query, parameters: {...})` |

## Участие в разработке

Мы приветствуем вклад в развитие проекта! Пожалуйста:

1. Прочитайте [Анализ SDK](docs/SDK_ANALYSIS.md) и [MVP План](docs/MVP_PLAN.md)
2. Проверьте открытые issues
3. Отправьте PR с тестами и документацией

## Лицензия

[Apache 2.0](LICENSE) - такая же как у YDB

## Ссылки

- [Документация YDB](https://ydb.tech/ru/docs/)
- [YDB Python SDK](https://github.com/ydb-platform/ydb-python-sdk)
- [YDB Go SDK](https://github.com/ydb-platform/ydb-go-sdk)
- [Yandex Cloud YDB](https://cloud.yandex.ru/services/ydb)

---

Создано Ollyrd Chemmyrd  
На основе официальной архитектуры YDB SDK от Яндекса

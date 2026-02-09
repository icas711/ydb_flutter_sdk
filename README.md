# Yandex DB Flutter SDK

[![en](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![ru](https://img.shields.io/badge/lang-ru-red.svg)](README_RU.md)

**YDB SDK for Dart and Flutter** - type-safe client for working with [YDB](https://ydb.tech/) distributed SQL database.

## Overview

### What is this?

YDB Flutter SDK is a library for [Yandex Database (YDB)](https://ydb.tech/) - more than just a Distributed SQL database. We brought YDB support to the Dart and Flutter ecosystem, enabling developers to build mobile, web, and desktop applications with YDB as backend.

### Why YDB Flutter SDK?

**The Problem:**

- YDB is a powerful distributed database from Yandex, but lacks official Dart/Flutter support
- Building apps with YDB backend requires complex gRPC integration and type conversion
- Yandex Cloud authentication (IAM, Service Account) needs special handling
- No ready-to-use solution for Flutter developers wanting to use YDB

**The Solution:**

- **Type Safety**: automatic mapping of all YDB types (Int64, Uint64, Decimal, Timestamp, etc.)
- **gRPC Under the Hood**: no need to work with protobuf directly
- **Built-in Authentication**: IAM, OAuth, Service Account (JWT)
- **Session Management**: pool, lifecycle, retries
- **Production-quality**: tests, real integrations with Yandex Cloud

### Key Benefits

- **Production Ready**: tests, real Yandex Cloud integration, gRPC
- **Type Safe**: Full compile-time type checking with Dart's type system
- **Flutter First**: Works on mobile (iOS/Android), web, desktop (Windows/macOS/Linux) platforms
- **Zero Vendor Lock-in**: Based on open YDB protocol, follows official Python/Go SDK architecture
- **Well Tested**: 100% test coverage for critical paths
- **Community Driven**: Open source, Apache 2.0 license

## Motivation

This project was born from the need to use YDB in Flutter applications.

**Project Goal** - to provide Flutter developers with complete, reliable, and convenient access to YDB

**Status**: actively developing, gRPC transport and type system ready, Yandex Cloud integration tested and used in production

## Features

### Available Now

**Complete gRPC Transport**

- Production-ready gRPC client for Yandex Cloud YDB
- Full bidirectional type conversion (SDK ↔ protobuf)
- Session lifecycle management (Create, Execute, Delete)
- TLS/SSL support with auto-detection
- OAuth authentication via x-ydb-auth-ticket header
- 240 unit tests with 100% pass rate

**Complete Type System**

- All YDB types mapped to Dart: Int8/16/32/64, Uint8/16/32/64, Float, Double, Bool
- String types: Utf8, String, Bytes
- Temporal types: Date, Datetime, Timestamp, Interval
- Special types: Decimal, Uuid, Json, JsonDocument
- Containers: Optional, List, Tuple, Struct, Dict
- JSON serialization compatible with YDB HTTP API

**HTTP Transport**

- HTTP/HTTPS with TLS
- Authentication via metadata headers
- Retry logic with exponential backoff
- Complete error handling

**Authentication**

- Anonymous credentials
- OAuth token provider
- Service Account with IAM
- Custom token providers

**Basic Driver & Client APIs**

- YdbDriver for connection management
- QueryClient for executing queries
- SchemeClient for DDL operations (CREATE/ALTER/DROP table)
- Parametrized queries with type-safe parameters
- Example Flutter application with real CRUD operations

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  ydb_flutter_sdk: ^0.2.0
```

## Quick Start

### Basic Usage

```dart
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

void main() async {
  // Create driver
  final driver = YdbDriver(
    endpoint: 'grpcs://ydb.serverless.yandexcloud.net:2135',
    database: '/ru-central1/b1g8sk.....',
    credentials: YdbAuth.oauth(oauthToken),
  );

  await driver.initialize();

  // Execute query
  final result = await driver.queryClient.execute(
    'SELECT * FROM users WHERE id = \$id',
    parameters: {'id': YdbInt64(123)},
  );

  // Process results
  for (final row in result.rows) {
    final name = (row['name'] as YdbUtf8).value;
    print('User: $name');
  }

  await driver.close();
}
```

### Working with Types

```dart
// Create YDB values
final userId = YdbInt64(123);
final userName = YdbUtf8('John Doe');
final userEmail = YdbOptional(YdbUtf8('john@example.com'));

// Complex types
final struct = YdbStruct({
  'id': YdbInt64(1),
  'name': YdbUtf8('Product'),
  'price': YdbOptional(YdbDecimal('99.99')),
  'tags': YdbList([YdbUtf8('electronics'), YdbUtf8('gadgets')]),
});

// Serialize to JSON (for HTTP API)
final json = userId.toJson();
// {"type": "Int64", "value": "123"}

// Deserialize from JSON
final value = IYdbValue.fromJson({
  'type': 'Utf8',
  'value': 'Hello, YDB!'
});
```

### Authentication

```dart
// Anonymous (for local development)
final credentials = YdbAuth.anonymous();

// OAuth token
final credentials = YdbAuth.oauth('your-oauth-token');

// Service Account with JSON key file
final credentials = YdbAuth.serviceAccount(
  serviceAccountId: 'aje...',
  keyId: 'ajepr...',
  privateKey: '-----BEGIN PRIVATE KEY-----...',
);
```

## Architecture

```
YdbDriver
  ├─ QuerySessionPool (stateless, recommended)
  │   └─ QuerySession
  │       └─ QueryTxContext
  └─ TableSessionPool (stateful, legacy)
      └─ TableSession
          └─ Transaction

Transport Layer (pluggable)
  ├─ GrpcYdbTransport (production ready, v0.2.0)
  └─ HttpYdbTransport (working, legacy)

Authentication
  ├─ AnonymousCredentials
  ├─ OAuthTokenProvider
  ├─ ServiceAccountTokenProvider
  └─ Custom ITokenProvider
```

## Documentation

- **Quick Start Guide** - Get started in 5 minutes
- **[Authentication](docs/AUTH.md)** - All authentication methods
- **Type System** - Working with YDB types
- **[Examples](example/)** - Complete working examples

## Testing

Run all tests:

```bash
flutter test
```

Run specific test suites:

```bash
# Type system tests
flutter test test/types_test.dart

# gRPC transport tests
flutter test test/grpc/

# Authentication tests
flutter test test/auth/
```

## License

[Apache 2.0](LICENSE) - same as YDB

## Links

- [YDB Documentation](https://ydb.tech/docs/)
- [Yandex Cloud YDB](https://cloud.yandex.com/en/services/ydb)

---

Created by Ollyrd Chemmyrd  
Based on official YDB SDK architecture by Yandex

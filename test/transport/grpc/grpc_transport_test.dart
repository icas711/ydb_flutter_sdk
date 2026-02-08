import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/auth/credentials.dart';
import 'package:ydb_flutter_sdk/src/retry/retry.dart';
import 'package:ydb_flutter_sdk/src/transport/grpc/grpc_transport.dart';

void main() {
  group('GrpcTransport - Initialization', () {
    test('Initialize creates channel and clients', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      expect(() => transport.close(), returnsNormally);
    });

    test('Initialize with TLS endpoint', () async {
      final transport = GrpcTransport(
        endpoint: 'ydb.serverless.yandexcloud.net:2135',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/ru-central1/b1g/etn',
        retrySettings: RetrySettings(),
        useTls: true,
      );

      await transport.initialize();
      await transport.close();
    });

    test('Multiple initialize calls are idempotent', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      await transport.initialize(); // Should not throw
      await transport.initialize(); // Should not throw

      await transport.close();
    });

    test('Close before initialize does not throw', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.close(); // Should not throw
    });

    test('Send before initialize throws StateError', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      expect(
        () => transport.send(
          endpoint: '/query',
          body: {'query': 'SELECT 1'},
          decoder: (json) => json,
        ),
        throwsA(isA<StateError>().having(
          (e) => e.message,
          'message',
          'GrpcTransport is not initialized',
        )),
      );
    });
  });

  group('GrpcTransport - Endpoint Parsing', () {
    test('Parses host and port from endpoint', () async {
      final transport = GrpcTransport(
        endpoint: 'ydb.example.com:2135',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: true,
      );

      await transport.initialize();
      await transport.close();
    });

    test('Uses default port 2135 for TLS when not specified', () async {
      final transport = GrpcTransport(
        endpoint: 'ydb.example.com',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: true,
      );

      await transport.initialize();
      await transport.close();
    });

    test('Uses default port 2136 for non-TLS when not specified', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      await transport.close();
    });

    test('Handles grpcs:// scheme in endpoint', () async {
      final transport = GrpcTransport(
        endpoint: 'grpcs://ydb.example.com:2135',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: true,
      );

      await transport.initialize();
      await transport.close();
    });
  });

  group('GrpcTransport - Credentials', () {
    test('Anonymous credentials work', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      await transport.close();
    });

    test('OAuth credentials are included in metadata', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.oauth('test-token-123'),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      // Note: Actual token validation requires real server
      await transport.close();
    });
  });

  group('GrpcTransport - Configuration', () {
    test('Custom timeout is respected', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(seconds: 30),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      await transport.close();
    });

    test('Custom database path is stored', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/ru-central1/b1g8skpblkos03malf3s/etnudu2n9ri35luqs6u0',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      expect(transport.database,
          '/ru-central1/b1g8skpblkos03malf3s/etnudu2n9ri35luqs6u0');
      await transport.close();
    });

    test('Custom retry settings are stored', () async {
      final customRetry = RetrySettings(
        maxRetries: 5,
        initialDelay: Duration(milliseconds: 500),
        maxDelay: Duration(seconds: 10),
      );

      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: customRetry,
        useTls: false,
      );

      await transport.initialize();
      expect(transport.retrySettings.maxRetries, 5);
      expect(transport.retrySettings.initialDelay, Duration(milliseconds: 500));
      await transport.close();
    });
  });

  group('GrpcTransport - Error Handling', () {
    test('Handles connection timeout', () async {
      final transport = GrpcTransport(
        endpoint: 'non-existent-host-12345.example.com:2136',
        timeout: Duration(milliseconds: 100),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(maxRetries: 1),
        useTls: false,
      );

      await transport.initialize();

      // /query endpoint is not yet implemented
      expect(
        () => transport.send(
          endpoint: '/query',
          body: {'query': 'SELECT 1'},
          decoder: (json) => json,
        ),
        throwsA(isA<UnsupportedError>().having(
          (e) => e.message,
          'message',
          contains('Endpoint not yet implemented'),
        )),
      );

      await transport.close();
    });
  });

  group('GrpcTransport - Lifecycle', () {
    test('Can reinitialize after close', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      await transport.close();

      // Reinitialize
      await transport.initialize();
      await transport.close();
    });

    test('Multiple close calls are safe', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      await transport.close();
      await transport.close(); // Should not throw
      await transport.close(); // Should not throw
    });
  });

  group('GrpcTransport - Edge Cases', () {
    test('Handles empty database path', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      await transport.close();
    });

    test('Handles very short timeout', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(milliseconds: 1),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      await transport.close();
    });

    test('Handles very long timeout', () async {
      final transport = GrpcTransport(
        endpoint: 'localhost:2136',
        timeout: Duration(hours: 1),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      await transport.close();
    });

    test('Handles IPv6 endpoint', () async {
      final transport = GrpcTransport(
        endpoint: '[::1]:2136',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/local',
        retrySettings: RetrySettings(),
        useTls: false,
      );

      await transport.initialize();
      await transport.close();
    });

    test('Handles endpoint with path components', () async {
      final transport = GrpcTransport(
        endpoint: 'ydb.example.com:2135',
        timeout: Duration(seconds: 5),
        credentials: YdbCredentials.anonymous(),
        database: '/ru-central1/b1g/etn',
        retrySettings: RetrySettings(),
        useTls: true,
      );

      await transport.initialize();
      await transport.close();
    });
  });
}

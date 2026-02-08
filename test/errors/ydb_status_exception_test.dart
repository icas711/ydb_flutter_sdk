import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/src/errors/status_codes.dart';
import 'package:ydb_flutter_sdk/src/errors/ydb_status_exception.dart';

void main() {
  group('YdbStatusException.isRetryable', () {
    test('aborted is retryable', () {
      final YdbStatusException error = YdbStatusException(
        status: YdbStatusCode.aborted,
        message: 'msg',
      );

      expect(error.isRetryable, isTrue);
    });

    test('unavailable is retryable', () {
      final YdbStatusException error = YdbStatusException(
        status: YdbStatusCode.unavailable,
        message: 'msg',
      );

      expect(error.isRetryable, isTrue);
    });

    test('timeout is retryable', () {
      final YdbStatusException error = YdbStatusException(
        status: YdbStatusCode.timeout,
        message: 'msg',
      );

      expect(error.isRetryable, isTrue);
    });

    test('badRequest is NOT retryable', () {
      final YdbStatusException error = YdbStatusException(
        status: YdbStatusCode.badRequest,
        message: 'msg',
      );

      expect(error.isRetryable, isFalse);
    });

    test('unauthorized is NOT retryable', () {
      final YdbStatusException error = YdbStatusException(
        status: YdbStatusCode.unauthorized,
        message: 'msg',
      );

      expect(error.isRetryable, isFalse);
    });
  });

  group('YdbStatusException.toString', () {
    test('contains status and message', () {
      final YdbStatusException error = YdbStatusException(
        status: YdbStatusCode.internalError,
        message: 'Something went wrong',
      );

      final String text = error.toString();

      expect(text, contains('internalError'));
      expect(text, contains('Something went wrong'));
    });

    test('prints issues if provided', () {
      final YdbStatusException error = YdbStatusException(
        status: YdbStatusCode.genericError,
        message: 'Error',
        issues: <String>['Issue A', 'Issue B'],
      );

      final String text = error.toString();

      expect(text, contains('Issue A'));
      expect(text, contains('Issue B'));
    });
  });
}

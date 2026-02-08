import 'package:flutter_test/flutter_test.dart';
import 'package:protobuf/well_known_types/google/protobuf/any.pb.dart'
    as google_any;
import 'package:ydb_flutter_sdk/src/errors/errors.dart';
import 'package:ydb_flutter_sdk/src/generated/generated.dart' as ydb;
import 'package:ydb_flutter_sdk/src/transport/grpc/operation_unpacker.dart';

void main() {
  group('OperationUnpacker - Success Cases', () {
    test('Unpacks successful operation with result', () {
      // Create a successful operation with a CreateSessionResult payload
      final response = ydb.CreateSessionResult()..sessionId = 'test-session-id';

      final operation = ydb.Operation()
        ..ready = true
        ..status = ydb.StatusIds_StatusCode.SUCCESS
        ..result = (google_any.Any()
          ..typeUrl = 'type.googleapis.com/Ydb.Table.CreateSessionResult'
          ..value = response.writeToBuffer());

      final result = OperationUnpacker.unpack(
        operation,
        () => ydb.CreateSessionResult(),
      );

      expect(result.sessionId, 'test-session-id');
    });

    test('Unpacks successful operation without result', () {
      // Some operations like DeleteSession don't return results
      final operation = ydb.Operation()
        ..ready = true
        ..status = ydb.StatusIds_StatusCode.SUCCESS;
      // No result field set

      final result = OperationUnpacker.unpack(
        operation,
        () => ydb.DeleteSessionResponse(),
      );

      expect(result, isA<ydb.DeleteSessionResponse>());
    });

    test('Unpacks operation with complex result', () {
      // Create ExecuteQueryResult with result sets
      final response = ydb.ExecuteQueryResult()
        ..resultSets.add(ydb.ResultSet()
          ..columns.add(ydb.Column()
            ..name = 'id'
            ..type = (ydb.Type()..typeId = ydb.Type_PrimitiveTypeId.INT32)));

      final operation = ydb.Operation()
        ..ready = true
        ..status = ydb.StatusIds_StatusCode.SUCCESS
        ..result = (google_any.Any()
          ..typeUrl = 'type.googleapis.com/Ydb.Table.ExecuteQueryResult'
          ..value = response.writeToBuffer());

      final result = OperationUnpacker.unpack(
        operation,
        () => ydb.ExecuteQueryResult(),
      );

      expect(result.resultSets.length, 1);
      expect(result.resultSets[0].columns[0].name, 'id');
    });
  });

  group('OperationUnpacker - Error Cases', () {
    test('Throws exception when operation not ready', () {
      final operation = ydb.Operation()
        ..ready = false
        ..id = 'pending-operation-123'
        ..status = ydb.StatusIds_StatusCode.SUCCESS;

      expect(
        () => OperationUnpacker.unpack(
          operation,
          () => ydb.CreateSessionResponse(),
        ),
        throwsA(isA<YdbClientException>().having(
          (e) => e.toString(),
          'message',
          contains('Operation not ready yet'),
        )),
      );
    });

    test('Throws exception with single issue message', () {
      final operation = ydb.Operation()
        ..ready = true
        ..status = ydb.StatusIds_StatusCode.NOT_FOUND
        ..issues.add(ydb.IssueMessage()
          ..message = 'Table not found'
          ..severity = 1);

      expect(
        () => OperationUnpacker.unpack(
          operation,
          () => ydb.CreateSessionResponse(),
        ),
        throwsA(isA<YdbStatusException>()
            .having((e) => e.status, 'status', YdbStatusCode.notFound)
            .having((e) => e.message, 'message', 'Table not found')),
      );
    });

    test('Throws exception with multiple issue messages', () {
      final operation = ydb.Operation()
        ..ready = true
        ..status = ydb.StatusIds_StatusCode.BAD_REQUEST
        ..issues.addAll([
          ydb.IssueMessage()..message = 'Invalid parameter: id',
          ydb.IssueMessage()..message = 'Invalid parameter: name',
        ]);

      expect(
        () => OperationUnpacker.unpack(
          operation,
          () => ydb.CreateSessionResponse(),
        ),
        throwsA(isA<YdbStatusException>()
            .having((e) => e.status, 'status', YdbStatusCode.badRequest)
            .having((e) => e.message, 'message',
                'Invalid parameter: id; Invalid parameter: name')),
      );
    });

    test('Throws exception without issue messages', () {
      final operation = ydb.Operation()
        ..ready = true
        ..status = ydb.StatusIds_StatusCode.INTERNAL_ERROR;
      // No issues

      expect(
        () => OperationUnpacker.unpack(
          operation,
          () => ydb.CreateSessionResponse(),
        ),
        throwsA(isA<YdbStatusException>()
            .having((e) => e.status, 'status', YdbStatusCode.internalError)
            .having((e) => e.message, 'message',
                contains('Operation failed with status'))),
      );
    });
  });

  group('OperationUnpacker - Status Code Mapping', () {
    void testStatusMapping(
      ydb.StatusIds_StatusCode protoStatus,
      YdbStatusCode expectedStatus,
      String testName,
    ) {
      test(testName, () {
        final operation = ydb.Operation()
          ..ready = true
          ..status = protoStatus
          ..issues.add(ydb.IssueMessage()..message = 'Test error');

        expect(
          () => OperationUnpacker.unpack(
            operation,
            () => ydb.CreateSessionResponse(),
          ),
          throwsA(isA<YdbStatusException>()
              .having((e) => e.status, 'status', expectedStatus)),
        );
      });
    }

    testStatusMapping(
      ydb.StatusIds_StatusCode.BAD_REQUEST,
      YdbStatusCode.badRequest,
      'Maps BAD_REQUEST',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.UNAUTHORIZED,
      YdbStatusCode.unauthorized,
      'Maps UNAUTHORIZED',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.INTERNAL_ERROR,
      YdbStatusCode.internalError,
      'Maps INTERNAL_ERROR',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.ABORTED,
      YdbStatusCode.aborted,
      'Maps ABORTED',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.UNAVAILABLE,
      YdbStatusCode.unavailable,
      'Maps UNAVAILABLE',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.OVERLOADED,
      YdbStatusCode.overload,
      'Maps OVERLOADED',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.SCHEME_ERROR,
      YdbStatusCode.schemeError,
      'Maps SCHEME_ERROR',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.GENERIC_ERROR,
      YdbStatusCode.genericError,
      'Maps GENERIC_ERROR',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.TIMEOUT,
      YdbStatusCode.timeout,
      'Maps TIMEOUT',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.BAD_SESSION,
      YdbStatusCode.badRequest,
      'Maps BAD_SESSION to badRequest',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.PRECONDITION_FAILED,
      YdbStatusCode.preconditionFailed,
      'Maps PRECONDITION_FAILED',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.ALREADY_EXISTS,
      YdbStatusCode.alreadyExists,
      'Maps ALREADY_EXISTS',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.NOT_FOUND,
      YdbStatusCode.notFound,
      'Maps NOT_FOUND',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.SESSION_EXPIRED,
      YdbStatusCode.aborted,
      'Maps SESSION_EXPIRED to aborted',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.CANCELLED,
      YdbStatusCode.cancelled,
      'Maps CANCELLED',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.UNDETERMINED,
      YdbStatusCode.unspecified,
      'Maps UNDETERMINED to unspecified',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.UNSUPPORTED,
      YdbStatusCode.unsupported,
      'Maps UNSUPPORTED',
    );

    testStatusMapping(
      ydb.StatusIds_StatusCode.SESSION_BUSY,
      YdbStatusCode.aborted,
      'Maps SESSION_BUSY to aborted',
    );
  });

  group('OperationUnpacker - Edge Cases', () {
    test('Handles empty issues list', () {
      final operation = ydb.Operation()
        ..ready = true
        ..status = ydb.StatusIds_StatusCode.GENERIC_ERROR
        ..issues.clear();

      expect(
        () => OperationUnpacker.unpack(
          operation,
          () => ydb.CreateSessionResponse(),
        ),
        throwsA(isA<YdbStatusException>().having(
          (e) => e.message,
          'message',
          contains('Operation failed with status'),
        )),
      );
    });

    test('Handles issue with empty message', () {
      final operation = ydb.Operation()
        ..ready = true
        ..status = ydb.StatusIds_StatusCode.BAD_REQUEST
        ..issues.add(ydb.IssueMessage()..message = '');

      expect(
        () => OperationUnpacker.unpack(
          operation,
          () => ydb.CreateSessionResponse(),
        ),
        throwsA(isA<YdbStatusException>()),
      );
    });

    test('Handles very long issue message', () {
      final longMessage = 'Error: ${'A' * 1000}';
      final operation = ydb.Operation()
        ..ready = true
        ..status = ydb.StatusIds_StatusCode.BAD_REQUEST
        ..issues.add(ydb.IssueMessage()..message = longMessage);

      expect(
        () => OperationUnpacker.unpack(
          operation,
          () => ydb.CreateSessionResponse(),
        ),
        throwsA(isA<YdbStatusException>()
            .having((e) => e.message, 'message', longMessage)),
      );
    });

    test('Handles nested issues (issue with sub-issues)', () {
      final parentIssue = ydb.IssueMessage()
        ..message = 'Parent error'
        ..issues.addAll([
          ydb.IssueMessage()..message = 'Sub-error 1',
          ydb.IssueMessage()..message = 'Sub-error 2',
        ]);

      final operation = ydb.Operation()
        ..ready = true
        ..status = ydb.StatusIds_StatusCode.SCHEME_ERROR
        ..issues.add(parentIssue);

      expect(
        () => OperationUnpacker.unpack(
          operation,
          () => ydb.CreateSessionResponse(),
        ),
        throwsA(isA<YdbStatusException>()
            .having((e) => e.message, 'message', 'Parent error')),
      );
    });

    test('Handles unpacking failure', () {
      // Create an operation with mismatched result type
      final wrongResponse = ydb.ExecuteQueryResult();

      final operation = ydb.Operation()
        ..ready = true
        ..status = ydb.StatusIds_StatusCode.SUCCESS
        ..result = (google_any.Any()
          ..typeUrl = 'type.googleapis.com/Ydb.Query.ExecuteQueryResult'
          ..value = wrongResponse.writeToBuffer());

      // Try to unpack as different type
      expect(
        () => OperationUnpacker.unpack(
          operation,
          () => ydb.CreateSessionResult(),
        ),
        throwsA(isA<YdbClientException>().having(
          (e) => e.toString(),
          'message',
          contains('Failed to unpack operation result'),
        )),
      );
    });
  });
}

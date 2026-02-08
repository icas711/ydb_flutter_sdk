/// Operation wrapper handler for YDB gRPC responses.
///
/// YDB wraps all gRPC responses in an Operation message. This class handles
/// unpacking the Operation wrapper and extracting the actual result.
library;

import 'package:protobuf/protobuf.dart';
import 'package:ydb_flutter_sdk/src/generated/ydb_issue_message.pb.dart';

import '../../errors/errors.dart';
import '../../generated/ydb_operation.pb.dart' as op_pb;
import '../../generated/ydb_status_codes.pbenum.dart' as status_pb;

/// Unpacks YDB Operation wrapper and extracts result.
class OperationUnpacker {
  /// Unpacks Operation and returns the result payload.
  ///
  /// Throws [YdbStatusException] if the operation failed.
  /// Throws [YdbException] if the operation is not ready.
  static T unpack<T extends GeneratedMessage>(
    op_pb.Operation operation,
    T Function() createEmpty,
  ) {
    // Check if operation is ready
    if (!operation.ready) {
      throw YdbClientException(
        'Operation not ready yet (id: ${operation.id})',
      );
    }

    // Check status
    if (operation.status != status_pb.StatusIds_StatusCode.SUCCESS) {
      throw _createExceptionFromOperation(operation);
    }

    // Unpack result from Any type
    if (!operation.hasResult()) {
      // Some operations don't return results (e.g., DeleteSession)
      return createEmpty();
    }

    try {
      final T result = createEmpty();
      operation.result.unpackInto(result);
      return result;
    } catch (e) {
      throw YdbClientException(
        'Failed to unpack operation result: $e',
      );
    }
  }

  /// Creates exception from failed Operation.
  static YdbStatusException _createExceptionFromOperation(
      op_pb.Operation operation) {
    final YdbStatusCode statusCode = _mapStatusCode(operation.status);
    final List<String> issues =
        operation.issues.map((IssueMessage i) => i.message).toList();
    final String message = issues.isNotEmpty
        ? issues.join('; ')
        : 'Operation failed with status: ${operation.status}';

    return YdbStatusException(
      status: statusCode,
      message: message,
    );
  }

  /// Maps protobuf status code to SDK StatusCode.
  static YdbStatusCode _mapStatusCode(
      status_pb.StatusIds_StatusCode protoStatus) {
    switch (protoStatus) {
      case status_pb.StatusIds_StatusCode.SUCCESS:
        return YdbStatusCode.success;
      case status_pb.StatusIds_StatusCode.BAD_REQUEST:
        return YdbStatusCode.badRequest;
      case status_pb.StatusIds_StatusCode.UNAUTHORIZED:
        return YdbStatusCode.unauthorized;
      case status_pb.StatusIds_StatusCode.INTERNAL_ERROR:
        return YdbStatusCode.internalError;
      case status_pb.StatusIds_StatusCode.ABORTED:
        return YdbStatusCode.aborted;
      case status_pb.StatusIds_StatusCode.UNAVAILABLE:
        return YdbStatusCode.unavailable;
      case status_pb.StatusIds_StatusCode.OVERLOADED:
        return YdbStatusCode.overload;
      case status_pb.StatusIds_StatusCode.SCHEME_ERROR:
        return YdbStatusCode.schemeError;
      case status_pb.StatusIds_StatusCode.GENERIC_ERROR:
        return YdbStatusCode.genericError;
      case status_pb.StatusIds_StatusCode.TIMEOUT:
        return YdbStatusCode.timeout;
      case status_pb.StatusIds_StatusCode.BAD_SESSION:
        return YdbStatusCode.badRequest;
      case status_pb.StatusIds_StatusCode.PRECONDITION_FAILED:
        return YdbStatusCode.preconditionFailed;
      case status_pb.StatusIds_StatusCode.ALREADY_EXISTS:
        return YdbStatusCode.alreadyExists;
      case status_pb.StatusIds_StatusCode.NOT_FOUND:
        return YdbStatusCode.notFound;
      case status_pb.StatusIds_StatusCode.SESSION_EXPIRED:
        return YdbStatusCode.aborted;
      case status_pb.StatusIds_StatusCode.CANCELLED:
        return YdbStatusCode.cancelled;
      case status_pb.StatusIds_StatusCode.UNDETERMINED:
        return YdbStatusCode.unspecified;
      case status_pb.StatusIds_StatusCode.UNSUPPORTED:
        return YdbStatusCode.unsupported;
      case status_pb.StatusIds_StatusCode.SESSION_BUSY:
        return YdbStatusCode.aborted;
      default:
        return YdbStatusCode.unspecified;
    }
  }
}

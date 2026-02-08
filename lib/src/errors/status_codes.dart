enum YdbStatusCode {
  unspecified,
  success,
  badRequest,
  unauthorized,
  internalError,
  aborted,
  unavailable,
  overload,
  schemeError,
  genericError,
  timeout,
  cancelled,
  unsupported,
  preconditionFailed,
  notFound,
  alreadyExists,
  permissionDenied,
  resourceExhausted,
  failedPrecondition,
  abortedTransaction,
  unauthenticated,
}

extension YdbStatusCodeX on YdbStatusCode {
  bool get isSuccess => this == YdbStatusCode.success;

  static YdbStatusCode fromString(String value) {
    return YdbStatusCode.values.firstWhere(
      (YdbStatusCode e) => e.name.toUpperCase() == value.toUpperCase(),
      orElse: () => YdbStatusCode.unspecified,
    );
  }
}

/// This file defines the IYdbException interface, which serves as a base for all exceptions in the YDB Flutter SDK.
/// It includes a message, an optional cause, and an optional stack trace. The toString method provides a formatted string representation of the exception, including the cause if available.
/// Example usage:
/// ```dart
/// void handleResponse(Map<String, dynamic> json) {
///  final status =
///      YdbStatusCodeX.fromString(json['status']);
///  if (!status.isSuccess) {
///    throw YdbStatusException(
///      status: status,
///      message: json['message'] ?? 'YDB error',
///      issues: (json['issues'] as List?)
///              ?.cast<String>() ??
///          [],
///    );
///  }
/// }
/// try {
///  await client.query(...);
/// } on YdbStatusException catch (e) {
///   if (e.isRetryable) retry();
/// } on YdbNetworkException {
///   showOffline();
/// } on YdbClientException {
///   fixBug();
/// }
/// ```
abstract class YdbException implements Exception {
  final String message;
  final Object? cause;
  final StackTrace? stackTrace;

  const YdbException(
    this.message, {
    this.cause,
    this.stackTrace,
  });

  @override
  String toString() {
    final StringBuffer buffer = StringBuffer()
      ..write(runtimeType)
      ..write(': ')
      ..write(message);

    if (cause != null) {
      buffer.write('\nCause: $cause');
    }

    return buffer.toString();
  }
}

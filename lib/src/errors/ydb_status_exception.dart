import 'status_codes.dart';
import 'ydb_exception.dart';

class YdbStatusException extends YdbException {
  final YdbStatusCode status;
  final List<String> issues;

  const YdbStatusException({
    required this.status,
    required String message,
    this.issues = const <String>[],
    Object? cause,
    StackTrace? stackTrace,
  }) : super(
          message,
          cause: cause,
          stackTrace: stackTrace,
        );

  bool get isRetryable =>
      status == YdbStatusCode.aborted ||
      status == YdbStatusCode.unavailable ||
      status == YdbStatusCode.overload ||
      status == YdbStatusCode.timeout;

  @override
  String toString() {
    final StringBuffer buffer = StringBuffer(super.toString())
      ..write('\nStatus: $status');

    if (issues.isNotEmpty) {
      buffer.write('\nIssues:');
      for (final String issue in issues) {
        buffer.write('\n - $issue');
      }
    }

    return buffer.toString();
  }

  factory YdbStatusException.fromJson(Map<String, dynamic> json) {
    return YdbStatusException(
      status: YdbStatusCode.values.firstWhere(
        (YdbStatusCode code) => code.name == json['status'],
        orElse: () => YdbStatusCode.unavailable,
      ),
      issues: List<String>.from(json['issues'] ?? <String>[]),
      message: json['message'] ?? 'Unknown error',
    );
  }
}

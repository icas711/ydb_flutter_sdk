import 'ydb_exception.dart';

class YdbNetworkException extends YdbException {
  final int? statusCode;
  final String? endpoint;

  const YdbNetworkException(
    super.message, {
    this.statusCode,
    this.endpoint,
    super.cause,
    super.stackTrace,
  });

  bool get isTimeout => message.toLowerCase().contains('timeout');

  @override
  String toString() {
    return '${super.toString()}'
        '${statusCode != null ? '\nHTTP status: $statusCode' : ''}'
        '${endpoint != null ? '\nEndpoint: $endpoint' : ''}';
  }
}

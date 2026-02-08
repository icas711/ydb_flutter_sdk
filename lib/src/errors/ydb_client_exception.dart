import 'ydb_exception.dart';

class YdbClientException extends YdbException {
  const YdbClientException(
    super.message, {
    super.cause,
    super.stackTrace,
  });
}

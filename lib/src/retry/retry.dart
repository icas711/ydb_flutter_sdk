import '../auth/auth_provider.dart';
import 'retry_executor.dart';
import 'retry_policy.dart';
import 'retry_settings.dart';

export 'exponential_backoff.dart';
export 'retry_executor.dart';
export 'retry_policy.dart';
export 'retry_settings.dart';

/// Execute an operation with retry logic.
///
/// Convenience wrapper around [RetryExecutor] for simple retry scenarios.
///
/// Example:
/// ```dart
/// final result = await withRetry(
///   () => httpClient.get(url),
///   RetrySettings(maxRetries: 3),
///   auth: authProvider,
/// );
/// ```
Future<T> withRetry<T>(
  Future<T> Function() operation,
  RetrySettings settings, {
  AuthProvider? auth,
}) async {
  final YdbRetryPolicy policy = YdbRetryPolicy(
    maxRetries: settings.maxRetries,
    initialDelay: settings.initialDelay,
    maxDelay: settings.maxDelay,
    multiplier: settings.multiplier,
  );

  final RetryExecutor executor = RetryExecutor(
    policy: policy,
    auth: auth,
  );

  return executor.execute(operation);
}

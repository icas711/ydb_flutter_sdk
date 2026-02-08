import '../auth/auth_provider.dart';
import '../errors/errors.dart';
import 'retry_policy.dart';

class RetryExecutor {
  final RetryPolicy policy;
  final AuthProvider? auth;

  RetryExecutor({
    required this.policy,
    this.auth,
  });

  Future<T> execute<T>(
    Future<T> Function() operation,
  ) async {
    int attempt = 0;

    while (true) {
      try {
        return await operation();
      } on YdbException catch (e) {
        final RetryDecision decision = policy.decide(e, attempt);

        switch (decision) {
          case RetryDecision.retry:
            await Future.delayed(policy.backoff(attempt));
            attempt++;
            continue;

          case RetryDecision.refreshAuthAndRetry:
            await auth?.refresh();
            attempt++;
            continue;

          case RetryDecision.noRetry:
            rethrow;
        }
      }
    }
  }
}

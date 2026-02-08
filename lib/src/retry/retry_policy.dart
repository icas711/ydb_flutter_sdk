import 'dart:math' show pow;

import '../errors/errors.dart';

enum RetryDecision {
  retry,
  noRetry,
  refreshAuthAndRetry,
}

abstract interface class RetryPolicy {
  RetryDecision decide(
    YdbException error,
    int attempt,
  );

  Duration backoff(int attempt);
}

class YdbRetryPolicy implements RetryPolicy {
  final int maxRetries;
  final Duration initialDelay;
  final Duration maxDelay;
  final double multiplier;

  const YdbRetryPolicy({
    this.maxRetries = 3,
    this.initialDelay = const Duration(seconds: 1),
    this.maxDelay = const Duration(seconds: 30),
    this.multiplier = 2.0,
  });

  @override
  RetryDecision decide(YdbException error, int attempt) {
    if (attempt >= maxRetries) return RetryDecision.noRetry;

    if (error is YdbStatusException) {
      if (error.status == YdbStatusCode.unauthenticated) {
        return RetryDecision.refreshAuthAndRetry;
      }
      if (error.isRetryable) {
        return RetryDecision.retry;
      }
    }

    if (error is YdbNetworkException) {
      return RetryDecision.retry;
    }

    return RetryDecision.noRetry;
  }

  @override
  Duration backoff(int attempt) {
    final Duration delay = initialDelay * pow(multiplier, attempt).toInt();

    return delay < maxDelay ? delay : maxDelay;
  }
}

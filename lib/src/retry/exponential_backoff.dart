import 'retry_settings.dart';

class ExponentialBackoff {
  final RetrySettings settings;

  ExponentialBackoff({
    this.settings = const RetrySettings(),
  });

  Duration getDelay(int attempt) {
    final Duration delay =
        settings.initialDelay * (settings.multiplier * (attempt - 1));
    return delay < settings.maxDelay ? delay : settings.maxDelay;
  }
}

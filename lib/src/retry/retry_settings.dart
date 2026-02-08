class RetrySettings {
  final int maxRetries;
  final Duration initialDelay;
  final Duration maxDelay;
  final double multiplier;
  final bool idempotent;

  const RetrySettings({
    this.maxRetries = 3,
    this.initialDelay = const Duration(seconds: 1),
    this.maxDelay = const Duration(seconds: 30),
    this.multiplier = 2.0,
    this.idempotent = true,
  });
}

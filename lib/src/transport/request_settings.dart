class RequestSettings {
  final int timeoutMs;
  final bool collectStats;

  const RequestSettings({this.timeoutMs = 5000, this.collectStats = false});

  Map<String, dynamic> toJson() => <String, dynamic>{
    'timeout_ms': timeoutMs,
    'collect_stats': collectStats,
  };
}

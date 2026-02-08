import '../auth/credentials.dart';
import '../retry/retry.dart';

/// Transport type for YDB connections.
enum TransportType {
  /// HTTP/HTTPS transport (REST API)
  http,

  /// gRPC transport (binary protocol, more efficient)
  grpc,

  /// Auto-detect based on endpoint scheme
  /// - grpc:// or grpcs:// -> gRPC
  /// - http:// or https:// -> HTTP
  auto,
}

class DriverConfig {
  final String endpoint;
  final String database;
  final YdbCredentials credentials;
  final Duration timeout;
  final RetrySettings? retrySettings;
  final TransportType transportType;
  final bool useTls;

  const DriverConfig._({
    required this.endpoint,
    required this.database,
    required this.credentials,
    required this.timeout,
    required this.retrySettings,
    required this.transportType,
    required this.useTls,
  });

  factory DriverConfig({
    required String endpoint,
    required String database,
    required YdbCredentials credentials,
    Duration? timeout,
    RetrySettings? retrySettings,
    TransportType? transportType,
    bool? useTls,
  }) {
    // Auto-detect transport type from endpoint scheme if not specified
    final TransportType effectiveTransportType =
        transportType ?? TransportType.auto;
    final TransportType finalTransportType =
        resolveTransportType(endpoint, effectiveTransportType);

    // Auto-detect TLS based on endpoint scheme if not specified
    final bool effectiveUseTls = useTls ?? shouldUseTls(endpoint);

    final DriverConfig config = DriverConfig._(
      endpoint: endpoint,
      database: database,
      credentials: credentials,
      timeout: timeout ?? const Duration(seconds: 10),
      retrySettings: retrySettings,
      transportType: finalTransportType,
      useTls: effectiveUseTls,
    );

    config._validate();
    return config;
  }

  /// Resolve transport type from endpoint scheme.
  static TransportType resolveTransportType(
      String endpoint, TransportType requested) {
    if (requested != TransportType.auto) {
      return requested;
    }

    final String lower = endpoint.toLowerCase();
    if (lower.startsWith('grpc://') || lower.startsWith('grpcs://')) {
      return TransportType.grpc;
    } else if (lower.startsWith('http://') || lower.startsWith('https://')) {
      return TransportType.http;
    }

    // Default to gRPC for YDB (most common)
    return TransportType.grpc;
  }

  /// Determine if TLS should be used based on endpoint scheme.
  static bool shouldUseTls(String endpoint) {
    final String lower = endpoint.toLowerCase();
    if (lower.startsWith('https://') || lower.startsWith('grpcs://')) {
      return true;
    } else if (lower.startsWith('http://') || lower.startsWith('grpc://')) {
      return false;
    }

    // Default to TLS for security
    return true;
  }

  void _validate() {
    final Uri? uri = Uri.tryParse(endpoint);
    if (uri == null) {
      throw ArgumentError('Invalid endpoint: $endpoint');
    }
    if (!uri.hasScheme) {
      throw ArgumentError(
          'Endpoint must include scheme (http/https/grpc/grpcs): $endpoint');
    }

    if (database.isEmpty || !database.startsWith('/')) {
      throw ArgumentError(
          'Database path must be non-empty and start with "/": $database');
    }
  }

  @override
  String toString() => 'DriverConfig(endpoint: $endpoint, database: $database, '
      'timeout: $timeout, transport: $transportType, tls: $useTls, '
      'retry: $retrySettings)';
}

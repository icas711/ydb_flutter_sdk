import '../auth/credentials.dart';
import '../client/driver_config.dart';
import '../retry/retry_settings.dart';
import 'grpc/grpc_transport.dart';
import 'http/http_transport.dart';
import 'i_ydb_transport.dart';

class TransportFactory {
  static IYdbTransport create({
    required String endpoint,
    required Duration timeout,
    required YdbCredentials credentials,
    required String database,
    RetrySettings? retrySettings,
    TransportType? transportType,
    bool? useTls,
  }) {
    // Determine transport type
    final TransportType effectiveType = transportType ?? TransportType.auto;
    final TransportType finalType =
        DriverConfig.resolveTransportType(endpoint, effectiveType);

    // Determine TLS usage
    final bool effectiveTls = useTls ?? DriverConfig.shouldUseTls(endpoint);

    switch (finalType) {
      case TransportType.http:
        return HttpTransport(
          endpoint: endpoint,
          timeout: timeout,
          credentials: credentials,
          database: database,
          retrySettings: retrySettings ?? const RetrySettings(),
        );

      case TransportType.grpc:
        return GrpcTransport(
          endpoint: endpoint,
          timeout: timeout,
          credentials: credentials,
          database: database,
          retrySettings: retrySettings ?? const RetrySettings(),
          useTls: effectiveTls,
        );

      case TransportType.auto:
        throw StateError('TransportType.auto should have been resolved');
    }
  }
}

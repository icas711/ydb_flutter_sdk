import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

import '../../auth/auth_provider.dart';
import '../../auth/credentials.dart';
import '../../errors/errors.dart';
import '../../retry/retry.dart';
import '../i_ydb_transport.dart';

class HttpTransport implements IYdbTransport {
  static final Logger _logger = Logger('HttpTransport');

  final String endpoint;
  final Duration timeout;
  final YdbCredentials credentials;
  final String database;
  final RetrySettings retrySettings;

  late final http.Client _client;
  bool _initialized = false;

  HttpTransport({
    required this.endpoint,
    required this.timeout,
    required this.credentials,
    required this.database,
    required this.retrySettings,
  });

  @override
  Future<void> initialize() async {
    if (_initialized) return;
    _client = http.Client();
    _initialized = true;
  }

  @override
  Future<void> close() async {
    _client.close();
  }

  @override
  Future<T> send<T>({
    required String endpoint,
    required Object? body,
    required T Function(Object? json) decoder,
    Map<String, String>? headers,
  }) async {
    if (!_initialized) {
      throw StateError('HttpTransport is not initialized');
    }

    Future<T> operation() async {
      final String? token = await credentials.getAuthToken();

      // Construct full URL: endpoint parameter is a path like "/database/query/v1/execute"
      // this.endpoint is the base URL like "https://ydb.serverless.yandexcloud.net:2135"
      final String fullUrl = '${this.endpoint}$endpoint';
      _logger.info('Making request to: $fullUrl');
      final Uri uri = Uri.parse(fullUrl);

      final Map<String, String> requestHeaders = <String, String>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'X-YDB-Database': database,
        if (token != null) 'Authorization': token,
        ...?headers,
      };

      final http.Response response = await _client
          .post(
            uri,
            headers: requestHeaders,
            body: body != null ? jsonEncode(body) : null,
          )
          .timeout(timeout);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final json =
            response.body.isNotEmpty ? jsonDecode(response.body) : null;
        return decoder(json);
      }

      throw _mapHttpError(response);
    }

    // Use retry logic with proper settings
    return withRetry(
      operation,
      retrySettings,
      auth: credentials is AuthProvider ? credentials as AuthProvider : null,
    );
  }

  YdbException _mapHttpError(http.Response response) {
    try {
      final json = jsonDecode(response.body);
      return YdbStatusException.fromJson(json);
    } catch (_) {
      return YdbNetworkException(
        'HTTP ${response.statusCode}: ${response.reasonPhrase}',
      );
    }
  }
}

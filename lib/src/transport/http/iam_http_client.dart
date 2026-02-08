import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

import '../i_ydb_transport.dart';

/// Simple HTTP client wrapper for IAM API requests.
///
/// This is NOT a YDB transport - it's a simple HTTP client for making
/// requests to Yandex Cloud IAM API for token exchange.
///
/// Example:
/// ```dart
/// final iamClient = IamHttpClient(
///   baseUrl: 'https://iam.api.cloud.yandex.net',
/// );
/// ```
class IamHttpClient implements IYdbTransport {
  static final Logger _logger = Logger('IamHttpClient');

  final String baseUrl;
  final Duration timeout;
  late final http.Client _client;
  bool _initialized = false;

  IamHttpClient({
    required this.baseUrl,
    this.timeout = const Duration(seconds: 10),
  });

  @override
  Future<void> initialize() async {
    if (_initialized) return;
    _client = http.Client();
    _initialized = true;
    _logger.fine('IamHttpClient initialized with baseUrl: $baseUrl');
  }

  @override
  Future<void> close() async {
    _client.close();
    _initialized = false;
  }

  @override
  Future<T> send<T>({
    required String endpoint,
    required Object? body,
    required T Function(Object? json) decoder,
    Map<String, String>? headers,
  }) async {
    if (!_initialized) {
      await initialize();
    }

    final String url = '$baseUrl$endpoint';
    _logger.fine('POST $url');

    try {
      final http.Response response = await _client
          .post(
            Uri.parse(url),
            headers: <String, String>{
              'Content-Type': 'application/json',
              ...?headers,
            },
            body: jsonEncode(body),
          )
          .timeout(timeout);

      _logger.fine('Response status: ${response.statusCode}');

      if (response.statusCode != 200) {
        final String errorBody = response.body;
        _logger.warning('IAM API error: $errorBody');
        throw Exception(
          'IAM API request failed with status ${response.statusCode}: $errorBody',
        );
      }

      final Object? json = jsonDecode(response.body);
      return decoder(json);
    } catch (e) {
      _logger.severe('IAM HTTP request failed', e);
      rethrow;
    }
  }
}

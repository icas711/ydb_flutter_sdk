import 'package:ydb_flutter_sdk/src/errors/errors.dart';
import 'package:ydb_flutter_sdk/src/transport/i_ydb_transport.dart';

/// Mock implementation of YDB transport for testing purposes.
///
/// Allows configuring responses and errors for specific endpoints.
/// Supports both response and error simulation.
///
/// Example:
/// ```dart
/// final transport = MockTransport();
/// transport
///   ..whenRequest('/query')
///   ..thenRespond({'status': 'ok'})
///   ..thenThrow(YdbStatusException(status: YdbStatusCode.aborted));
/// ```
class MockTransport implements IYdbTransport {
  final Map<String, List<dynamic>> _responses = <String, List<dynamic>>{};
  String _currentEndpoint = '';
  void Function(String endpoint, Map<String, dynamic> body)? _requestCapture;

  @override
  Future<void> initialize() async {}

  @override
  Future<void> close() async {}

  /// Configure the endpoint for the next thenRespond or thenThrow call.
  void whenRequest(String endpoint) {
    _currentEndpoint = endpoint;
    _responses.putIfAbsent(_currentEndpoint, () => <dynamic>[]);
  }

  /// Add a successful response for the current endpoint.
  /// Responses are returned in the order they were added (FIFO).
  void thenRespond(Object? response) {
    if (_currentEndpoint.isEmpty) {
      throw StateError('Call whenRequest() before thenRespond()');
    }
    _responses[_currentEndpoint]!.add(response);
  }

  /// Add a dynamic response generator for the current endpoint.
  void thenRespondDynamic(Object? Function() responseFactory) {
    if (_currentEndpoint.isEmpty) {
      throw StateError('Call whenRequest() before thenRespondDynamic()');
    }
    _responses[_currentEndpoint]!.add(responseFactory);
  }

  /// Add an error to be thrown for the current endpoint.
  /// Errors are thrown in the order they were added (FIFO).
  void thenThrow(YdbException error) {
    if (_currentEndpoint.isEmpty) {
      throw StateError('Call whenRequest() before thenThrow()');
    }
    _responses[_currentEndpoint]!.add(error);
  }

  /// Add an error with custom message and status code.
  void thenThrowError(String message, {int statusCode = 500}) {
    if (_currentEndpoint.isEmpty) {
      throw StateError('Call whenRequest() before thenThrowError()');
    }
    _responses[_currentEndpoint]!.add(
      YdbClientException('$message (status: $statusCode)'),
    );
  }

  /// Capture requests for inspection in tests.
  void captureRequest(
      void Function(String endpoint, Map<String, dynamic> body) callback) {
    _requestCapture = callback;
  }

  @override
  Future<T> send<T>({
    required String endpoint,
    required Object? body,
    required T Function(Object? json) decoder,
    Map<String, String>? headers,
  }) async {
    // Capture request if callback is set
    if (_requestCapture != null && body is Map<String, dynamic>) {
      _requestCapture!(endpoint, body);
    }

    final List<dynamic>? responses = _responses[endpoint];

    if (responses == null || responses.isEmpty) {
      throw YdbClientException(
        'No mock response configured for endpoint: $endpoint',
      );
    }

    final next = responses.removeAt(0);

    if (next is YdbException) {
      throw next;
    }

    // Handle dynamic response factories
    if (next is Function) {
      final result = next();
      return decoder(result);
    }

    return decoder(next);
  }

  /// Helper to create a success response.
  static Object? successResponse(Object? data) => data;

  /// Reset all configured responses and errors.
  void reset() {
    _responses.clear();
    _currentEndpoint = '';
  }

  /// Check if there are any pending responses for the given endpoint.
  bool hasPendingResponses(String endpoint) {
    final List<dynamic>? responses = _responses[endpoint];
    return responses != null && responses.isNotEmpty;
  }

  /// Get the number of pending responses for the given endpoint.
  int pendingResponseCount(String endpoint) {
    final List<dynamic>? responses = _responses[endpoint];
    return responses?.length ?? 0;
  }
}

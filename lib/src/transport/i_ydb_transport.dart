import 'dart:async';

abstract class IYdbTransport {
  Future<void> initialize();
  Future<void> close();

  Future<T> send<T>({
    required String endpoint,
    required Object? body,
    required T Function(Object? json) decoder,
    Map<String, String>? headers,
  });
}

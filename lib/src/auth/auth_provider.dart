abstract interface class AuthProvider {
  /// Returns actual auth headers
  Future<Map<String, String>> getHeaders();

  /// Optional: force refresh
  Future<void> refresh() async {}
}

/// Abstract base class for YDB sessions.
///
/// A session represents a logical connection to YDB and is used to execute
/// queries and transactions. Sessions are managed by [SessionPool].
abstract class Session {
  /// Unique identifier for this session.
  String get id;

  /// Whether this session has been closed.
  bool get isClosed;

  /// Close this session and release its resources.
  ///
  /// After calling close(), the session should not be used.
  Future<void> close();
}

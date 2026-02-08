import 'auth_provider.dart';
import 'i_token_provider.dart';
import 'iam_token.dart';

class YdbIamAuth implements AuthProvider {
  final ITokenProvider provider;

  IamToken? _token;
  Future<IamToken>? _refreshing;

  YdbIamAuth(this.provider);

  @override
  Future<Map<String, String>> getHeaders() async {
    if (_token == null || _token!.isExpired) {
      await _refresh();
    }
    return <String, String>{'Authorization': 'Bearer ${_token!.token}'};
  }

  @override
  Future<void> refresh() async {
    await _refresh(force: true);
  }

  Future<void> _refresh({bool force = false}) async {
    if (_refreshing != null && !force) {
      _token = await _refreshing!;
      _refreshing = null;
      return;
    }

    _refreshing = provider.fetchToken();
    _token = await _refreshing!;
    _refreshing = null;
  }
}

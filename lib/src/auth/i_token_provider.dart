import 'iam_token.dart';

abstract interface class ITokenProvider {
  Future<IamToken> fetchToken();
}

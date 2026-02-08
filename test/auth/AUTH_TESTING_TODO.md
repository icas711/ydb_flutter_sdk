# Authentication Testing TODO

## Current Status

**Implementation**: ✅ Complete  
**Testing**: ⚠️ In Progress (3/4 test files)  
**Coverage**: ~75% (JWT signer + OAuth provider + Credentials)

## Completed Tests

- ✅ `test/auth/jwt_signer_test.dart` (2 tests)
  - Creates signer with private key
  - Sign method interface test

- ✅ `test/auth/rsa_jwt_signer_test.dart` (9 tests)
  - Constructor tests
  - PEM parsing
  - PS256 signing with keyId
  - Edge cases

- ✅ `test/auth/oauth_token_provider_test.dart` (15 tests)
  - Basic IAM token exchange (3 tests)
  - Error handling (5 tests)
  - Edge cases (5 tests)
  - Transport integration (2 tests)

- ✅ `test/auth/credentials_test.dart` (24 tests) - **NEW**
  - Anonymous credentials (3 tests)
  - OAuth direct (4 tests)
  - OAuth with IAM exchange (7 tests)
  - Token provider based (6 tests)
  - Edge cases (4 tests)

## Missing Tests

### 1. Service Account Provider Tests (`test/auth/service_account_token_provider_test.dart`)

**Priority**: � High  
**Estimated effort**: 3-4 hours
**Status**: ⏳ Next in queue

#### Test Cases Needed

**JWT Creation** (4 tests):

- Creates correct JWT payload (aud, iss, iat, exp)
- JWT expires in 10 minutes
- Signs JWT with provided signer
- Handles signer errors

**IAM Exchange** (3 tests):

- Exchanges JWT for IAM token
- Sends JWT in request body
- Handles IAM API errors

**Token Management** (2 tests):

- Caches IAM token until expiration
- Re-generates JWT when IAM token expires

#### API to Test

```dart
class ServiceAccountIamTokenProvider implements ITokenProvider {
  final String serviceAccountId;
  final JwtSigner signer;
  final IYdbTransport transport;

  Future<IamToken> fetchToken();
}

abstract class JwtSigner {
  Future<String> sign(Map<String, dynamic> payload);
}
```

#### Mock JwtSigner Needed

```dart
class MockJwtSigner implements JwtSigner {
  final String signedToken;
  int signCallCount = 0;
  Map<String, dynamic>? lastPayload;

  @override
  Future<String> sign(Map<String, dynamic> payload) async {
    signCallCount++;
    lastPayload = payload;
    return signedToken;
  }
}
```

### 3. YdbAuth Factory Tests (`test/auth/ydb_auth_test.dart`)

**Priority**: 🟡 Medium  
**Estimated effort**: 2 hours

#### Test Cases Needed

**Factory Methods** (5 tests):

- `anonymous()` creates correct credentials
- `oauthDirect()` creates credentials without provider
- `oauth()` creates credentials with IAM provider
- `serviceAccount()` creates credentials with JWT provider
- `fromProvider()` accepts custom providers

**Integration** (3 tests):

- OAuth credentials exchange token via transport
- Service Account credentials sign JWT and exchange
- Custom provider credentials delegate correctly

## Implementation Notes

### Key Differences from Original Attempt

1. **Method Name**: Use `getAuthToken()`, not `getToken()`
2. **whenRequest() Chaining**: Cannot chain because it returns `void`

   ```dart
   // WRONG:
   transport.whenRequest('/iam/v1/tokens').thenRespond({...});

   // CORRECT:
   transport
     ..whenRequest('/iam/v1/tokens')
     ..thenRespond({...});
   ```

3. **JwtSigner Import**: Need proper import path

   ```dart
   import 'package:ydb_flutter_sdk/src/auth/service_account_token_provider.dart';
   ```

4. **MockTransport Enhancements**: Need new helper methods (see above)

### Test Execution

```bash
# Run all auth tests
flutter test test/auth/

# Run specific test file
flutter test test/auth/credentials_test.dart

# Run with coverage
flutter test --coverage test/auth/
```

### Coverage Goals

- **Minimum**: 80% line coverage for auth module
- **Target**: 90% line coverage
- **Edge cases**: All error paths tested

## Priority Order

1. ✅ **OAuth Token Provider** - COMPLETED (15 tests)
2. 🔴 **Credentials** - Core authentication interface (next priority)
3. 🟡 **Service Account Provider** - Production-critical but less common
4. 🟡 **YdbAuth Factory** - Integration tests, lower priority

## Estimated Total Effort

- ✅ **OAuth Token Provider**: DONE (15 tests, 100% passing)
- **Credentials**: 2-3 hours
- **Service Account Provider**: 3-4 hours
- **YdbAuth Factory**: 2 hours

**Remaining**: 7-9 hours of focused work

## Next Steps

1. ✅ ~~Start with OAuth Token Provider tests~~ - COMPLETED (15 tests)
2. ✅ ~~Add MockTransport helper methods~~ - Already present
3. **Write Credentials tests** (next priority - 2-3 hours)
4. Add Service Account tests
5. Finish with YdbAuth factory tests
6. Measure coverage with `flutter test --coverage`
7. Add integration tests with real IAM API (optional)

## References

- [AUTH.md](../AUTH.md) - Full authentication documentation
- [credentials.dart](../../lib/src/auth/credentials.dart) - Implementation
- [oauth_token_provider.dart](../../lib/src/auth/oauth_token_provider.dart)
- [service_account_token_provider.dart](../../lib/src/auth/service_account_token_provider.dart)

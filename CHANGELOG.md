## Unreleased

### Fixes

- **Authentication**:
  - Fixed JWT signature validation for Service Account authentication with Yandex Cloud IAM
  - Updated dart_jsonwebtoken to v3.3.1 for proper custom header support
  - RsaJwtSigner now correctly includes `kid` (Key ID) in JWT header before signing

### Infrastructure

- **Dependencies**: Upgraded dart_jsonwebtoken from 2.13.0 to 3.3.1

## 0.2.0 (2026-02-08) - gRPC Production Ready

### Major Features

- **Full gRPC Transport Implementation**
  - Production-ready gRPC transport for Yandex Cloud YDB
  - Complete bidirectional type conversion (SDK ↔ protobuf)
  - All 20+ YDB types supported
  - Session lifecycle management (CreateSession, ExecuteDataQuery, DeleteSession)
  - 97 new unit tests (240 total, 100% pass rate)

- **Type Converter (Milestone 1)**
  - Bidirectional conversion: SDK IYdbValue ↔ protobuf TypedValue
  - All primitives: Int8/16/32/64, Uint8/16/32/64, Float, Double, Bool, String, Utf8, Bytes
  - Date/Time: Date, Datetime, Timestamp, Interval
  - Special types: Decimal, Json, JsonDocument, Uuid
  - Containers: Optional, List, Tuple, Struct, Dict
  - Nested structures with unlimited depth
  - 45 comprehensive tests

- **Operation Unpacker (Milestone 2)**
  - Unwraps YDB Operation wrapper with protobuf Any types
  - Maps all 18 YDB status codes to SDK exceptions
  - Issue extraction and formatting
  - 30 comprehensive tests

- **GrpcTransport Integration (Milestone 3)**
  - TLS/SSL support with auto-detection (grpcs://)
  - OAuth authentication via x-ydb-auth-ticket header
  - Endpoint parsing with IPv6 support
  - Configurable timeouts and retry settings
  - 22 comprehensive tests

### Critical Fixes

- **Protobuf Compatibility**
  - Updated protobuf: 3.1.0 → 6.0.0
  - Updated protoc_plugin: 21.1.2 → 25.0.0
  - Updated grpc: 4.0.0 → 5.1.0
  - Regenerated all ~60 .pb.dart files
  - Fixed 20 export conflicts (ydb_query vs ydb_table)

- **Type Converter Bug**
  - Fixed critical bug: ternary operator with cascade notation (..) evaluated incorrectly
  - Optional/List types now correctly preserve inner type information
  - Replaced `condition ? value : pb.Type()..typeId = UTF8` with explicit if/else

- **Authentication**
  - Changed header: 'authorization' → 'x-ydb-auth-ticket'
  - Removed 'Bearer ' prefix from OAuth tokens (gRPC expects raw token)
  - Fixed all credential types (OAuth, IAM, Anonymous)

- **Type Serialization**
  - Fixed YdbTimestamp: now serializes as microseconds string (was ISO 8601)
  - Fixed YdbInterval: now serializes as microseconds string
  - Reason: deserializer uses `int.parse()`, requires numeric string

- **Extension Methods**
  - Added `getUint()` for Uint8/16/32/64 values
  - Added `getTimestamp()` for DateTime/Timestamp values

- **Code Quality**
  - Disabled overly strict `always_specify_types` lint rule
  - Fixed pubspec.yaml: sorted dependencies alphabetically
  - Removed unused code to eliminate analyzer warnings
  - Result: only 3 info-level warnings (in generated protobuf code)
  - Example app now works with UINT64 and TIMESTAMP columns

### Testing

- **240 total tests** (143 old + 97 new)
  - TypeConverter: 45 tests (primitives, containers, nested, edge cases)
  - OperationUnpacker: 30 tests (success, errors, status codes, edge cases)
  - GrpcTransport: 22 tests (initialization, auth, config, lifecycle)
  - All tests pass (100% success rate)

### Documentation

- Updated [GRPC_STATUS.md](docs/GRPC_STATUS.md) - marked Milestones 1-6 as complete
- Added production usage examples with parametrized queries
- Documented all 10+ bugs found and fixed
- Updated statistics: 810 lines of gRPC code, 800 lines of tests

### Production Ready

- Works with real Yandex Cloud YDB
- Example app: CRUD operations (load, add, delete contacts)
- All types: UINT64, UTF8, BOOL, TIMESTAMP, etc.
- Parametrized queries: INSERT with 7 params, DELETE with 1 param
- 0 compilation errors, 0 runtime errors

---

## 0.1.0-dev (2026-02-08) - HTTP Transport & Type System

### Completed

- **Type System**: Complete implementation of all YDB types
  - Primitives: Int8/16/32/64, Uint8/16/32/64, Float, Double, Bool
  - Strings: Utf8, String, Bytes
  - Temporal: Date, Datetime, Timestamp, Interval
  - Special: Decimal, Uuid, Json, JsonDocument
  - Containers: Optional, List, Tuple, Struct, Dict
  - Full JSON serialization/deserialization support

- **HTTP Transport**: Working implementation
  - HTTP/HTTPS support with TLS
  - Authentication via metadata headers
  - Retry logic with exponential backoff
  - Error handling and status codes
  - 143 passing unit tests

- **Authentication**:
  - Anonymous credentials
  - OAuth token provider
  - Service account (placeholder)

- **Examples**:
  - Basic CRUD operations
  - Transaction examples
  - Flutter widgets (3 widgets, 6 tests)

### gRPC Infrastructure (Experimental)

- **Proto files**: Generated from official YDB API
  - ~60 generated .pb.dart files
  - gRPC service stubs (Table, Query services)
  - TLS/SSL support
  - OAuth authentication via metadata
- **Limitations**:
  - Type converter not yet implemented (IYdbValue ↔ protobuf TypedValue)
  - Operation wrapper unpacking pending
  - Query/Table service integration incomplete
  - See [docs/GRPC_STATUS.md](docs/GRPC_STATUS.md) for full roadmap

### Documentation

- SDK Analysis and architecture decisions
- MVP implementation plan (10 weeks)
- Task decomposition and priorities
- Quick reference guide
- gRPC status and roadmap
- Wire format specification (HTTP v1)

### Known Limitations

- No driver/session pool yet (direct HTTP queries only)
- No retry policy (basic retry only)
- No streaming support
- Table/Query services not exposed as high-level API
- gRPC requires full type conversion implementation

### Next Release (v0.2.0) - Planned

- Complete gRPC transport (type converter, Operation unpacking)
- Driver and session pool
- Query Service with transactions
- Table Service support
- Retry policies
- CI/CD pipeline

## 0.0.1

- Initial release placeholder.

# YDB HTTP Wire Format — v1

## Status

Draft

## Purpose

Defines a stable HTTP JSON wire-format for YDB SDKs.

## Principles

1. One request = one YQL
2. Explicit types (YDB is a typed database)
3. No business logic
4. Forward-compatible (fields can be added)
5. SDK-first, not UI-first

## Endpoint

POST /v1/ydb/query
Content-Type: application/json
Authorization: Bearer <token>

Future:
/v1/ydb/scan
/v1/ydb/scheme
/v1/ydb/bulk

## Why typed values ​​instead of plain JSON?

YDB is strongly typed
Dart doesn't distinguish between int, uint, and optional
Untyped JSON => bugs

## Request

```json
{
  "query": {
    "yql": "SELECT id, name FROM users WHERE id = $id",
    "parameters": {
      "$id": {
        "type": "Uint64",
        "value": 1
      }
    }
  },
  "transaction": {
    "mode": "serializable_read_write",
    "id": null
  },
  "settings": {
    "timeout_ms": 5000,
    "collect_stats": true
  }
}
```

## Response (success)

```json
{
  "result": {
    "rows": [
      {
        "id": { "type": "Uint64", "value": 1 },
        "name": { "type": "Utf8", "value": "Alice" }
      }
    ],
    "columns": {
      "id": "Uint64",
      "name": "Utf8"
    }
  },
  "transaction": {
    "id": "tx-abc-123",
    "state": "active"
  },
  "stats": {
    "query_duration_ms": 12,
    "cpu_time_ms": 3
  }
}
```

## Query

```json
"query": {
  "yql": "string",
  "parameters": { ... }
}
```

## Parameters

```json
"$param_name": {
  "type": "<YDB_TYPE>",
  "value": <JSON>
}
```

## Optional

```json
"$description": {
  "type": "Optional",
  "value": null
}
```

or

```json
"$description": {
  "type": "Optional",
  "value": {
    "type": "Utf8",
    "value": "test"
  }
}
```

## Transaction

```json
"transaction": {
  "mode": "serializable_read_write | online_read_only | stale_read_only",
  "id": "string | null"
}
```

id == null - new transaction
id != null - continue

## Transaction (response)

```json
"transaction": {
  "id": "string",
  "state": "active | committed | rolled_back"
}
```

SDK decide:
save
pass on
commit

## Rows

```json
"rows": [
  {
    "column_name": {
      "type": "...",
      "value": ...
    }
  }
]

```

## Settings

```json
"settings": {
  "timeout_ms": 5000,
  "collect_stats": true
}

```

## Stats (optional)

```json
"stats": {
  "query_duration_ms": 12,
  "cpu_time_ms": 3,
  "read_rows": 10
}
```

## Response (error)

```json
{
  "error": {
    "code": "QUERY_ERROR",
    "message": "Syntax error near SELECT",
    "details": {
      "ydb_code": "BAD_REQUEST"
    }
  }
}
```

## Error codes (SDK-level)

| code              | meaning           |
| :---------------- | :---------------- |
| TRANSPORT_ERROR   | network / timeout |
| AUTH_ERROR        | token             |
| QUERY_ERROR       | YQL               |
| TRANSACTION_ERROR | commit / rollback |
| INTERNAL_ERROR    | backend           |

## Supported Types

| YDB         | type        | value                               |
| :---------- | :---------- | :---------------------------------- |
| Uint64      | "Uint64"    | number                              |
| Int64       | "Int64"     | number                              |
| Utf8        | "Utf8"      | string                              |
| Bool        | "Bool"      | boolean                             |
| Json        | "Json"      | object / array                      |
| Timestamp   | "Timestamp" | ISO-8601 string                     |
| Optional<T> | "Optional"  | null or { "type": T, "value": ... } |

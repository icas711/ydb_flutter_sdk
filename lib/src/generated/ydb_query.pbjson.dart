// This is a generated file - do not edit.
//
// Generated from ydb_query.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use syntaxDescriptor instead')
const Syntax$json = {
  '1': 'Syntax',
  '2': [
    {'1': 'SYNTAX_UNSPECIFIED', '2': 0},
    {'1': 'SYNTAX_YQL_V1', '2': 1},
    {'1': 'SYNTAX_PG', '2': 2},
  ],
};

/// Descriptor for `Syntax`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List syntaxDescriptor = $convert.base64Decode(
    'CgZTeW50YXgSFgoSU1lOVEFYX1VOU1BFQ0lGSUVEEAASEQoNU1lOVEFYX1lRTF9WMRABEg0KCV'
    'NZTlRBWF9QRxAC');

@$core.Deprecated('Use execModeDescriptor instead')
const ExecMode$json = {
  '1': 'ExecMode',
  '2': [
    {'1': 'EXEC_MODE_UNSPECIFIED', '2': 0},
    {'1': 'EXEC_MODE_PARSE', '2': 10},
    {'1': 'EXEC_MODE_VALIDATE', '2': 20},
    {'1': 'EXEC_MODE_EXPLAIN', '2': 30},
    {'1': 'EXEC_MODE_EXECUTE', '2': 50},
  ],
  '4': [
    {'1': 40, '2': 40},
  ],
};

/// Descriptor for `ExecMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List execModeDescriptor = $convert.base64Decode(
    'CghFeGVjTW9kZRIZChVFWEVDX01PREVfVU5TUEVDSUZJRUQQABITCg9FWEVDX01PREVfUEFSU0'
    'UQChIWChJFWEVDX01PREVfVkFMSURBVEUQFBIVChFFWEVDX01PREVfRVhQTEFJThAeEhUKEUVY'
    'RUNfTU9ERV9FWEVDVVRFEDIiBAgoECg=');

@$core.Deprecated('Use statsModeDescriptor instead')
const StatsMode$json = {
  '1': 'StatsMode',
  '2': [
    {'1': 'STATS_MODE_UNSPECIFIED', '2': 0},
    {'1': 'STATS_MODE_NONE', '2': 10},
    {'1': 'STATS_MODE_BASIC', '2': 20},
    {'1': 'STATS_MODE_FULL', '2': 30},
    {'1': 'STATS_MODE_PROFILE', '2': 40},
  ],
};

/// Descriptor for `StatsMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statsModeDescriptor = $convert.base64Decode(
    'CglTdGF0c01vZGUSGgoWU1RBVFNfTU9ERV9VTlNQRUNJRklFRBAAEhMKD1NUQVRTX01PREVfTk'
    '9ORRAKEhQKEFNUQVRTX01PREVfQkFTSUMQFBITCg9TVEFUU19NT0RFX0ZVTEwQHhIWChJTVEFU'
    'U19NT0RFX1BST0ZJTEUQKA==');

@$core.Deprecated('Use schemaInclusionModeDescriptor instead')
const SchemaInclusionMode$json = {
  '1': 'SchemaInclusionMode',
  '2': [
    {'1': 'SCHEMA_INCLUSION_MODE_UNSPECIFIED', '2': 0},
    {'1': 'SCHEMA_INCLUSION_MODE_ALWAYS', '2': 1},
    {'1': 'SCHEMA_INCLUSION_MODE_FIRST_ONLY', '2': 2},
  ],
};

/// Descriptor for `SchemaInclusionMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List schemaInclusionModeDescriptor = $convert.base64Decode(
    'ChNTY2hlbWFJbmNsdXNpb25Nb2RlEiUKIVNDSEVNQV9JTkNMVVNJT05fTU9ERV9VTlNQRUNJRk'
    'lFRBAAEiAKHFNDSEVNQV9JTkNMVVNJT05fTU9ERV9BTFdBWVMQARIkCiBTQ0hFTUFfSU5DTFVT'
    'SU9OX01PREVfRklSU1RfT05MWRAC');

@$core.Deprecated('Use execStatusDescriptor instead')
const ExecStatus$json = {
  '1': 'ExecStatus',
  '2': [
    {'1': 'EXEC_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'EXEC_STATUS_STARTING', '2': 10},
    {'1': 'EXEC_STATUS_ABORTED', '2': 20},
    {'1': 'EXEC_STATUS_CANCELLED', '2': 30},
    {'1': 'EXEC_STATUS_COMPLETED', '2': 40},
    {'1': 'EXEC_STATUS_FAILED', '2': 50},
  ],
};

/// Descriptor for `ExecStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List execStatusDescriptor = $convert.base64Decode(
    'CgpFeGVjU3RhdHVzEhsKF0VYRUNfU1RBVFVTX1VOU1BFQ0lGSUVEEAASGAoURVhFQ19TVEFUVV'
    'NfU1RBUlRJTkcQChIXChNFWEVDX1NUQVRVU19BQk9SVEVEEBQSGQoVRVhFQ19TVEFUVVNfQ0FO'
    'Q0VMTEVEEB4SGQoVRVhFQ19TVEFUVVNfQ09NUExFVEVEECgSFgoSRVhFQ19TVEFUVVNfRkFJTE'
    'VEEDI=');

@$core.Deprecated('Use createSessionRequestDescriptor instead')
const CreateSessionRequest$json = {
  '1': 'CreateSessionRequest',
};

/// Descriptor for `CreateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionRequestDescriptor =
    $convert.base64Decode('ChRDcmVhdGVTZXNzaW9uUmVxdWVzdA==');

@$core.Deprecated('Use createSessionResponseDescriptor instead')
const CreateSessionResponse$json = {
  '1': 'CreateSessionResponse',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.StatusIds.StatusCode',
      '10': 'status'
    },
    {
      '1': 'issues',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Issue.IssueMessage',
      '10': 'issues'
    },
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'sessionId'},
    {'1': 'node_id', '3': 4, '4': 1, '5': 3, '8': {}, '10': 'nodeId'},
  ],
};

/// Descriptor for `CreateSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVTZXNzaW9uUmVzcG9uc2USMQoGc3RhdHVzGAEgASgOMhkuWWRiLlN0YXR1c0lkcy'
    '5TdGF0dXNDb2RlUgZzdGF0dXMSLwoGaXNzdWVzGAIgAygLMhcuWWRiLklzc3VlLklzc3VlTWVz'
    'c2FnZVIGaXNzdWVzEiYKCnNlc3Npb25faWQYAyABKAlCB6LmKgMYgAhSCXNlc3Npb25JZBIhCg'
    'dub2RlX2lkGAQgASgDQgiy5ioEPj0gMFIGbm9kZUlk');

@$core.Deprecated('Use deleteSessionRequestDescriptor instead')
const DeleteSessionRequest$json = {
  '1': 'DeleteSessionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'sessionId'},
  ],
};

/// Descriptor for `DeleteSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVTZXNzaW9uUmVxdWVzdBImCgpzZXNzaW9uX2lkGAEgASgJQgei5ioDGIAIUglzZX'
    'NzaW9uSWQ=');

@$core.Deprecated('Use deleteSessionResponseDescriptor instead')
const DeleteSessionResponse$json = {
  '1': 'DeleteSessionResponse',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.StatusIds.StatusCode',
      '10': 'status'
    },
    {
      '1': 'issues',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Issue.IssueMessage',
      '10': 'issues'
    },
  ],
};

/// Descriptor for `DeleteSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVTZXNzaW9uUmVzcG9uc2USMQoGc3RhdHVzGAEgASgOMhkuWWRiLlN0YXR1c0lkcy'
    '5TdGF0dXNDb2RlUgZzdGF0dXMSLwoGaXNzdWVzGAIgAygLMhcuWWRiLklzc3VlLklzc3VlTWVz'
    'c2FnZVIGaXNzdWVz');

@$core.Deprecated('Use attachSessionRequestDescriptor instead')
const AttachSessionRequest$json = {
  '1': 'AttachSessionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'sessionId'},
  ],
};

/// Descriptor for `AttachSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachSessionRequestDescriptor = $convert.base64Decode(
    'ChRBdHRhY2hTZXNzaW9uUmVxdWVzdBImCgpzZXNzaW9uX2lkGAEgASgJQgei5ioDGIAIUglzZX'
    'NzaW9uSWQ=');

@$core.Deprecated('Use sessionStateDescriptor instead')
const SessionState$json = {
  '1': 'SessionState',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.StatusIds.StatusCode',
      '10': 'status'
    },
    {
      '1': 'issues',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Issue.IssueMessage',
      '10': 'issues'
    },
  ],
};

/// Descriptor for `SessionState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionStateDescriptor = $convert.base64Decode(
    'CgxTZXNzaW9uU3RhdGUSMQoGc3RhdHVzGAEgASgOMhkuWWRiLlN0YXR1c0lkcy5TdGF0dXNDb2'
    'RlUgZzdGF0dXMSLwoGaXNzdWVzGAIgAygLMhcuWWRiLklzc3VlLklzc3VlTWVzc2FnZVIGaXNz'
    'dWVz');

@$core.Deprecated('Use serializableModeSettingsDescriptor instead')
const SerializableModeSettings$json = {
  '1': 'SerializableModeSettings',
};

/// Descriptor for `SerializableModeSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serializableModeSettingsDescriptor =
    $convert.base64Decode('ChhTZXJpYWxpemFibGVNb2RlU2V0dGluZ3M=');

@$core.Deprecated('Use onlineModeSettingsDescriptor instead')
const OnlineModeSettings$json = {
  '1': 'OnlineModeSettings',
  '2': [
    {
      '1': 'allow_inconsistent_reads',
      '3': 1,
      '4': 1,
      '5': 8,
      '10': 'allowInconsistentReads'
    },
  ],
};

/// Descriptor for `OnlineModeSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onlineModeSettingsDescriptor = $convert.base64Decode(
    'ChJPbmxpbmVNb2RlU2V0dGluZ3MSOAoYYWxsb3dfaW5jb25zaXN0ZW50X3JlYWRzGAEgASgIUh'
    'ZhbGxvd0luY29uc2lzdGVudFJlYWRz');

@$core.Deprecated('Use staleModeSettingsDescriptor instead')
const StaleModeSettings$json = {
  '1': 'StaleModeSettings',
};

/// Descriptor for `StaleModeSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List staleModeSettingsDescriptor =
    $convert.base64Decode('ChFTdGFsZU1vZGVTZXR0aW5ncw==');

@$core.Deprecated('Use snapshotModeSettingsDescriptor instead')
const SnapshotModeSettings$json = {
  '1': 'SnapshotModeSettings',
};

/// Descriptor for `SnapshotModeSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotModeSettingsDescriptor =
    $convert.base64Decode('ChRTbmFwc2hvdE1vZGVTZXR0aW5ncw==');

@$core.Deprecated('Use snapshotRWModeSettingsDescriptor instead')
const SnapshotRWModeSettings$json = {
  '1': 'SnapshotRWModeSettings',
};

/// Descriptor for `SnapshotRWModeSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotRWModeSettingsDescriptor =
    $convert.base64Decode('ChZTbmFwc2hvdFJXTW9kZVNldHRpbmdz');

@$core.Deprecated('Use transactionSettingsDescriptor instead')
const TransactionSettings$json = {
  '1': 'TransactionSettings',
  '2': [
    {
      '1': 'serializable_read_write',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.SerializableModeSettings',
      '9': 0,
      '10': 'serializableReadWrite'
    },
    {
      '1': 'online_read_only',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.OnlineModeSettings',
      '9': 0,
      '10': 'onlineReadOnly'
    },
    {
      '1': 'stale_read_only',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.StaleModeSettings',
      '9': 0,
      '10': 'staleReadOnly'
    },
    {
      '1': 'snapshot_read_only',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.SnapshotModeSettings',
      '9': 0,
      '10': 'snapshotReadOnly'
    },
    {
      '1': 'snapshot_read_write',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.SnapshotRWModeSettings',
      '9': 0,
      '10': 'snapshotReadWrite'
    },
  ],
  '8': [
    {'1': 'tx_mode'},
  ],
};

/// Descriptor for `TransactionSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionSettingsDescriptor = $convert.base64Decode(
    'ChNUcmFuc2FjdGlvblNldHRpbmdzEl0KF3NlcmlhbGl6YWJsZV9yZWFkX3dyaXRlGAEgASgLMi'
    'MuWWRiLlF1ZXJ5LlNlcmlhbGl6YWJsZU1vZGVTZXR0aW5nc0gAUhVzZXJpYWxpemFibGVSZWFk'
    'V3JpdGUSSQoQb25saW5lX3JlYWRfb25seRgCIAEoCzIdLllkYi5RdWVyeS5PbmxpbmVNb2RlU2'
    'V0dGluZ3NIAFIOb25saW5lUmVhZE9ubHkSRgoPc3RhbGVfcmVhZF9vbmx5GAMgASgLMhwuWWRi'
    'LlF1ZXJ5LlN0YWxlTW9kZVNldHRpbmdzSABSDXN0YWxlUmVhZE9ubHkSTwoSc25hcHNob3Rfcm'
    'VhZF9vbmx5GAQgASgLMh8uWWRiLlF1ZXJ5LlNuYXBzaG90TW9kZVNldHRpbmdzSABSEHNuYXBz'
    'aG90UmVhZE9ubHkSUwoTc25hcHNob3RfcmVhZF93cml0ZRgFIAEoCzIhLllkYi5RdWVyeS5Tbm'
    'Fwc2hvdFJXTW9kZVNldHRpbmdzSABSEXNuYXBzaG90UmVhZFdyaXRlQgkKB3R4X21vZGU=');

@$core.Deprecated('Use transactionControlDescriptor instead')
const TransactionControl$json = {
  '1': 'TransactionControl',
  '2': [
    {'1': 'tx_id', '3': 1, '4': 1, '5': 9, '8': {}, '9': 0, '10': 'txId'},
    {
      '1': 'begin_tx',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.TransactionSettings',
      '9': 0,
      '10': 'beginTx'
    },
    {'1': 'commit_tx', '3': 10, '4': 1, '5': 8, '10': 'commitTx'},
  ],
  '8': [
    {'1': 'tx_selector'},
  ],
};

/// Descriptor for `TransactionControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionControlDescriptor = $convert.base64Decode(
    'ChJUcmFuc2FjdGlvbkNvbnRyb2wSHgoFdHhfaWQYASABKAlCB6LmKgMYgAhIAFIEdHhJZBI7Cg'
    'hiZWdpbl90eBgCIAEoCzIeLllkYi5RdWVyeS5UcmFuc2FjdGlvblNldHRpbmdzSABSB2JlZ2lu'
    'VHgSGwoJY29tbWl0X3R4GAogASgIUghjb21taXRUeEINCgt0eF9zZWxlY3Rvcg==');

@$core.Deprecated('Use beginTransactionRequestDescriptor instead')
const BeginTransactionRequest$json = {
  '1': 'BeginTransactionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'sessionId'},
    {
      '1': 'tx_settings',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.TransactionSettings',
      '10': 'txSettings'
    },
  ],
};

/// Descriptor for `BeginTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beginTransactionRequestDescriptor = $convert.base64Decode(
    'ChdCZWdpblRyYW5zYWN0aW9uUmVxdWVzdBImCgpzZXNzaW9uX2lkGAEgASgJQgei5ioDGIAIUg'
    'lzZXNzaW9uSWQSPwoLdHhfc2V0dGluZ3MYAiABKAsyHi5ZZGIuUXVlcnkuVHJhbnNhY3Rpb25T'
    'ZXR0aW5nc1IKdHhTZXR0aW5ncw==');

@$core.Deprecated('Use transactionMetaDescriptor instead')
const TransactionMeta$json = {
  '1': 'TransactionMeta',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `TransactionMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionMetaDescriptor = $convert
    .base64Decode('Cg9UcmFuc2FjdGlvbk1ldGESFwoCaWQYASABKAlCB6LmKgMYgAhSAmlk');

@$core.Deprecated('Use beginTransactionResponseDescriptor instead')
const BeginTransactionResponse$json = {
  '1': 'BeginTransactionResponse',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.StatusIds.StatusCode',
      '10': 'status'
    },
    {
      '1': 'issues',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Issue.IssueMessage',
      '10': 'issues'
    },
    {
      '1': 'tx_meta',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.TransactionMeta',
      '10': 'txMeta'
    },
  ],
};

/// Descriptor for `BeginTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beginTransactionResponseDescriptor = $convert.base64Decode(
    'ChhCZWdpblRyYW5zYWN0aW9uUmVzcG9uc2USMQoGc3RhdHVzGAEgASgOMhkuWWRiLlN0YXR1c0'
    'lkcy5TdGF0dXNDb2RlUgZzdGF0dXMSLwoGaXNzdWVzGAIgAygLMhcuWWRiLklzc3VlLklzc3Vl'
    'TWVzc2FnZVIGaXNzdWVzEjMKB3R4X21ldGEYAyABKAsyGi5ZZGIuUXVlcnkuVHJhbnNhY3Rpb2'
    '5NZXRhUgZ0eE1ldGE=');

@$core.Deprecated('Use commitTransactionRequestDescriptor instead')
const CommitTransactionRequest$json = {
  '1': 'CommitTransactionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'sessionId'},
    {'1': 'tx_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'txId'},
  ],
};

/// Descriptor for `CommitTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitTransactionRequestDescriptor =
    $convert.base64Decode(
        'ChhDb21taXRUcmFuc2FjdGlvblJlcXVlc3QSJgoKc2Vzc2lvbl9pZBgBIAEoCUIHouYqAxiACF'
        'IJc2Vzc2lvbklkEhwKBXR4X2lkGAIgASgJQgei5ioDGIAIUgR0eElk');

@$core.Deprecated('Use commitTransactionResponseDescriptor instead')
const CommitTransactionResponse$json = {
  '1': 'CommitTransactionResponse',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.StatusIds.StatusCode',
      '10': 'status'
    },
    {
      '1': 'issues',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Issue.IssueMessage',
      '10': 'issues'
    },
  ],
};

/// Descriptor for `CommitTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitTransactionResponseDescriptor = $convert.base64Decode(
    'ChlDb21taXRUcmFuc2FjdGlvblJlc3BvbnNlEjEKBnN0YXR1cxgBIAEoDjIZLllkYi5TdGF0dX'
    'NJZHMuU3RhdHVzQ29kZVIGc3RhdHVzEi8KBmlzc3VlcxgCIAMoCzIXLllkYi5Jc3N1ZS5Jc3N1'
    'ZU1lc3NhZ2VSBmlzc3Vlcw==');

@$core.Deprecated('Use rollbackTransactionRequestDescriptor instead')
const RollbackTransactionRequest$json = {
  '1': 'RollbackTransactionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'sessionId'},
    {'1': 'tx_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'txId'},
  ],
};

/// Descriptor for `RollbackTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollbackTransactionRequestDescriptor =
    $convert.base64Decode(
        'ChpSb2xsYmFja1RyYW5zYWN0aW9uUmVxdWVzdBImCgpzZXNzaW9uX2lkGAEgASgJQgei5ioDGI'
        'AIUglzZXNzaW9uSWQSHAoFdHhfaWQYAiABKAlCB6LmKgMYgAhSBHR4SWQ=');

@$core.Deprecated('Use rollbackTransactionResponseDescriptor instead')
const RollbackTransactionResponse$json = {
  '1': 'RollbackTransactionResponse',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.StatusIds.StatusCode',
      '10': 'status'
    },
    {
      '1': 'issues',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Issue.IssueMessage',
      '10': 'issues'
    },
  ],
};

/// Descriptor for `RollbackTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollbackTransactionResponseDescriptor =
    $convert.base64Decode(
        'ChtSb2xsYmFja1RyYW5zYWN0aW9uUmVzcG9uc2USMQoGc3RhdHVzGAEgASgOMhkuWWRiLlN0YX'
        'R1c0lkcy5TdGF0dXNDb2RlUgZzdGF0dXMSLwoGaXNzdWVzGAIgAygLMhcuWWRiLklzc3VlLklz'
        'c3VlTWVzc2FnZVIGaXNzdWVz');

@$core.Deprecated('Use queryContentDescriptor instead')
const QueryContent$json = {
  '1': 'QueryContent',
  '2': [
    {
      '1': 'syntax',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Query.Syntax',
      '10': 'syntax'
    },
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `QueryContent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryContentDescriptor = $convert.base64Decode(
    'CgxRdWVyeUNvbnRlbnQSKQoGc3ludGF4GAEgASgOMhEuWWRiLlF1ZXJ5LlN5bnRheFIGc3ludG'
    'F4EhIKBHRleHQYAiABKAlSBHRleHQ=');

@$core.Deprecated('Use executeQueryRequestDescriptor instead')
const ExecuteQueryRequest$json = {
  '1': 'ExecuteQueryRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'sessionId'},
    {
      '1': 'exec_mode',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Query.ExecMode',
      '10': 'execMode'
    },
    {
      '1': 'tx_control',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.TransactionControl',
      '10': 'txControl'
    },
    {
      '1': 'query_content',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.QueryContent',
      '9': 0,
      '10': 'queryContent'
    },
    {
      '1': 'parameters',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Query.ExecuteQueryRequest.ParametersEntry',
      '10': 'parameters'
    },
    {
      '1': 'stats_mode',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Query.StatsMode',
      '10': 'statsMode'
    },
    {
      '1': 'concurrent_result_sets',
      '3': 8,
      '4': 1,
      '5': 8,
      '10': 'concurrentResultSets'
    },
    {
      '1': 'response_part_limit_bytes',
      '3': 9,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'responsePartLimitBytes'
    },
    {'1': 'pool_id', '3': 10, '4': 1, '5': 9, '10': 'poolId'},
    {
      '1': 'stats_period_ms',
      '3': 11,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'statsPeriodMs'
    },
    {
      '1': 'schema_inclusion_mode',
      '3': 12,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Query.SchemaInclusionMode',
      '10': 'schemaInclusionMode'
    },
    {
      '1': 'result_set_format',
      '3': 13,
      '4': 1,
      '5': 14,
      '6': '.Ydb.ResultSet.Format',
      '10': 'resultSetFormat'
    },
    {
      '1': 'arrow_format_settings',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Formats.ArrowFormatSettings',
      '10': 'arrowFormatSettings'
    },
  ],
  '3': [ExecuteQueryRequest_ParametersEntry$json],
  '8': [
    {'1': 'query'},
  ],
};

@$core.Deprecated('Use executeQueryRequestDescriptor instead')
const ExecuteQueryRequest_ParametersEntry$json = {
  '1': 'ParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TypedValue',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `ExecuteQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeQueryRequestDescriptor = $convert.base64Decode(
    'ChNFeGVjdXRlUXVlcnlSZXF1ZXN0EiYKCnNlc3Npb25faWQYASABKAlCB6LmKgMYgAhSCXNlc3'
    'Npb25JZBIwCglleGVjX21vZGUYAiABKA4yEy5ZZGIuUXVlcnkuRXhlY01vZGVSCGV4ZWNNb2Rl'
    'EjwKCnR4X2NvbnRyb2wYAyABKAsyHS5ZZGIuUXVlcnkuVHJhbnNhY3Rpb25Db250cm9sUgl0eE'
    'NvbnRyb2wSPgoNcXVlcnlfY29udGVudBgEIAEoCzIXLllkYi5RdWVyeS5RdWVyeUNvbnRlbnRI'
    'AFIMcXVlcnlDb250ZW50Ek4KCnBhcmFtZXRlcnMYBiADKAsyLi5ZZGIuUXVlcnkuRXhlY3V0ZV'
    'F1ZXJ5UmVxdWVzdC5QYXJhbWV0ZXJzRW50cnlSCnBhcmFtZXRlcnMSMwoKc3RhdHNfbW9kZRgH'
    'IAEoDjIULllkYi5RdWVyeS5TdGF0c01vZGVSCXN0YXRzTW9kZRI0ChZjb25jdXJyZW50X3Jlc3'
    'VsdF9zZXRzGAggASgIUhRjb25jdXJyZW50UmVzdWx0U2V0cxJMChlyZXNwb25zZV9wYXJ0X2xp'
    'bWl0X2J5dGVzGAkgASgDQhGy5ioNWzA7IDMzNTU0NDMyXVIWcmVzcG9uc2VQYXJ0TGltaXRCeX'
    'RlcxIXCgdwb29sX2lkGAogASgJUgZwb29sSWQSMAoPc3RhdHNfcGVyaW9kX21zGAsgASgDQgiy'
    '5ioEPj0gMFINc3RhdHNQZXJpb2RNcxJSChVzY2hlbWFfaW5jbHVzaW9uX21vZGUYDCABKA4yHi'
    '5ZZGIuUXVlcnkuU2NoZW1hSW5jbHVzaW9uTW9kZVITc2NoZW1hSW5jbHVzaW9uTW9kZRJBChFy'
    'ZXN1bHRfc2V0X2Zvcm1hdBgNIAEoDjIVLllkYi5SZXN1bHRTZXQuRm9ybWF0Ug9yZXN1bHRTZX'
    'RGb3JtYXQSVAoVYXJyb3dfZm9ybWF0X3NldHRpbmdzGA4gASgLMiAuWWRiLkZvcm1hdHMuQXJy'
    'b3dGb3JtYXRTZXR0aW5nc1ITYXJyb3dGb3JtYXRTZXR0aW5ncxpOCg9QYXJhbWV0ZXJzRW50cn'
    'kSEAoDa2V5GAEgASgJUgNrZXkSJQoFdmFsdWUYAiABKAsyDy5ZZGIuVHlwZWRWYWx1ZVIFdmFs'
    'dWU6AjgBQgcKBXF1ZXJ5');

@$core.Deprecated('Use resultSetMetaDescriptor instead')
const ResultSetMeta$json = {
  '1': 'ResultSetMeta',
  '2': [
    {
      '1': 'columns',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Column',
      '10': 'columns'
    },
  ],
};

/// Descriptor for `ResultSetMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultSetMetaDescriptor = $convert.base64Decode(
    'Cg1SZXN1bHRTZXRNZXRhEiUKB2NvbHVtbnMYASADKAsyCy5ZZGIuQ29sdW1uUgdjb2x1bW5z');

@$core.Deprecated('Use executeQueryResponsePartDescriptor instead')
const ExecuteQueryResponsePart$json = {
  '1': 'ExecuteQueryResponsePart',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.StatusIds.StatusCode',
      '10': 'status'
    },
    {
      '1': 'issues',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Issue.IssueMessage',
      '10': 'issues'
    },
    {
      '1': 'result_set_index',
      '3': 3,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'resultSetIndex'
    },
    {
      '1': 'result_set',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.ResultSet',
      '10': 'resultSet'
    },
    {
      '1': 'exec_stats',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TableStats.QueryStats',
      '10': 'execStats'
    },
    {
      '1': 'tx_meta',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.TransactionMeta',
      '10': 'txMeta'
    },
  ],
};

/// Descriptor for `ExecuteQueryResponsePart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeQueryResponsePartDescriptor = $convert.base64Decode(
    'ChhFeGVjdXRlUXVlcnlSZXNwb25zZVBhcnQSMQoGc3RhdHVzGAEgASgOMhkuWWRiLlN0YXR1c0'
    'lkcy5TdGF0dXNDb2RlUgZzdGF0dXMSLwoGaXNzdWVzGAIgAygLMhcuWWRiLklzc3VlLklzc3Vl'
    'TWVzc2FnZVIGaXNzdWVzEjIKEHJlc3VsdF9zZXRfaW5kZXgYAyABKANCCLLmKgQ+PSAwUg5yZX'
    'N1bHRTZXRJbmRleBItCgpyZXN1bHRfc2V0GAQgASgLMg4uWWRiLlJlc3VsdFNldFIJcmVzdWx0'
    'U2V0EjkKCmV4ZWNfc3RhdHMYBSABKAsyGi5ZZGIuVGFibGVTdGF0cy5RdWVyeVN0YXRzUglleG'
    'VjU3RhdHMSMwoHdHhfbWV0YRgGIAEoCzIaLllkYi5RdWVyeS5UcmFuc2FjdGlvbk1ldGFSBnR4'
    'TWV0YQ==');

@$core.Deprecated('Use executeScriptRequestDescriptor instead')
const ExecuteScriptRequest$json = {
  '1': 'ExecuteScriptRequest',
  '2': [
    {
      '1': 'operation_params',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {
      '1': 'exec_mode',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Query.ExecMode',
      '10': 'execMode'
    },
    {
      '1': 'script_content',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.QueryContent',
      '10': 'scriptContent'
    },
    {
      '1': 'parameters',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Query.ExecuteScriptRequest.ParametersEntry',
      '10': 'parameters'
    },
    {
      '1': 'stats_mode',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Query.StatsMode',
      '10': 'statsMode'
    },
    {
      '1': 'results_ttl',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'resultsTtl'
    },
    {'1': 'pool_id', '3': 7, '4': 1, '5': 9, '10': 'poolId'},
  ],
  '3': [ExecuteScriptRequest_ParametersEntry$json],
};

@$core.Deprecated('Use executeScriptRequestDescriptor instead')
const ExecuteScriptRequest_ParametersEntry$json = {
  '1': 'ParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TypedValue',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `ExecuteScriptRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeScriptRequestDescriptor = $convert.base64Decode(
    'ChRFeGVjdXRlU2NyaXB0UmVxdWVzdBJKChBvcGVyYXRpb25fcGFyYW1zGAEgASgLMh8uWWRiLk'
    '9wZXJhdGlvbnMuT3BlcmF0aW9uUGFyYW1zUg9vcGVyYXRpb25QYXJhbXMSMAoJZXhlY19tb2Rl'
    'GAIgASgOMhMuWWRiLlF1ZXJ5LkV4ZWNNb2RlUghleGVjTW9kZRI+Cg5zY3JpcHRfY29udGVudB'
    'gDIAEoCzIXLllkYi5RdWVyeS5RdWVyeUNvbnRlbnRSDXNjcmlwdENvbnRlbnQSTwoKcGFyYW1l'
    'dGVycxgEIAMoCzIvLllkYi5RdWVyeS5FeGVjdXRlU2NyaXB0UmVxdWVzdC5QYXJhbWV0ZXJzRW'
    '50cnlSCnBhcmFtZXRlcnMSMwoKc3RhdHNfbW9kZRgFIAEoDjIULllkYi5RdWVyeS5TdGF0c01v'
    'ZGVSCXN0YXRzTW9kZRI6CgtyZXN1bHRzX3R0bBgGIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdX'
    'JhdGlvblIKcmVzdWx0c1R0bBIXCgdwb29sX2lkGAcgASgJUgZwb29sSWQaTgoPUGFyYW1ldGVy'
    'c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EiUKBXZhbHVlGAIgASgLMg8uWWRiLlR5cGVkVmFsdW'
    'VSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use executeScriptMetadataDescriptor instead')
const ExecuteScriptMetadata$json = {
  '1': 'ExecuteScriptMetadata',
  '2': [
    {'1': 'execution_id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'executionId'},
    {
      '1': 'exec_status',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Query.ExecStatus',
      '10': 'execStatus'
    },
    {
      '1': 'script_content',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.QueryContent',
      '10': 'scriptContent'
    },
    {
      '1': 'result_sets_meta',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Query.ResultSetMeta',
      '10': 'resultSetsMeta'
    },
    {
      '1': 'exec_mode',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Query.ExecMode',
      '10': 'execMode'
    },
    {
      '1': 'exec_stats',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TableStats.QueryStats',
      '10': 'execStats'
    },
  ],
};

/// Descriptor for `ExecuteScriptMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeScriptMetadataDescriptor = $convert.base64Decode(
    'ChVFeGVjdXRlU2NyaXB0TWV0YWRhdGESKgoMZXhlY3V0aW9uX2lkGAEgASgJQgei5ioDGIAIUg'
    'tleGVjdXRpb25JZBI2CgtleGVjX3N0YXR1cxgCIAEoDjIVLllkYi5RdWVyeS5FeGVjU3RhdHVz'
    'UgpleGVjU3RhdHVzEj4KDnNjcmlwdF9jb250ZW50GAMgASgLMhcuWWRiLlF1ZXJ5LlF1ZXJ5Q2'
    '9udGVudFINc2NyaXB0Q29udGVudBJCChByZXN1bHRfc2V0c19tZXRhGAQgAygLMhguWWRiLlF1'
    'ZXJ5LlJlc3VsdFNldE1ldGFSDnJlc3VsdFNldHNNZXRhEjAKCWV4ZWNfbW9kZRgFIAEoDjITLl'
    'lkYi5RdWVyeS5FeGVjTW9kZVIIZXhlY01vZGUSOQoKZXhlY19zdGF0cxgGIAEoCzIaLllkYi5U'
    'YWJsZVN0YXRzLlF1ZXJ5U3RhdHNSCWV4ZWNTdGF0cw==');

@$core.Deprecated('Use fetchScriptResultsRequestDescriptor instead')
const FetchScriptResultsRequest$json = {
  '1': 'FetchScriptResultsRequest',
  '2': [
    {'1': 'operation_id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'operationId'},
    {'1': 'result_set_index', '3': 2, '4': 1, '5': 3, '10': 'resultSetIndex'},
    {'1': 'fetch_token', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'fetchToken'},
    {'1': 'rows_limit', '3': 4, '4': 1, '5': 3, '8': {}, '10': 'rowsLimit'},
  ],
};

/// Descriptor for `FetchScriptResultsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchScriptResultsRequestDescriptor = $convert.base64Decode(
    'ChlGZXRjaFNjcmlwdFJlc3VsdHNSZXF1ZXN0EioKDG9wZXJhdGlvbl9pZBgBIAEoCUIHouYqAx'
    'iACFILb3BlcmF0aW9uSWQSKAoQcmVzdWx0X3NldF9pbmRleBgCIAEoA1IOcmVzdWx0U2V0SW5k'
    'ZXgSKAoLZmV0Y2hfdG9rZW4YAyABKAlCB6LmKgMYgAhSCmZldGNoVG9rZW4SJwoKcm93c19saW'
    '1pdBgEIAEoA0IIsuYqBD49IDBSCXJvd3NMaW1pdA==');

@$core.Deprecated('Use fetchScriptResultsResponseDescriptor instead')
const FetchScriptResultsResponse$json = {
  '1': 'FetchScriptResultsResponse',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.StatusIds.StatusCode',
      '10': 'status'
    },
    {
      '1': 'issues',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Issue.IssueMessage',
      '10': 'issues'
    },
    {
      '1': 'result_set_index',
      '3': 3,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'resultSetIndex'
    },
    {
      '1': 'result_set',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.ResultSet',
      '10': 'resultSet'
    },
    {
      '1': 'next_fetch_token',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'nextFetchToken'
    },
  ],
};

/// Descriptor for `FetchScriptResultsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchScriptResultsResponseDescriptor = $convert.base64Decode(
    'ChpGZXRjaFNjcmlwdFJlc3VsdHNSZXNwb25zZRIxCgZzdGF0dXMYASABKA4yGS5ZZGIuU3RhdH'
    'VzSWRzLlN0YXR1c0NvZGVSBnN0YXR1cxIvCgZpc3N1ZXMYAiADKAsyFy5ZZGIuSXNzdWUuSXNz'
    'dWVNZXNzYWdlUgZpc3N1ZXMSMgoQcmVzdWx0X3NldF9pbmRleBgDIAEoA0IIsuYqBD49IDBSDn'
    'Jlc3VsdFNldEluZGV4Ei0KCnJlc3VsdF9zZXQYBCABKAsyDi5ZZGIuUmVzdWx0U2V0UglyZXN1'
    'bHRTZXQSMQoQbmV4dF9mZXRjaF90b2tlbhgFIAEoCUIHouYqAxiACFIObmV4dEZldGNoVG9rZW'
    '4=');

@$core.Deprecated('Use scriptDescriptor instead')
const Script$json = {
  '1': 'Script',
  '2': [
    {
      '1': 'script_content',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Query.QueryContent',
      '10': 'scriptContent'
    },
  ],
};

/// Descriptor for `Script`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scriptDescriptor = $convert.base64Decode(
    'CgZTY3JpcHQSPgoOc2NyaXB0X2NvbnRlbnQYASABKAsyFy5ZZGIuUXVlcnkuUXVlcnlDb250ZW'
    '50Ug1zY3JpcHRDb250ZW50');

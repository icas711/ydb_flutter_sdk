// This is a generated file - do not edit.
//
// Generated from ydb_scheme.proto.

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

@$core.Deprecated('Use makeDirectoryRequestDescriptor instead')
const MakeDirectoryRequest$json = {
  '1': 'MakeDirectoryRequest',
  '2': [
    {
      '1': 'operation_params',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `MakeDirectoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List makeDirectoryRequestDescriptor = $convert.base64Decode(
    'ChRNYWtlRGlyZWN0b3J5UmVxdWVzdBJKChBvcGVyYXRpb25fcGFyYW1zGAEgASgLMh8uWWRiLk'
    '9wZXJhdGlvbnMuT3BlcmF0aW9uUGFyYW1zUg9vcGVyYXRpb25QYXJhbXMSEgoEcGF0aBgCIAEo'
    'CVIEcGF0aA==');

@$core.Deprecated('Use makeDirectoryResponseDescriptor instead')
const MakeDirectoryResponse$json = {
  '1': 'MakeDirectoryResponse',
  '2': [
    {
      '1': 'operation',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.Operation',
      '10': 'operation'
    },
  ],
};

/// Descriptor for `MakeDirectoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List makeDirectoryResponseDescriptor = $convert.base64Decode(
    'ChVNYWtlRGlyZWN0b3J5UmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZXJhdG'
    'lvbnMuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use removeDirectoryRequestDescriptor instead')
const RemoveDirectoryRequest$json = {
  '1': 'RemoveDirectoryRequest',
  '2': [
    {
      '1': 'operation_params',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `RemoveDirectoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeDirectoryRequestDescriptor = $convert.base64Decode(
    'ChZSZW1vdmVEaXJlY3RvcnlSZXF1ZXN0EkoKEG9wZXJhdGlvbl9wYXJhbXMYASABKAsyHy5ZZG'
    'IuT3BlcmF0aW9ucy5PcGVyYXRpb25QYXJhbXNSD29wZXJhdGlvblBhcmFtcxISCgRwYXRoGAIg'
    'ASgJUgRwYXRo');

@$core.Deprecated('Use removeDirectoryResponseDescriptor instead')
const RemoveDirectoryResponse$json = {
  '1': 'RemoveDirectoryResponse',
  '2': [
    {
      '1': 'operation',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.Operation',
      '10': 'operation'
    },
  ],
};

/// Descriptor for `RemoveDirectoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeDirectoryResponseDescriptor =
    $convert.base64Decode(
        'ChdSZW1vdmVEaXJlY3RvcnlSZXNwb25zZRI3CglvcGVyYXRpb24YASABKAsyGS5ZZGIuT3Blcm'
        'F0aW9ucy5PcGVyYXRpb25SCW9wZXJhdGlvbg==');

@$core.Deprecated('Use listDirectoryRequestDescriptor instead')
const ListDirectoryRequest$json = {
  '1': 'ListDirectoryRequest',
  '2': [
    {
      '1': 'operation_params',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `ListDirectoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDirectoryRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0RGlyZWN0b3J5UmVxdWVzdBJKChBvcGVyYXRpb25fcGFyYW1zGAEgASgLMh8uWWRiLk'
    '9wZXJhdGlvbnMuT3BlcmF0aW9uUGFyYW1zUg9vcGVyYXRpb25QYXJhbXMSEgoEcGF0aBgCIAEo'
    'CVIEcGF0aA==');

@$core.Deprecated('Use listDirectoryResponseDescriptor instead')
const ListDirectoryResponse$json = {
  '1': 'ListDirectoryResponse',
  '2': [
    {
      '1': 'operation',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.Operation',
      '10': 'operation'
    },
  ],
};

/// Descriptor for `ListDirectoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDirectoryResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0RGlyZWN0b3J5UmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZXJhdG'
    'lvbnMuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use permissionsDescriptor instead')
const Permissions$json = {
  '1': 'Permissions',
  '2': [
    {'1': 'subject', '3': 1, '4': 1, '5': 9, '10': 'subject'},
    {'1': 'permission_names', '3': 2, '4': 3, '5': 9, '10': 'permissionNames'},
  ],
};

/// Descriptor for `Permissions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List permissionsDescriptor = $convert.base64Decode(
    'CgtQZXJtaXNzaW9ucxIYCgdzdWJqZWN0GAEgASgJUgdzdWJqZWN0EikKEHBlcm1pc3Npb25fbm'
    'FtZXMYAiADKAlSD3Blcm1pc3Npb25OYW1lcw==');

@$core.Deprecated('Use entryDescriptor instead')
const Entry$json = {
  '1': 'Entry',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'owner', '3': 2, '4': 1, '5': 9, '10': 'owner'},
    {
      '1': 'type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Scheme.Entry.Type',
      '10': 'type'
    },
    {
      '1': 'effective_permissions',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Scheme.Permissions',
      '10': 'effectivePermissions'
    },
    {
      '1': 'permissions',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Scheme.Permissions',
      '10': 'permissions'
    },
    {'1': 'size_bytes', '3': 8, '4': 1, '5': 4, '10': 'sizeBytes'},
    {
      '1': 'created_at',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.Ydb.VirtualTimestamp',
      '10': 'createdAt'
    },
  ],
  '4': [Entry_Type$json],
};

@$core.Deprecated('Use entryDescriptor instead')
const Entry_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'TYPE_UNSPECIFIED', '2': 0},
    {'1': 'DIRECTORY', '2': 1},
    {'1': 'TABLE', '2': 2},
    {'1': 'PERS_QUEUE_GROUP', '2': 3},
    {'1': 'DATABASE', '2': 4},
    {'1': 'RTMR_VOLUME', '2': 5},
    {'1': 'BLOCK_STORE_VOLUME', '2': 6},
    {'1': 'COORDINATION_NODE', '2': 7},
    {'1': 'COLUMN_STORE', '2': 12},
    {'1': 'COLUMN_TABLE', '2': 13},
    {'1': 'SEQUENCE', '2': 15},
    {'1': 'REPLICATION', '2': 16},
    {'1': 'TOPIC', '2': 17},
    {'1': 'EXTERNAL_TABLE', '2': 18},
    {'1': 'EXTERNAL_DATA_SOURCE', '2': 19},
    {'1': 'VIEW', '2': 20},
    {'1': 'RESOURCE_POOL', '2': 21},
    {'1': 'TRANSFER', '2': 23},
    {'1': 'SYS_VIEW', '2': 24},
  ],
};

/// Descriptor for `Entry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryDescriptor = $convert.base64Decode(
    'CgVFbnRyeRISCgRuYW1lGAEgASgJUgRuYW1lEhQKBW93bmVyGAIgASgJUgVvd25lchIqCgR0eX'
    'BlGAUgASgOMhYuWWRiLlNjaGVtZS5FbnRyeS5UeXBlUgR0eXBlEkwKFWVmZmVjdGl2ZV9wZXJt'
    'aXNzaW9ucxgGIAMoCzIXLllkYi5TY2hlbWUuUGVybWlzc2lvbnNSFGVmZmVjdGl2ZVBlcm1pc3'
    'Npb25zEjkKC3Blcm1pc3Npb25zGAcgAygLMhcuWWRiLlNjaGVtZS5QZXJtaXNzaW9uc1ILcGVy'
    'bWlzc2lvbnMSHQoKc2l6ZV9ieXRlcxgIIAEoBFIJc2l6ZUJ5dGVzEjQKCmNyZWF0ZWRfYXQYCS'
    'ABKAsyFS5ZZGIuVmlydHVhbFRpbWVzdGFtcFIJY3JlYXRlZEF0Is8CCgRUeXBlEhQKEFRZUEVf'
    'VU5TUEVDSUZJRUQQABINCglESVJFQ1RPUlkQARIJCgVUQUJMRRACEhQKEFBFUlNfUVVFVUVfR1'
    'JPVVAQAxIMCghEQVRBQkFTRRAEEg8KC1JUTVJfVk9MVU1FEAUSFgoSQkxPQ0tfU1RPUkVfVk9M'
    'VU1FEAYSFQoRQ09PUkRJTkFUSU9OX05PREUQBxIQCgxDT0xVTU5fU1RPUkUQDBIQCgxDT0xVTU'
    '5fVEFCTEUQDRIMCghTRVFVRU5DRRAPEg8KC1JFUExJQ0FUSU9OEBASCQoFVE9QSUMQERISCg5F'
    'WFRFUk5BTF9UQUJMRRASEhgKFEVYVEVSTkFMX0RBVEFfU09VUkNFEBMSCAoEVklFVxAUEhEKDV'
    'JFU09VUkNFX1BPT0wQFRIMCghUUkFOU0ZFUhAXEgwKCFNZU19WSUVXEBg=');

@$core.Deprecated('Use listDirectoryResultDescriptor instead')
const ListDirectoryResult$json = {
  '1': 'ListDirectoryResult',
  '2': [
    {
      '1': 'self',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Scheme.Entry',
      '10': 'self'
    },
    {
      '1': 'children',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Scheme.Entry',
      '10': 'children'
    },
  ],
};

/// Descriptor for `ListDirectoryResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDirectoryResultDescriptor = $convert.base64Decode(
    'ChNMaXN0RGlyZWN0b3J5UmVzdWx0EiUKBHNlbGYYASABKAsyES5ZZGIuU2NoZW1lLkVudHJ5Ug'
    'RzZWxmEi0KCGNoaWxkcmVuGAIgAygLMhEuWWRiLlNjaGVtZS5FbnRyeVIIY2hpbGRyZW4=');

@$core.Deprecated('Use describePathRequestDescriptor instead')
const DescribePathRequest$json = {
  '1': 'DescribePathRequest',
  '2': [
    {
      '1': 'operation_params',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `DescribePathRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describePathRequestDescriptor = $convert.base64Decode(
    'ChNEZXNjcmliZVBhdGhSZXF1ZXN0EkoKEG9wZXJhdGlvbl9wYXJhbXMYASABKAsyHy5ZZGIuT3'
    'BlcmF0aW9ucy5PcGVyYXRpb25QYXJhbXNSD29wZXJhdGlvblBhcmFtcxISCgRwYXRoGAIgASgJ'
    'UgRwYXRo');

@$core.Deprecated('Use describePathResponseDescriptor instead')
const DescribePathResponse$json = {
  '1': 'DescribePathResponse',
  '2': [
    {
      '1': 'operation',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.Operation',
      '10': 'operation'
    },
  ],
};

/// Descriptor for `DescribePathResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describePathResponseDescriptor = $convert.base64Decode(
    'ChREZXNjcmliZVBhdGhSZXNwb25zZRI3CglvcGVyYXRpb24YASABKAsyGS5ZZGIuT3BlcmF0aW'
    '9ucy5PcGVyYXRpb25SCW9wZXJhdGlvbg==');

@$core.Deprecated('Use describePathResultDescriptor instead')
const DescribePathResult$json = {
  '1': 'DescribePathResult',
  '2': [
    {
      '1': 'self',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Scheme.Entry',
      '10': 'self'
    },
  ],
};

/// Descriptor for `DescribePathResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describePathResultDescriptor = $convert.base64Decode(
    'ChJEZXNjcmliZVBhdGhSZXN1bHQSJQoEc2VsZhgBIAEoCzIRLllkYi5TY2hlbWUuRW50cnlSBH'
    'NlbGY=');

@$core.Deprecated('Use permissionsActionDescriptor instead')
const PermissionsAction$json = {
  '1': 'PermissionsAction',
  '2': [
    {
      '1': 'grant',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Scheme.Permissions',
      '9': 0,
      '10': 'grant'
    },
    {
      '1': 'revoke',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Scheme.Permissions',
      '9': 0,
      '10': 'revoke'
    },
    {
      '1': 'set',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Scheme.Permissions',
      '9': 0,
      '10': 'set'
    },
    {'1': 'change_owner', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'changeOwner'},
  ],
  '8': [
    {'1': 'action'},
  ],
};

/// Descriptor for `PermissionsAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List permissionsActionDescriptor = $convert.base64Decode(
    'ChFQZXJtaXNzaW9uc0FjdGlvbhIvCgVncmFudBgBIAEoCzIXLllkYi5TY2hlbWUuUGVybWlzc2'
    'lvbnNIAFIFZ3JhbnQSMQoGcmV2b2tlGAIgASgLMhcuWWRiLlNjaGVtZS5QZXJtaXNzaW9uc0gA'
    'UgZyZXZva2USKwoDc2V0GAMgASgLMhcuWWRiLlNjaGVtZS5QZXJtaXNzaW9uc0gAUgNzZXQSIw'
    'oMY2hhbmdlX293bmVyGAQgASgJSABSC2NoYW5nZU93bmVyQggKBmFjdGlvbg==');

@$core.Deprecated('Use modifyPermissionsRequestDescriptor instead')
const ModifyPermissionsRequest$json = {
  '1': 'ModifyPermissionsRequest',
  '2': [
    {
      '1': 'operation_params',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {
      '1': 'actions',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Scheme.PermissionsAction',
      '10': 'actions'
    },
    {
      '1': 'clear_permissions',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'clearPermissions'
    },
    {
      '1': 'interrupt_inheritance',
      '3': 5,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'interruptInheritance'
    },
  ],
  '8': [
    {'1': 'inheritance'},
  ],
};

/// Descriptor for `ModifyPermissionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyPermissionsRequestDescriptor = $convert.base64Decode(
    'ChhNb2RpZnlQZXJtaXNzaW9uc1JlcXVlc3QSSgoQb3BlcmF0aW9uX3BhcmFtcxgBIAEoCzIfLl'
    'lkYi5PcGVyYXRpb25zLk9wZXJhdGlvblBhcmFtc1IPb3BlcmF0aW9uUGFyYW1zEhIKBHBhdGgY'
    'AiABKAlSBHBhdGgSNwoHYWN0aW9ucxgDIAMoCzIdLllkYi5TY2hlbWUuUGVybWlzc2lvbnNBY3'
    'Rpb25SB2FjdGlvbnMSKwoRY2xlYXJfcGVybWlzc2lvbnMYBCABKAhSEGNsZWFyUGVybWlzc2lv'
    'bnMSNQoVaW50ZXJydXB0X2luaGVyaXRhbmNlGAUgASgISABSFGludGVycnVwdEluaGVyaXRhbm'
    'NlQg0KC2luaGVyaXRhbmNl');

@$core.Deprecated('Use modifyPermissionsResponseDescriptor instead')
const ModifyPermissionsResponse$json = {
  '1': 'ModifyPermissionsResponse',
  '2': [
    {
      '1': 'operation',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.Operation',
      '10': 'operation'
    },
  ],
};

/// Descriptor for `ModifyPermissionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyPermissionsResponseDescriptor =
    $convert.base64Decode(
        'ChlNb2RpZnlQZXJtaXNzaW9uc1Jlc3BvbnNlEjcKCW9wZXJhdGlvbhgBIAEoCzIZLllkYi5PcG'
        'VyYXRpb25zLk9wZXJhdGlvblIJb3BlcmF0aW9u');

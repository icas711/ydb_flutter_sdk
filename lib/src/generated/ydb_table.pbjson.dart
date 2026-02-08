// This is a generated file - do not edit.
//
// Generated from ydb_table.proto.

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

@$core.Deprecated('Use storeTypeDescriptor instead')
const StoreType$json = {
  '1': 'StoreType',
  '2': [
    {'1': 'STORE_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'STORE_TYPE_ROW', '2': 1},
    {'1': 'STORE_TYPE_COLUMN', '2': 2},
  ],
};

/// Descriptor for `StoreType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List storeTypeDescriptor = $convert.base64Decode(
    'CglTdG9yZVR5cGUSGgoWU1RPUkVfVFlQRV9VTlNQRUNJRklFRBAAEhIKDlNUT1JFX1RZUEVfUk'
    '9XEAESFQoRU1RPUkVfVFlQRV9DT0xVTU4QAg==');

@$core.Deprecated('Use createSessionRequestDescriptor instead')
const CreateSessionRequest$json = {
  '1': 'CreateSessionRequest',
  '2': [
    {
      '1': 'operation_params',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
  ],
};

/// Descriptor for `CreateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVTZXNzaW9uUmVxdWVzdBJKChBvcGVyYXRpb25fcGFyYW1zGAEgASgLMh8uWWRiLk'
    '9wZXJhdGlvbnMuT3BlcmF0aW9uUGFyYW1zUg9vcGVyYXRpb25QYXJhbXM=');

@$core.Deprecated('Use createSessionResponseDescriptor instead')
const CreateSessionResponse$json = {
  '1': 'CreateSessionResponse',
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

/// Descriptor for `CreateSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVTZXNzaW9uUmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZXJhdG'
    'lvbnMuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use createSessionResultDescriptor instead')
const CreateSessionResult$json = {
  '1': 'CreateSessionResult',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
  ],
};

/// Descriptor for `CreateSessionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionResultDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVTZXNzaW9uUmVzdWx0Eh0KCnNlc3Npb25faWQYASABKAlSCXNlc3Npb25JZA==');

@$core.Deprecated('Use deleteSessionRequestDescriptor instead')
const DeleteSessionRequest$json = {
  '1': 'DeleteSessionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'operation_params',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
  ],
};

/// Descriptor for `DeleteSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVTZXNzaW9uUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgJUglzZXNzaW9uSWQSSg'
    'oQb3BlcmF0aW9uX3BhcmFtcxgCIAEoCzIfLllkYi5PcGVyYXRpb25zLk9wZXJhdGlvblBhcmFt'
    'c1IPb3BlcmF0aW9uUGFyYW1z');

@$core.Deprecated('Use deleteSessionResponseDescriptor instead')
const DeleteSessionResponse$json = {
  '1': 'DeleteSessionResponse',
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

/// Descriptor for `DeleteSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVTZXNzaW9uUmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZXJhdG'
    'lvbnMuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use globalIndexDescriptor instead')
const GlobalIndex$json = {
  '1': 'GlobalIndex',
};

/// Descriptor for `GlobalIndex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List globalIndexDescriptor =
    $convert.base64Decode('CgtHbG9iYWxJbmRleA==');

@$core.Deprecated('Use globalAsyncIndexDescriptor instead')
const GlobalAsyncIndex$json = {
  '1': 'GlobalAsyncIndex',
};

/// Descriptor for `GlobalAsyncIndex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List globalAsyncIndexDescriptor =
    $convert.base64Decode('ChBHbG9iYWxBc3luY0luZGV4');

@$core.Deprecated('Use globalUniqueIndexDescriptor instead')
const GlobalUniqueIndex$json = {
  '1': 'GlobalUniqueIndex',
};

/// Descriptor for `GlobalUniqueIndex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List globalUniqueIndexDescriptor =
    $convert.base64Decode('ChFHbG9iYWxVbmlxdWVJbmRleA==');

@$core.Deprecated('Use tableIndexDescriptor instead')
const TableIndex$json = {
  '1': 'TableIndex',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'index_columns', '3': 2, '4': 3, '5': 9, '10': 'indexColumns'},
    {
      '1': 'global_index',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.GlobalIndex',
      '9': 0,
      '10': 'globalIndex'
    },
    {
      '1': 'global_async_index',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.GlobalAsyncIndex',
      '9': 0,
      '10': 'globalAsyncIndex'
    },
    {
      '1': 'global_unique_index',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.GlobalUniqueIndex',
      '9': 0,
      '10': 'globalUniqueIndex'
    },
    {'1': 'data_columns', '3': 5, '4': 3, '5': 9, '10': 'dataColumns'},
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `TableIndex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tableIndexDescriptor = $convert.base64Decode(
    'CgpUYWJsZUluZGV4EhIKBG5hbWUYASABKAlSBG5hbWUSIwoNaW5kZXhfY29sdW1ucxgCIAMoCV'
    'IMaW5kZXhDb2x1bW5zEjsKDGdsb2JhbF9pbmRleBgDIAEoCzIWLllkYi5UYWJsZS5HbG9iYWxJ'
    'bmRleEgAUgtnbG9iYWxJbmRleBJLChJnbG9iYWxfYXN5bmNfaW5kZXgYBCABKAsyGy5ZZGIuVG'
    'FibGUuR2xvYmFsQXN5bmNJbmRleEgAUhBnbG9iYWxBc3luY0luZGV4Ek4KE2dsb2JhbF91bmlx'
    'dWVfaW5kZXgYBiABKAsyHC5ZZGIuVGFibGUuR2xvYmFsVW5pcXVlSW5kZXhIAFIRZ2xvYmFsVW'
    '5pcXVlSW5kZXgSIQoMZGF0YV9jb2x1bW5zGAUgAygJUgtkYXRhQ29sdW1uc0IGCgR0eXBl');

@$core.Deprecated('Use tableIndexDescriptionDescriptor instead')
const TableIndexDescription$json = {
  '1': 'TableIndexDescription',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'index_columns', '3': 2, '4': 3, '5': 9, '10': 'indexColumns'},
    {
      '1': 'global_index',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.GlobalIndex',
      '9': 0,
      '10': 'globalIndex'
    },
    {
      '1': 'global_async_index',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.GlobalAsyncIndex',
      '9': 0,
      '10': 'globalAsyncIndex'
    },
    {
      '1': 'global_unique_index',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.GlobalUniqueIndex',
      '9': 0,
      '10': 'globalUniqueIndex'
    },
    {
      '1': 'status',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.TableIndexDescription.Status',
      '10': 'status'
    },
    {'1': 'data_columns', '3': 6, '4': 3, '5': 9, '10': 'dataColumns'},
    {'1': 'size_bytes', '3': 7, '4': 1, '5': 4, '10': 'sizeBytes'},
  ],
  '4': [TableIndexDescription_Status$json],
  '8': [
    {'1': 'type'},
  ],
};

@$core.Deprecated('Use tableIndexDescriptionDescriptor instead')
const TableIndexDescription_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'STATUS_UNSPECIFIED', '2': 0},
    {'1': 'STATUS_READY', '2': 1},
    {'1': 'STATUS_BUILDING', '2': 2},
  ],
};

/// Descriptor for `TableIndexDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tableIndexDescriptionDescriptor = $convert.base64Decode(
    'ChVUYWJsZUluZGV4RGVzY3JpcHRpb24SEgoEbmFtZRgBIAEoCVIEbmFtZRIjCg1pbmRleF9jb2'
    'x1bW5zGAIgAygJUgxpbmRleENvbHVtbnMSOwoMZ2xvYmFsX2luZGV4GAMgASgLMhYuWWRiLlRh'
    'YmxlLkdsb2JhbEluZGV4SABSC2dsb2JhbEluZGV4EksKEmdsb2JhbF9hc3luY19pbmRleBgFIA'
    'EoCzIbLllkYi5UYWJsZS5HbG9iYWxBc3luY0luZGV4SABSEGdsb2JhbEFzeW5jSW5kZXgSTgoT'
    'Z2xvYmFsX3VuaXF1ZV9pbmRleBgIIAEoCzIcLllkYi5UYWJsZS5HbG9iYWxVbmlxdWVJbmRleE'
    'gAUhFnbG9iYWxVbmlxdWVJbmRleBI/CgZzdGF0dXMYBCABKA4yJy5ZZGIuVGFibGUuVGFibGVJ'
    'bmRleERlc2NyaXB0aW9uLlN0YXR1c1IGc3RhdHVzEiEKDGRhdGFfY29sdW1ucxgGIAMoCVILZG'
    'F0YUNvbHVtbnMSHQoKc2l6ZV9ieXRlcxgHIAEoBFIJc2l6ZUJ5dGVzIkcKBlN0YXR1cxIWChJT'
    'VEFUVVNfVU5TUEVDSUZJRUQQABIQCgxTVEFUVVNfUkVBRFkQARITCg9TVEFUVVNfQlVJTERJTk'
    'cQAkIGCgR0eXBl');

@$core.Deprecated('Use indexBuildStateDescriptor instead')
const IndexBuildState$json = {
  '1': 'IndexBuildState',
  '4': [IndexBuildState_State$json],
};

@$core.Deprecated('Use indexBuildStateDescriptor instead')
const IndexBuildState_State$json = {
  '1': 'State',
  '2': [
    {'1': 'STATE_UNSPECIFIED', '2': 0},
    {'1': 'STATE_PREPARING', '2': 1},
    {'1': 'STATE_TRANSFERING_DATA', '2': 2},
    {'1': 'STATE_APPLYING', '2': 3},
    {'1': 'STATE_DONE', '2': 4},
    {'1': 'STATE_CANCELLATION', '2': 5},
    {'1': 'STATE_CANCELLED', '2': 6},
    {'1': 'STATE_REJECTION', '2': 7},
    {'1': 'STATE_REJECTED', '2': 8},
  ],
};

/// Descriptor for `IndexBuildState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexBuildStateDescriptor = $convert.base64Decode(
    'Cg9JbmRleEJ1aWxkU3RhdGUiyQEKBVN0YXRlEhUKEVNUQVRFX1VOU1BFQ0lGSUVEEAASEwoPU1'
    'RBVEVfUFJFUEFSSU5HEAESGgoWU1RBVEVfVFJBTlNGRVJJTkdfREFUQRACEhIKDlNUQVRFX0FQ'
    'UExZSU5HEAMSDgoKU1RBVEVfRE9ORRAEEhYKElNUQVRFX0NBTkNFTExBVElPThAFEhMKD1NUQV'
    'RFX0NBTkNFTExFRBAGEhMKD1NUQVRFX1JFSkVDVElPThAHEhIKDlNUQVRFX1JFSkVDVEVEEAg=');

@$core.Deprecated('Use indexBuildDescriptionDescriptor instead')
const IndexBuildDescription$json = {
  '1': 'IndexBuildDescription',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {
      '1': 'index',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.TableIndex',
      '10': 'index'
    },
  ],
};

/// Descriptor for `IndexBuildDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexBuildDescriptionDescriptor = $convert.base64Decode(
    'ChVJbmRleEJ1aWxkRGVzY3JpcHRpb24SEgoEcGF0aBgBIAEoCVIEcGF0aBIrCgVpbmRleBgCIA'
    'EoCzIVLllkYi5UYWJsZS5UYWJsZUluZGV4UgVpbmRleA==');

@$core.Deprecated('Use indexBuildMetadataDescriptor instead')
const IndexBuildMetadata$json = {
  '1': 'IndexBuildMetadata',
  '2': [
    {
      '1': 'description',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.IndexBuildDescription',
      '10': 'description'
    },
    {
      '1': 'state',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.IndexBuildState.State',
      '10': 'state'
    },
    {'1': 'progress', '3': 3, '4': 1, '5': 2, '10': 'progress'},
  ],
};

/// Descriptor for `IndexBuildMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexBuildMetadataDescriptor = $convert.base64Decode(
    'ChJJbmRleEJ1aWxkTWV0YWRhdGESQgoLZGVzY3JpcHRpb24YASABKAsyIC5ZZGIuVGFibGUuSW'
    '5kZXhCdWlsZERlc2NyaXB0aW9uUgtkZXNjcmlwdGlvbhI2CgVzdGF0ZRgCIAEoDjIgLllkYi5U'
    'YWJsZS5JbmRleEJ1aWxkU3RhdGUuU3RhdGVSBXN0YXRlEhoKCHByb2dyZXNzGAMgASgCUghwcm'
    '9ncmVzcw==');

@$core.Deprecated('Use changefeedModeDescriptor instead')
const ChangefeedMode$json = {
  '1': 'ChangefeedMode',
  '4': [ChangefeedMode_Mode$json],
};

@$core.Deprecated('Use changefeedModeDescriptor instead')
const ChangefeedMode_Mode$json = {
  '1': 'Mode',
  '2': [
    {'1': 'MODE_UNSPECIFIED', '2': 0},
    {'1': 'MODE_KEYS_ONLY', '2': 1},
    {'1': 'MODE_UPDATES', '2': 2},
    {'1': 'MODE_NEW_IMAGE', '2': 3},
    {'1': 'MODE_OLD_IMAGE', '2': 4},
    {'1': 'MODE_NEW_AND_OLD_IMAGES', '2': 5},
  ],
};

/// Descriptor for `ChangefeedMode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changefeedModeDescriptor = $convert.base64Decode(
    'Cg5DaGFuZ2VmZWVkTW9kZSKHAQoETW9kZRIUChBNT0RFX1VOU1BFQ0lGSUVEEAASEgoOTU9ERV'
    '9LRVlTX09OTFkQARIQCgxNT0RFX1VQREFURVMQAhISCg5NT0RFX05FV19JTUFHRRADEhIKDk1P'
    'REVfT0xEX0lNQUdFEAQSGwoXTU9ERV9ORVdfQU5EX09MRF9JTUFHRVMQBQ==');

@$core.Deprecated('Use changefeedFormatDescriptor instead')
const ChangefeedFormat$json = {
  '1': 'ChangefeedFormat',
  '4': [ChangefeedFormat_Format$json],
};

@$core.Deprecated('Use changefeedFormatDescriptor instead')
const ChangefeedFormat_Format$json = {
  '1': 'Format',
  '2': [
    {'1': 'FORMAT_UNSPECIFIED', '2': 0},
    {'1': 'FORMAT_JSON', '2': 1},
    {'1': 'FORMAT_DYNAMODB_STREAMS_JSON', '2': 2},
    {'1': 'FORMAT_DEBEZIUM_JSON', '2': 3},
  ],
};

/// Descriptor for `ChangefeedFormat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changefeedFormatDescriptor = $convert.base64Decode(
    'ChBDaGFuZ2VmZWVkRm9ybWF0Im0KBkZvcm1hdBIWChJGT1JNQVRfVU5TUEVDSUZJRUQQABIPCg'
    'tGT1JNQVRfSlNPThABEiAKHEZPUk1BVF9EWU5BTU9EQl9TVFJFQU1TX0pTT04QAhIYChRGT1JN'
    'QVRfREVCRVpJVU1fSlNPThAD');

@$core.Deprecated('Use changefeedDescriptor instead')
const Changefeed$json = {
  '1': 'Changefeed',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'mode',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.ChangefeedMode.Mode',
      '10': 'mode'
    },
    {
      '1': 'format',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.ChangefeedFormat.Format',
      '10': 'format'
    },
    {
      '1': 'retention_period',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'retentionPeriod'
    },
    {
      '1': 'virtual_timestamps',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'virtualTimestamps'
    },
    {'1': 'initial_scan', '3': 6, '4': 1, '5': 8, '10': 'initialScan'},
    {
      '1': 'attributes',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.Changefeed.AttributesEntry',
      '8': {},
      '10': 'attributes'
    },
    {'1': 'aws_region', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'awsRegion'},
    {
      '1': 'resolved_timestamps_interval',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'resolvedTimestampsInterval'
    },
    {
      '1': 'topic_partitioning_settings',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.PartitioningSettings',
      '10': 'topicPartitioningSettings'
    },
  ],
  '3': [Changefeed_AttributesEntry$json],
};

@$core.Deprecated('Use changefeedDescriptor instead')
const Changefeed_AttributesEntry$json = {
  '1': 'AttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Changefeed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changefeedDescriptor = $convert.base64Decode(
    'CgpDaGFuZ2VmZWVkEhIKBG5hbWUYASABKAlSBG5hbWUSMgoEbW9kZRgCIAEoDjIeLllkYi5UYW'
    'JsZS5DaGFuZ2VmZWVkTW9kZS5Nb2RlUgRtb2RlEjoKBmZvcm1hdBgDIAEoDjIiLllkYi5UYWJs'
    'ZS5DaGFuZ2VmZWVkRm9ybWF0LkZvcm1hdFIGZm9ybWF0EkQKEHJldGVudGlvbl9wZXJpb2QYBC'
    'ABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SD3JldGVudGlvblBlcmlvZBItChJ2aXJ0'
    'dWFsX3RpbWVzdGFtcHMYBSABKAhSEXZpcnR1YWxUaW1lc3RhbXBzEiEKDGluaXRpYWxfc2Nhbh'
    'gGIAEoCFILaW5pdGlhbFNjYW4SXgoKYXR0cmlidXRlcxgHIAMoCzIlLllkYi5UYWJsZS5DaGFu'
    'Z2VmZWVkLkF0dHJpYnV0ZXNFbnRyeUIXouYqBwoFCAEQgCCq5ioICgYKBAgBEGRSCmF0dHJpYn'
    'V0ZXMSJgoKYXdzX3JlZ2lvbhgIIAEoCUIHouYqAxiAAVIJYXdzUmVnaW9uElsKHHJlc29sdmVk'
    'X3RpbWVzdGFtcHNfaW50ZXJ2YWwYCSABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SGn'
    'Jlc29sdmVkVGltZXN0YW1wc0ludGVydmFsEl8KG3RvcGljX3BhcnRpdGlvbmluZ19zZXR0aW5n'
    'cxgKIAEoCzIfLllkYi5Ub3BpYy5QYXJ0aXRpb25pbmdTZXR0aW5nc1IZdG9waWNQYXJ0aXRpb2'
    '5pbmdTZXR0aW5ncxo9Cg9BdHRyaWJ1dGVzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFs'
    'dWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use changefeedDescriptionDescriptor instead')
const ChangefeedDescription$json = {
  '1': 'ChangefeedDescription',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'mode',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.ChangefeedMode.Mode',
      '10': 'mode'
    },
    {
      '1': 'format',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.ChangefeedFormat.Format',
      '10': 'format'
    },
    {
      '1': 'state',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.ChangefeedDescription.State',
      '10': 'state'
    },
    {
      '1': 'virtual_timestamps',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'virtualTimestamps'
    },
    {
      '1': 'attributes',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ChangefeedDescription.AttributesEntry',
      '10': 'attributes'
    },
    {'1': 'aws_region', '3': 7, '4': 1, '5': 9, '10': 'awsRegion'},
    {
      '1': 'resolved_timestamps_interval',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'resolvedTimestampsInterval'
    },
  ],
  '3': [ChangefeedDescription_AttributesEntry$json],
  '4': [ChangefeedDescription_State$json],
};

@$core.Deprecated('Use changefeedDescriptionDescriptor instead')
const ChangefeedDescription_AttributesEntry$json = {
  '1': 'AttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use changefeedDescriptionDescriptor instead')
const ChangefeedDescription_State$json = {
  '1': 'State',
  '2': [
    {'1': 'STATE_UNSPECIFIED', '2': 0},
    {'1': 'STATE_ENABLED', '2': 1},
    {'1': 'STATE_DISABLED', '2': 2},
    {'1': 'STATE_INITIAL_SCAN', '2': 3},
  ],
};

/// Descriptor for `ChangefeedDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changefeedDescriptionDescriptor = $convert.base64Decode(
    'ChVDaGFuZ2VmZWVkRGVzY3JpcHRpb24SEgoEbmFtZRgBIAEoCVIEbmFtZRIyCgRtb2RlGAIgAS'
    'gOMh4uWWRiLlRhYmxlLkNoYW5nZWZlZWRNb2RlLk1vZGVSBG1vZGUSOgoGZm9ybWF0GAMgASgO'
    'MiIuWWRiLlRhYmxlLkNoYW5nZWZlZWRGb3JtYXQuRm9ybWF0UgZmb3JtYXQSPAoFc3RhdGUYBC'
    'ABKA4yJi5ZZGIuVGFibGUuQ2hhbmdlZmVlZERlc2NyaXB0aW9uLlN0YXRlUgVzdGF0ZRItChJ2'
    'aXJ0dWFsX3RpbWVzdGFtcHMYBSABKAhSEXZpcnR1YWxUaW1lc3RhbXBzElAKCmF0dHJpYnV0ZX'
    'MYBiADKAsyMC5ZZGIuVGFibGUuQ2hhbmdlZmVlZERlc2NyaXB0aW9uLkF0dHJpYnV0ZXNFbnRy'
    'eVIKYXR0cmlidXRlcxIdCgphd3NfcmVnaW9uGAcgASgJUglhd3NSZWdpb24SWwoccmVzb2x2ZW'
    'RfdGltZXN0YW1wc19pbnRlcnZhbBgIIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIa'
    'cmVzb2x2ZWRUaW1lc3RhbXBzSW50ZXJ2YWwaPQoPQXR0cmlidXRlc0VudHJ5EhAKA2tleRgBIA'
    'EoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAEiXQoFU3RhdGUSFQoRU1RBVEVfVU5T'
    'UEVDSUZJRUQQABIRCg1TVEFURV9FTkFCTEVEEAESEgoOU1RBVEVfRElTQUJMRUQQAhIWChJTVE'
    'FURV9JTklUSUFMX1NDQU4QAw==');

@$core.Deprecated('Use storagePoolDescriptor instead')
const StoragePool$json = {
  '1': 'StoragePool',
  '2': [
    {'1': 'media', '3': 1, '4': 1, '5': 9, '10': 'media'},
  ],
};

/// Descriptor for `StoragePool`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storagePoolDescriptor =
    $convert.base64Decode('CgtTdG9yYWdlUG9vbBIUCgVtZWRpYRgBIAEoCVIFbWVkaWE=');

@$core.Deprecated('Use storagePolicyDescriptor instead')
const StoragePolicy$json = {
  '1': 'StoragePolicy',
  '2': [
    {'1': 'preset_name', '3': 1, '4': 1, '5': 9, '10': 'presetName'},
    {
      '1': 'syslog',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StoragePool',
      '10': 'syslog'
    },
    {
      '1': 'log',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StoragePool',
      '10': 'log'
    },
    {
      '1': 'data',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StoragePool',
      '10': 'data'
    },
    {
      '1': 'external',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StoragePool',
      '10': 'external'
    },
    {
      '1': 'keep_in_memory',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'keepInMemory'
    },
    {
      '1': 'column_families',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ColumnFamilyPolicy',
      '10': 'columnFamilies'
    },
  ],
};

/// Descriptor for `StoragePolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storagePolicyDescriptor = $convert.base64Decode(
    'Cg1TdG9yYWdlUG9saWN5Eh8KC3ByZXNldF9uYW1lGAEgASgJUgpwcmVzZXROYW1lEi4KBnN5c2'
    'xvZxgCIAEoCzIWLllkYi5UYWJsZS5TdG9yYWdlUG9vbFIGc3lzbG9nEigKA2xvZxgDIAEoCzIW'
    'LllkYi5UYWJsZS5TdG9yYWdlUG9vbFIDbG9nEioKBGRhdGEYBCABKAsyFi5ZZGIuVGFibGUuU3'
    'RvcmFnZVBvb2xSBGRhdGESMgoIZXh0ZXJuYWwYBSABKAsyFi5ZZGIuVGFibGUuU3RvcmFnZVBv'
    'b2xSCGV4dGVybmFsEj0KDmtlZXBfaW5fbWVtb3J5GAYgASgOMhcuWWRiLkZlYXR1cmVGbGFnLl'
    'N0YXR1c1IMa2VlcEluTWVtb3J5EkYKD2NvbHVtbl9mYW1pbGllcxgHIAMoCzIdLllkYi5UYWJs'
    'ZS5Db2x1bW5GYW1pbHlQb2xpY3lSDmNvbHVtbkZhbWlsaWVz');

@$core.Deprecated('Use columnFamilyPolicyDescriptor instead')
const ColumnFamilyPolicy$json = {
  '1': 'ColumnFamilyPolicy',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StoragePool',
      '10': 'data'
    },
    {
      '1': 'external',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StoragePool',
      '10': 'external'
    },
    {
      '1': 'keep_in_memory',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'keepInMemory'
    },
    {
      '1': 'compression',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.ColumnFamilyPolicy.Compression',
      '10': 'compression'
    },
  ],
  '4': [ColumnFamilyPolicy_Compression$json],
};

@$core.Deprecated('Use columnFamilyPolicyDescriptor instead')
const ColumnFamilyPolicy_Compression$json = {
  '1': 'Compression',
  '2': [
    {'1': 'COMPRESSION_UNSPECIFIED', '2': 0},
    {'1': 'UNCOMPRESSED', '2': 1},
    {'1': 'COMPRESSED', '2': 2},
  ],
};

/// Descriptor for `ColumnFamilyPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List columnFamilyPolicyDescriptor = $convert.base64Decode(
    'ChJDb2x1bW5GYW1pbHlQb2xpY3kSEgoEbmFtZRgBIAEoCVIEbmFtZRIqCgRkYXRhGAIgASgLMh'
    'YuWWRiLlRhYmxlLlN0b3JhZ2VQb29sUgRkYXRhEjIKCGV4dGVybmFsGAMgASgLMhYuWWRiLlRh'
    'YmxlLlN0b3JhZ2VQb29sUghleHRlcm5hbBI9Cg5rZWVwX2luX21lbW9yeRgEIAEoDjIXLllkYi'
    '5GZWF0dXJlRmxhZy5TdGF0dXNSDGtlZXBJbk1lbW9yeRJLCgtjb21wcmVzc2lvbhgFIAEoDjIp'
    'LllkYi5UYWJsZS5Db2x1bW5GYW1pbHlQb2xpY3kuQ29tcHJlc3Npb25SC2NvbXByZXNzaW9uIk'
    'wKC0NvbXByZXNzaW9uEhsKF0NPTVBSRVNTSU9OX1VOU1BFQ0lGSUVEEAASEAoMVU5DT01QUkVT'
    'U0VEEAESDgoKQ09NUFJFU1NFRBAC');

@$core.Deprecated('Use compactionPolicyDescriptor instead')
const CompactionPolicy$json = {
  '1': 'CompactionPolicy',
  '2': [
    {'1': 'preset_name', '3': 1, '4': 1, '5': 9, '10': 'presetName'},
  ],
};

/// Descriptor for `CompactionPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compactionPolicyDescriptor = $convert.base64Decode(
    'ChBDb21wYWN0aW9uUG9saWN5Eh8KC3ByZXNldF9uYW1lGAEgASgJUgpwcmVzZXROYW1l');

@$core.Deprecated('Use explicitPartitionsDescriptor instead')
const ExplicitPartitions$json = {
  '1': 'ExplicitPartitions',
  '2': [
    {
      '1': 'split_points',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.TypedValue',
      '10': 'splitPoints'
    },
  ],
};

/// Descriptor for `ExplicitPartitions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List explicitPartitionsDescriptor = $convert.base64Decode(
    'ChJFeHBsaWNpdFBhcnRpdGlvbnMSMgoMc3BsaXRfcG9pbnRzGAEgAygLMg8uWWRiLlR5cGVkVm'
    'FsdWVSC3NwbGl0UG9pbnRz');

@$core.Deprecated('Use partitionStatsDescriptor instead')
const PartitionStats$json = {
  '1': 'PartitionStats',
  '2': [
    {'1': 'rows_estimate', '3': 1, '4': 1, '5': 4, '10': 'rowsEstimate'},
    {'1': 'store_size', '3': 2, '4': 1, '5': 4, '10': 'storeSize'},
    {'1': 'leader_node_id', '3': 3, '4': 1, '5': 13, '10': 'leaderNodeId'},
  ],
};

/// Descriptor for `PartitionStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitionStatsDescriptor = $convert.base64Decode(
    'Cg5QYXJ0aXRpb25TdGF0cxIjCg1yb3dzX2VzdGltYXRlGAEgASgEUgxyb3dzRXN0aW1hdGUSHQ'
    'oKc3RvcmVfc2l6ZRgCIAEoBFIJc3RvcmVTaXplEiQKDmxlYWRlcl9ub2RlX2lkGAMgASgNUgxs'
    'ZWFkZXJOb2RlSWQ=');

@$core.Deprecated('Use tableStatsDescriptor instead')
const TableStats$json = {
  '1': 'TableStats',
  '2': [
    {
      '1': 'partition_stats',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.PartitionStats',
      '10': 'partitionStats'
    },
    {'1': 'rows_estimate', '3': 2, '4': 1, '5': 4, '10': 'rowsEstimate'},
    {'1': 'store_size', '3': 3, '4': 1, '5': 4, '10': 'storeSize'},
    {'1': 'partitions', '3': 4, '4': 1, '5': 4, '10': 'partitions'},
    {
      '1': 'creation_time',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'creationTime'
    },
    {
      '1': 'modification_time',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'modificationTime'
    },
  ],
};

/// Descriptor for `TableStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tableStatsDescriptor = $convert.base64Decode(
    'CgpUYWJsZVN0YXRzEkIKD3BhcnRpdGlvbl9zdGF0cxgBIAMoCzIZLllkYi5UYWJsZS5QYXJ0aX'
    'Rpb25TdGF0c1IOcGFydGl0aW9uU3RhdHMSIwoNcm93c19lc3RpbWF0ZRgCIAEoBFIMcm93c0Vz'
    'dGltYXRlEh0KCnN0b3JlX3NpemUYAyABKARSCXN0b3JlU2l6ZRIeCgpwYXJ0aXRpb25zGAQgAS'
    'gEUgpwYXJ0aXRpb25zEj8KDWNyZWF0aW9uX3RpbWUYBSABKAsyGi5nb29nbGUucHJvdG9idWYu'
    'VGltZXN0YW1wUgxjcmVhdGlvblRpbWUSRwoRbW9kaWZpY2F0aW9uX3RpbWUYBiABKAsyGi5nb2'
    '9nbGUucHJvdG9idWYuVGltZXN0YW1wUhBtb2RpZmljYXRpb25UaW1l');

@$core.Deprecated('Use partitioningPolicyDescriptor instead')
const PartitioningPolicy$json = {
  '1': 'PartitioningPolicy',
  '2': [
    {'1': 'preset_name', '3': 1, '4': 1, '5': 9, '10': 'presetName'},
    {
      '1': 'auto_partitioning',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.PartitioningPolicy.AutoPartitioningPolicy',
      '10': 'autoPartitioning'
    },
    {
      '1': 'uniform_partitions',
      '3': 3,
      '4': 1,
      '5': 4,
      '9': 0,
      '10': 'uniformPartitions'
    },
    {
      '1': 'explicit_partitions',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.ExplicitPartitions',
      '9': 0,
      '10': 'explicitPartitions'
    },
  ],
  '4': [PartitioningPolicy_AutoPartitioningPolicy$json],
  '8': [
    {'1': 'partitions'},
  ],
};

@$core.Deprecated('Use partitioningPolicyDescriptor instead')
const PartitioningPolicy_AutoPartitioningPolicy$json = {
  '1': 'AutoPartitioningPolicy',
  '2': [
    {'1': 'AUTO_PARTITIONING_POLICY_UNSPECIFIED', '2': 0},
    {'1': 'DISABLED', '2': 1},
    {'1': 'AUTO_SPLIT', '2': 2},
    {'1': 'AUTO_SPLIT_MERGE', '2': 3},
  ],
};

/// Descriptor for `PartitioningPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitioningPolicyDescriptor = $convert.base64Decode(
    'ChJQYXJ0aXRpb25pbmdQb2xpY3kSHwoLcHJlc2V0X25hbWUYASABKAlSCnByZXNldE5hbWUSYQ'
    'oRYXV0b19wYXJ0aXRpb25pbmcYAiABKA4yNC5ZZGIuVGFibGUuUGFydGl0aW9uaW5nUG9saWN5'
    'LkF1dG9QYXJ0aXRpb25pbmdQb2xpY3lSEGF1dG9QYXJ0aXRpb25pbmcSLwoSdW5pZm9ybV9wYX'
    'J0aXRpb25zGAMgASgESABSEXVuaWZvcm1QYXJ0aXRpb25zElAKE2V4cGxpY2l0X3BhcnRpdGlv'
    'bnMYBCABKAsyHS5ZZGIuVGFibGUuRXhwbGljaXRQYXJ0aXRpb25zSABSEmV4cGxpY2l0UGFydG'
    'l0aW9ucyJ2ChZBdXRvUGFydGl0aW9uaW5nUG9saWN5EigKJEFVVE9fUEFSVElUSU9OSU5HX1BP'
    'TElDWV9VTlNQRUNJRklFRBAAEgwKCERJU0FCTEVEEAESDgoKQVVUT19TUExJVBACEhQKEEFVVE'
    '9fU1BMSVRfTUVSR0UQA0IMCgpwYXJ0aXRpb25z');

@$core.Deprecated('Use executionPolicyDescriptor instead')
const ExecutionPolicy$json = {
  '1': 'ExecutionPolicy',
  '2': [
    {'1': 'preset_name', '3': 1, '4': 1, '5': 9, '10': 'presetName'},
  ],
};

/// Descriptor for `ExecutionPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executionPolicyDescriptor = $convert.base64Decode(
    'Cg9FeGVjdXRpb25Qb2xpY3kSHwoLcHJlc2V0X25hbWUYASABKAlSCnByZXNldE5hbWU=');

@$core.Deprecated('Use replicationPolicyDescriptor instead')
const ReplicationPolicy$json = {
  '1': 'ReplicationPolicy',
  '2': [
    {'1': 'preset_name', '3': 1, '4': 1, '5': 9, '10': 'presetName'},
    {'1': 'replicas_count', '3': 2, '4': 1, '5': 13, '10': 'replicasCount'},
    {
      '1': 'create_per_availability_zone',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'createPerAvailabilityZone'
    },
    {
      '1': 'allow_promotion',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'allowPromotion'
    },
  ],
};

/// Descriptor for `ReplicationPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replicationPolicyDescriptor = $convert.base64Decode(
    'ChFSZXBsaWNhdGlvblBvbGljeRIfCgtwcmVzZXRfbmFtZRgBIAEoCVIKcHJlc2V0TmFtZRIlCg'
    '5yZXBsaWNhc19jb3VudBgCIAEoDVINcmVwbGljYXNDb3VudBJYChxjcmVhdGVfcGVyX2F2YWls'
    'YWJpbGl0eV96b25lGAMgASgOMhcuWWRiLkZlYXR1cmVGbGFnLlN0YXR1c1IZY3JlYXRlUGVyQX'
    'ZhaWxhYmlsaXR5Wm9uZRJACg9hbGxvd19wcm9tb3Rpb24YBCABKA4yFy5ZZGIuRmVhdHVyZUZs'
    'YWcuU3RhdHVzUg5hbGxvd1Byb21vdGlvbg==');

@$core.Deprecated('Use cachingPolicyDescriptor instead')
const CachingPolicy$json = {
  '1': 'CachingPolicy',
  '2': [
    {'1': 'preset_name', '3': 1, '4': 1, '5': 9, '10': 'presetName'},
  ],
};

/// Descriptor for `CachingPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cachingPolicyDescriptor = $convert.base64Decode(
    'Cg1DYWNoaW5nUG9saWN5Eh8KC3ByZXNldF9uYW1lGAEgASgJUgpwcmVzZXROYW1l');

@$core.Deprecated('Use tableProfileDescriptor instead')
const TableProfile$json = {
  '1': 'TableProfile',
  '2': [
    {'1': 'preset_name', '3': 1, '4': 1, '5': 9, '10': 'presetName'},
    {
      '1': 'storage_policy',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StoragePolicy',
      '10': 'storagePolicy'
    },
    {
      '1': 'compaction_policy',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.CompactionPolicy',
      '10': 'compactionPolicy'
    },
    {
      '1': 'partitioning_policy',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.PartitioningPolicy',
      '10': 'partitioningPolicy'
    },
    {
      '1': 'execution_policy',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.ExecutionPolicy',
      '10': 'executionPolicy'
    },
    {
      '1': 'replication_policy',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.ReplicationPolicy',
      '10': 'replicationPolicy'
    },
    {
      '1': 'caching_policy',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.CachingPolicy',
      '10': 'cachingPolicy'
    },
  ],
};

/// Descriptor for `TableProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tableProfileDescriptor = $convert.base64Decode(
    'CgxUYWJsZVByb2ZpbGUSHwoLcHJlc2V0X25hbWUYASABKAlSCnByZXNldE5hbWUSPwoOc3Rvcm'
    'FnZV9wb2xpY3kYAiABKAsyGC5ZZGIuVGFibGUuU3RvcmFnZVBvbGljeVINc3RvcmFnZVBvbGlj'
    'eRJIChFjb21wYWN0aW9uX3BvbGljeRgDIAEoCzIbLllkYi5UYWJsZS5Db21wYWN0aW9uUG9saW'
    'N5UhBjb21wYWN0aW9uUG9saWN5Ek4KE3BhcnRpdGlvbmluZ19wb2xpY3kYBCABKAsyHS5ZZGIu'
    'VGFibGUuUGFydGl0aW9uaW5nUG9saWN5UhJwYXJ0aXRpb25pbmdQb2xpY3kSRQoQZXhlY3V0aW'
    '9uX3BvbGljeRgFIAEoCzIaLllkYi5UYWJsZS5FeGVjdXRpb25Qb2xpY3lSD2V4ZWN1dGlvblBv'
    'bGljeRJLChJyZXBsaWNhdGlvbl9wb2xpY3kYBiABKAsyHC5ZZGIuVGFibGUuUmVwbGljYXRpb2'
    '5Qb2xpY3lSEXJlcGxpY2F0aW9uUG9saWN5Ej8KDmNhY2hpbmdfcG9saWN5GAcgASgLMhguWWRi'
    'LlRhYmxlLkNhY2hpbmdQb2xpY3lSDWNhY2hpbmdQb2xpY3k=');

@$core.Deprecated('Use sequenceDescriptionDescriptor instead')
const SequenceDescription$json = {
  '1': 'SequenceDescription',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {
      '1': 'min_value',
      '3': 2,
      '4': 1,
      '5': 18,
      '9': 1,
      '10': 'minValue',
      '17': true
    },
    {
      '1': 'max_value',
      '3': 3,
      '4': 1,
      '5': 18,
      '9': 2,
      '10': 'maxValue',
      '17': true
    },
    {
      '1': 'start_value',
      '3': 4,
      '4': 1,
      '5': 18,
      '9': 3,
      '10': 'startValue',
      '17': true
    },
    {'1': 'cache', '3': 5, '4': 1, '5': 4, '9': 4, '10': 'cache', '17': true},
    {
      '1': 'increment',
      '3': 6,
      '4': 1,
      '5': 18,
      '9': 5,
      '10': 'increment',
      '17': true
    },
    {'1': 'cycle', '3': 7, '4': 1, '5': 8, '9': 6, '10': 'cycle', '17': true},
    {
      '1': 'set_val',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.SequenceDescription.SetVal',
      '9': 7,
      '10': 'setVal',
      '17': true
    },
  ],
  '3': [SequenceDescription_SetVal$json],
  '8': [
    {'1': '_name'},
    {'1': '_min_value'},
    {'1': '_max_value'},
    {'1': '_start_value'},
    {'1': '_cache'},
    {'1': '_increment'},
    {'1': '_cycle'},
    {'1': '_set_val'},
  ],
};

@$core.Deprecated('Use sequenceDescriptionDescriptor instead')
const SequenceDescription_SetVal$json = {
  '1': 'SetVal',
  '2': [
    {
      '1': 'next_value',
      '3': 1,
      '4': 1,
      '5': 18,
      '9': 0,
      '10': 'nextValue',
      '17': true
    },
    {
      '1': 'next_used',
      '3': 2,
      '4': 1,
      '5': 8,
      '9': 1,
      '10': 'nextUsed',
      '17': true
    },
  ],
  '8': [
    {'1': '_next_value'},
    {'1': '_next_used'},
  ],
};

/// Descriptor for `SequenceDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceDescriptionDescriptor = $convert.base64Decode(
    'ChNTZXF1ZW5jZURlc2NyaXB0aW9uEhcKBG5hbWUYASABKAlIAFIEbmFtZYgBARIgCgltaW5fdm'
    'FsdWUYAiABKBJIAVIIbWluVmFsdWWIAQESIAoJbWF4X3ZhbHVlGAMgASgSSAJSCG1heFZhbHVl'
    'iAEBEiQKC3N0YXJ0X3ZhbHVlGAQgASgSSANSCnN0YXJ0VmFsdWWIAQESGQoFY2FjaGUYBSABKA'
    'RIBFIFY2FjaGWIAQESIQoJaW5jcmVtZW50GAYgASgSSAVSCWluY3JlbWVudIgBARIZCgVjeWNs'
    'ZRgHIAEoCEgGUgVjeWNsZYgBARJDCgdzZXRfdmFsGAggASgLMiUuWWRiLlRhYmxlLlNlcXVlbm'
    'NlRGVzY3JpcHRpb24uU2V0VmFsSAdSBnNldFZhbIgBARprCgZTZXRWYWwSIgoKbmV4dF92YWx1'
    'ZRgBIAEoEkgAUgluZXh0VmFsdWWIAQESIAoJbmV4dF91c2VkGAIgASgISAFSCG5leHRVc2VkiA'
    'EBQg0KC19uZXh0X3ZhbHVlQgwKCl9uZXh0X3VzZWRCBwoFX25hbWVCDAoKX21pbl92YWx1ZUIM'
    'CgpfbWF4X3ZhbHVlQg4KDF9zdGFydF92YWx1ZUIICgZfY2FjaGVCDAoKX2luY3JlbWVudEIICg'
    'ZfY3ljbGVCCgoIX3NldF92YWw=');

@$core.Deprecated('Use columnMetaDescriptor instead')
const ColumnMeta$json = {
  '1': 'ColumnMeta',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 11, '6': '.Ydb.Type', '10': 'type'},
    {'1': 'family', '3': 3, '4': 1, '5': 9, '10': 'family'},
    {
      '1': 'not_null',
      '3': 4,
      '4': 1,
      '5': 8,
      '9': 1,
      '10': 'notNull',
      '17': true
    },
    {
      '1': 'from_literal',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TypedValue',
      '9': 0,
      '10': 'fromLiteral'
    },
    {
      '1': 'from_sequence',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.SequenceDescription',
      '9': 0,
      '10': 'fromSequence'
    },
  ],
  '8': [
    {'1': 'default_value'},
    {'1': '_not_null'},
  ],
};

/// Descriptor for `ColumnMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List columnMetaDescriptor = $convert.base64Decode(
    'CgpDb2x1bW5NZXRhEhIKBG5hbWUYASABKAlSBG5hbWUSHQoEdHlwZRgCIAEoCzIJLllkYi5UeX'
    'BlUgR0eXBlEhYKBmZhbWlseRgDIAEoCVIGZmFtaWx5Eh4KCG5vdF9udWxsGAQgASgISAFSB25v'
    'dE51bGyIAQESNAoMZnJvbV9saXRlcmFsGAUgASgLMg8uWWRiLlR5cGVkVmFsdWVIAFILZnJvbU'
    'xpdGVyYWwSRQoNZnJvbV9zZXF1ZW5jZRgGIAEoCzIeLllkYi5UYWJsZS5TZXF1ZW5jZURlc2Ny'
    'aXB0aW9uSABSDGZyb21TZXF1ZW5jZUIPCg1kZWZhdWx0X3ZhbHVlQgsKCV9ub3RfbnVsbA==');

@$core.Deprecated('Use dateTypeColumnModeSettingsDescriptor instead')
const DateTypeColumnModeSettings$json = {
  '1': 'DateTypeColumnModeSettings',
  '2': [
    {'1': 'column_name', '3': 1, '4': 1, '5': 9, '10': 'columnName'},
    {
      '1': 'expire_after_seconds',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'expireAfterSeconds'
    },
  ],
};

/// Descriptor for `DateTypeColumnModeSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dateTypeColumnModeSettingsDescriptor =
    $convert.base64Decode(
        'ChpEYXRlVHlwZUNvbHVtbk1vZGVTZXR0aW5ncxIfCgtjb2x1bW5fbmFtZRgBIAEoCVIKY29sdW'
        '1uTmFtZRIwChRleHBpcmVfYWZ0ZXJfc2Vjb25kcxgCIAEoDVISZXhwaXJlQWZ0ZXJTZWNvbmRz');

@$core.Deprecated('Use valueSinceUnixEpochModeSettingsDescriptor instead')
const ValueSinceUnixEpochModeSettings$json = {
  '1': 'ValueSinceUnixEpochModeSettings',
  '2': [
    {'1': 'column_name', '3': 1, '4': 1, '5': 9, '10': 'columnName'},
    {
      '1': 'column_unit',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.ValueSinceUnixEpochModeSettings.Unit',
      '10': 'columnUnit'
    },
    {
      '1': 'expire_after_seconds',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'expireAfterSeconds'
    },
  ],
  '4': [ValueSinceUnixEpochModeSettings_Unit$json],
};

@$core.Deprecated('Use valueSinceUnixEpochModeSettingsDescriptor instead')
const ValueSinceUnixEpochModeSettings_Unit$json = {
  '1': 'Unit',
  '2': [
    {'1': 'UNIT_UNSPECIFIED', '2': 0},
    {'1': 'UNIT_SECONDS', '2': 1},
    {'1': 'UNIT_MILLISECONDS', '2': 2},
    {'1': 'UNIT_MICROSECONDS', '2': 3},
    {'1': 'UNIT_NANOSECONDS', '2': 4},
  ],
};

/// Descriptor for `ValueSinceUnixEpochModeSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueSinceUnixEpochModeSettingsDescriptor = $convert.base64Decode(
    'Ch9WYWx1ZVNpbmNlVW5peEVwb2NoTW9kZVNldHRpbmdzEh8KC2NvbHVtbl9uYW1lGAEgASgJUg'
    'pjb2x1bW5OYW1lElAKC2NvbHVtbl91bml0GAIgASgOMi8uWWRiLlRhYmxlLlZhbHVlU2luY2VV'
    'bml4RXBvY2hNb2RlU2V0dGluZ3MuVW5pdFIKY29sdW1uVW5pdBIwChRleHBpcmVfYWZ0ZXJfc2'
    'Vjb25kcxgDIAEoDVISZXhwaXJlQWZ0ZXJTZWNvbmRzInIKBFVuaXQSFAoQVU5JVF9VTlNQRUNJ'
    'RklFRBAAEhAKDFVOSVRfU0VDT05EUxABEhUKEVVOSVRfTUlMTElTRUNPTkRTEAISFQoRVU5JVF'
    '9NSUNST1NFQ09ORFMQAxIUChBVTklUX05BTk9TRUNPTkRTEAQ=');

@$core.Deprecated('Use ttlSettingsDescriptor instead')
const TtlSettings$json = {
  '1': 'TtlSettings',
  '2': [
    {
      '1': 'date_type_column',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.DateTypeColumnModeSettings',
      '9': 0,
      '10': 'dateTypeColumn'
    },
    {
      '1': 'value_since_unix_epoch',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.ValueSinceUnixEpochModeSettings',
      '9': 0,
      '10': 'valueSinceUnixEpoch'
    },
    {
      '1': 'run_interval_seconds',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'runIntervalSeconds'
    },
  ],
  '8': [
    {'1': 'mode'},
  ],
};

/// Descriptor for `TtlSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ttlSettingsDescriptor = $convert.base64Decode(
    'CgtUdGxTZXR0aW5ncxJRChBkYXRlX3R5cGVfY29sdW1uGAEgASgLMiUuWWRiLlRhYmxlLkRhdG'
    'VUeXBlQ29sdW1uTW9kZVNldHRpbmdzSABSDmRhdGVUeXBlQ29sdW1uEmEKFnZhbHVlX3NpbmNl'
    'X3VuaXhfZXBvY2gYAiABKAsyKi5ZZGIuVGFibGUuVmFsdWVTaW5jZVVuaXhFcG9jaE1vZGVTZX'
    'R0aW5nc0gAUhN2YWx1ZVNpbmNlVW5peEVwb2NoEjAKFHJ1bl9pbnRlcnZhbF9zZWNvbmRzGAMg'
    'ASgNUhJydW5JbnRlcnZhbFNlY29uZHNCBgoEbW9kZQ==');

@$core.Deprecated('Use storageSettingsDescriptor instead')
const StorageSettings$json = {
  '1': 'StorageSettings',
  '2': [
    {
      '1': 'tablet_commit_log0',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StoragePool',
      '10': 'tabletCommitLog0'
    },
    {
      '1': 'tablet_commit_log1',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StoragePool',
      '10': 'tabletCommitLog1'
    },
    {
      '1': 'external',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StoragePool',
      '10': 'external'
    },
    {
      '1': 'store_external_blobs',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'storeExternalBlobs'
    },
  ],
};

/// Descriptor for `StorageSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageSettingsDescriptor = $convert.base64Decode(
    'Cg9TdG9yYWdlU2V0dGluZ3MSRAoSdGFibGV0X2NvbW1pdF9sb2cwGAEgASgLMhYuWWRiLlRhYm'
    'xlLlN0b3JhZ2VQb29sUhB0YWJsZXRDb21taXRMb2cwEkQKEnRhYmxldF9jb21taXRfbG9nMRgC'
    'IAEoCzIWLllkYi5UYWJsZS5TdG9yYWdlUG9vbFIQdGFibGV0Q29tbWl0TG9nMRIyCghleHRlcm'
    '5hbBgEIAEoCzIWLllkYi5UYWJsZS5TdG9yYWdlUG9vbFIIZXh0ZXJuYWwSSQoUc3RvcmVfZXh0'
    'ZXJuYWxfYmxvYnMYBSABKA4yFy5ZZGIuRmVhdHVyZUZsYWcuU3RhdHVzUhJzdG9yZUV4dGVybm'
    'FsQmxvYnM=');

@$core.Deprecated('Use columnFamilyDescriptor instead')
const ColumnFamily$json = {
  '1': 'ColumnFamily',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StoragePool',
      '10': 'data'
    },
    {
      '1': 'compression',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.ColumnFamily.Compression',
      '10': 'compression'
    },
    {
      '1': 'keep_in_memory',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'keepInMemory'
    },
  ],
  '4': [ColumnFamily_Compression$json],
};

@$core.Deprecated('Use columnFamilyDescriptor instead')
const ColumnFamily_Compression$json = {
  '1': 'Compression',
  '2': [
    {'1': 'COMPRESSION_UNSPECIFIED', '2': 0},
    {'1': 'COMPRESSION_NONE', '2': 1},
    {'1': 'COMPRESSION_LZ4', '2': 2},
  ],
};

/// Descriptor for `ColumnFamily`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List columnFamilyDescriptor = $convert.base64Decode(
    'CgxDb2x1bW5GYW1pbHkSEgoEbmFtZRgBIAEoCVIEbmFtZRIqCgRkYXRhGAIgASgLMhYuWWRiLl'
    'RhYmxlLlN0b3JhZ2VQb29sUgRkYXRhEkUKC2NvbXByZXNzaW9uGAMgASgOMiMuWWRiLlRhYmxl'
    'LkNvbHVtbkZhbWlseS5Db21wcmVzc2lvblILY29tcHJlc3Npb24SPQoOa2VlcF9pbl9tZW1vcn'
    'kYBCABKA4yFy5ZZGIuRmVhdHVyZUZsYWcuU3RhdHVzUgxrZWVwSW5NZW1vcnkiVQoLQ29tcHJl'
    'c3Npb24SGwoXQ09NUFJFU1NJT05fVU5TUEVDSUZJRUQQABIUChBDT01QUkVTU0lPTl9OT05FEA'
    'ESEwoPQ09NUFJFU1NJT05fTFo0EAI=');

@$core.Deprecated('Use partitioningSettingsDescriptor instead')
const PartitioningSettings$json = {
  '1': 'PartitioningSettings',
  '2': [
    {'1': 'partition_by', '3': 1, '4': 3, '5': 9, '10': 'partitionBy'},
    {
      '1': 'partitioning_by_size',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'partitioningBySize'
    },
    {'1': 'partition_size_mb', '3': 3, '4': 1, '5': 4, '10': 'partitionSizeMb'},
    {
      '1': 'partitioning_by_load',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'partitioningByLoad'
    },
    {
      '1': 'min_partitions_count',
      '3': 6,
      '4': 1,
      '5': 4,
      '10': 'minPartitionsCount'
    },
    {
      '1': 'max_partitions_count',
      '3': 7,
      '4': 1,
      '5': 4,
      '10': 'maxPartitionsCount'
    },
  ],
  '9': [
    {'1': 5, '2': 6},
  ],
};

/// Descriptor for `PartitioningSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitioningSettingsDescriptor = $convert.base64Decode(
    'ChRQYXJ0aXRpb25pbmdTZXR0aW5ncxIhCgxwYXJ0aXRpb25fYnkYASADKAlSC3BhcnRpdGlvbk'
    'J5EkkKFHBhcnRpdGlvbmluZ19ieV9zaXplGAIgASgOMhcuWWRiLkZlYXR1cmVGbGFnLlN0YXR1'
    'c1IScGFydGl0aW9uaW5nQnlTaXplEioKEXBhcnRpdGlvbl9zaXplX21iGAMgASgEUg9wYXJ0aX'
    'Rpb25TaXplTWISSQoUcGFydGl0aW9uaW5nX2J5X2xvYWQYBCABKA4yFy5ZZGIuRmVhdHVyZUZs'
    'YWcuU3RhdHVzUhJwYXJ0aXRpb25pbmdCeUxvYWQSMAoUbWluX3BhcnRpdGlvbnNfY291bnQYBi'
    'ABKARSEm1pblBhcnRpdGlvbnNDb3VudBIwChRtYXhfcGFydGl0aW9uc19jb3VudBgHIAEoBFIS'
    'bWF4UGFydGl0aW9uc0NvdW50SgQIBRAG');

@$core.Deprecated('Use azReadReplicasSettingsDescriptor instead')
const AzReadReplicasSettings$json = {
  '1': 'AzReadReplicasSettings',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'read_replicas_count',
      '3': 2,
      '4': 1,
      '5': 4,
      '10': 'readReplicasCount'
    },
  ],
};

/// Descriptor for `AzReadReplicasSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List azReadReplicasSettingsDescriptor =
    $convert.base64Decode(
        'ChZBelJlYWRSZXBsaWNhc1NldHRpbmdzEhIKBG5hbWUYASABKAlSBG5hbWUSLgoTcmVhZF9yZX'
        'BsaWNhc19jb3VudBgCIAEoBFIRcmVhZFJlcGxpY2FzQ291bnQ=');

@$core.Deprecated('Use clusterReplicasSettingsDescriptor instead')
const ClusterReplicasSettings$json = {
  '1': 'ClusterReplicasSettings',
  '2': [
    {
      '1': 'az_read_replicas_settings',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.AzReadReplicasSettings',
      '10': 'azReadReplicasSettings'
    },
  ],
};

/// Descriptor for `ClusterReplicasSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterReplicasSettingsDescriptor = $convert.base64Decode(
    'ChdDbHVzdGVyUmVwbGljYXNTZXR0aW5ncxJcChlhel9yZWFkX3JlcGxpY2FzX3NldHRpbmdzGA'
    'IgAygLMiEuWWRiLlRhYmxlLkF6UmVhZFJlcGxpY2FzU2V0dGluZ3NSFmF6UmVhZFJlcGxpY2Fz'
    'U2V0dGluZ3M=');

@$core.Deprecated('Use readReplicasSettingsDescriptor instead')
const ReadReplicasSettings$json = {
  '1': 'ReadReplicasSettings',
  '2': [
    {
      '1': 'per_az_read_replicas_count',
      '3': 1,
      '4': 1,
      '5': 4,
      '9': 0,
      '10': 'perAzReadReplicasCount'
    },
    {
      '1': 'any_az_read_replicas_count',
      '3': 2,
      '4': 1,
      '5': 4,
      '9': 0,
      '10': 'anyAzReadReplicasCount'
    },
  ],
  '8': [
    {'1': 'settings'},
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `ReadReplicasSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readReplicasSettingsDescriptor = $convert.base64Decode(
    'ChRSZWFkUmVwbGljYXNTZXR0aW5ncxI8ChpwZXJfYXpfcmVhZF9yZXBsaWNhc19jb3VudBgBIA'
    'EoBEgAUhZwZXJBelJlYWRSZXBsaWNhc0NvdW50EjwKGmFueV9hel9yZWFkX3JlcGxpY2FzX2Nv'
    'dW50GAIgASgESABSFmFueUF6UmVhZFJlcGxpY2FzQ291bnRCCgoIc2V0dGluZ3NKBAgDEAQ=');

@$core.Deprecated('Use createTableRequestDescriptor instead')
const CreateTableRequest$json = {
  '1': 'CreateTableRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {
      '1': 'columns',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ColumnMeta',
      '10': 'columns'
    },
    {'1': 'primary_key', '3': 4, '4': 3, '5': 9, '10': 'primaryKey'},
    {
      '1': 'profile',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.TableProfile',
      '10': 'profile'
    },
    {
      '1': 'operation_params',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {
      '1': 'indexes',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.TableIndex',
      '10': 'indexes'
    },
    {
      '1': 'ttl_settings',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.TtlSettings',
      '10': 'ttlSettings'
    },
    {
      '1': 'storage_settings',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StorageSettings',
      '10': 'storageSettings'
    },
    {
      '1': 'column_families',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ColumnFamily',
      '10': 'columnFamilies'
    },
    {
      '1': 'attributes',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.CreateTableRequest.AttributesEntry',
      '8': {},
      '10': 'attributes'
    },
    {
      '1': 'compaction_policy',
      '3': 12,
      '4': 1,
      '5': 9,
      '10': 'compactionPolicy'
    },
    {
      '1': 'uniform_partitions',
      '3': 13,
      '4': 1,
      '5': 4,
      '9': 0,
      '10': 'uniformPartitions'
    },
    {
      '1': 'partition_at_keys',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.ExplicitPartitions',
      '9': 0,
      '10': 'partitionAtKeys'
    },
    {
      '1': 'partitioning_settings',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.PartitioningSettings',
      '10': 'partitioningSettings'
    },
    {
      '1': 'key_bloom_filter',
      '3': 16,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'keyBloomFilter'
    },
    {
      '1': 'read_replicas_settings',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.ReadReplicasSettings',
      '10': 'readReplicasSettings'
    },
    {'1': 'tiering', '3': 18, '4': 1, '5': 9, '10': 'tiering'},
    {'1': 'temporary', '3': 19, '4': 1, '5': 8, '10': 'temporary'},
    {
      '1': 'store_type',
      '3': 20,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.StoreType',
      '10': 'storeType'
    },
  ],
  '3': [CreateTableRequest_AttributesEntry$json],
  '8': [
    {'1': 'partitions'},
  ],
};

@$core.Deprecated('Use createTableRequestDescriptor instead')
const CreateTableRequest_AttributesEntry$json = {
  '1': 'AttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CreateTableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTableRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVUYWJsZVJlcXVlc3QSHQoKc2Vzc2lvbl9pZBgBIAEoCVIJc2Vzc2lvbklkEhIKBH'
    'BhdGgYAiABKAlSBHBhdGgSLwoHY29sdW1ucxgDIAMoCzIVLllkYi5UYWJsZS5Db2x1bW5NZXRh'
    'Ugdjb2x1bW5zEh8KC3ByaW1hcnlfa2V5GAQgAygJUgpwcmltYXJ5S2V5EjEKB3Byb2ZpbGUYBS'
    'ABKAsyFy5ZZGIuVGFibGUuVGFibGVQcm9maWxlUgdwcm9maWxlEkoKEG9wZXJhdGlvbl9wYXJh'
    'bXMYBiABKAsyHy5ZZGIuT3BlcmF0aW9ucy5PcGVyYXRpb25QYXJhbXNSD29wZXJhdGlvblBhcm'
    'FtcxIvCgdpbmRleGVzGAcgAygLMhUuWWRiLlRhYmxlLlRhYmxlSW5kZXhSB2luZGV4ZXMSOQoM'
    'dHRsX3NldHRpbmdzGAggASgLMhYuWWRiLlRhYmxlLlR0bFNldHRpbmdzUgt0dGxTZXR0aW5ncx'
    'JFChBzdG9yYWdlX3NldHRpbmdzGAkgASgLMhouWWRiLlRhYmxlLlN0b3JhZ2VTZXR0aW5nc1IP'
    'c3RvcmFnZVNldHRpbmdzEkAKD2NvbHVtbl9mYW1pbGllcxgKIAMoCzIXLllkYi5UYWJsZS5Db2'
    'x1bW5GYW1pbHlSDmNvbHVtbkZhbWlsaWVzEmYKCmF0dHJpYnV0ZXMYCyADKAsyLS5ZZGIuVGFi'
    'bGUuQ3JlYXRlVGFibGVSZXF1ZXN0LkF0dHJpYnV0ZXNFbnRyeUIXouYqBwoFCAEQgCCq5ioICg'
    'YKBAgBEGRSCmF0dHJpYnV0ZXMSKwoRY29tcGFjdGlvbl9wb2xpY3kYDCABKAlSEGNvbXBhY3Rp'
    'b25Qb2xpY3kSLwoSdW5pZm9ybV9wYXJ0aXRpb25zGA0gASgESABSEXVuaWZvcm1QYXJ0aXRpb2'
    '5zEksKEXBhcnRpdGlvbl9hdF9rZXlzGA4gASgLMh0uWWRiLlRhYmxlLkV4cGxpY2l0UGFydGl0'
    'aW9uc0gAUg9wYXJ0aXRpb25BdEtleXMSVAoVcGFydGl0aW9uaW5nX3NldHRpbmdzGA8gASgLMh'
    '8uWWRiLlRhYmxlLlBhcnRpdGlvbmluZ1NldHRpbmdzUhRwYXJ0aXRpb25pbmdTZXR0aW5ncxJB'
    'ChBrZXlfYmxvb21fZmlsdGVyGBAgASgOMhcuWWRiLkZlYXR1cmVGbGFnLlN0YXR1c1IOa2V5Qm'
    'xvb21GaWx0ZXISVQoWcmVhZF9yZXBsaWNhc19zZXR0aW5ncxgRIAEoCzIfLllkYi5UYWJsZS5S'
    'ZWFkUmVwbGljYXNTZXR0aW5nc1IUcmVhZFJlcGxpY2FzU2V0dGluZ3MSGAoHdGllcmluZxgSIA'
    'EoCVIHdGllcmluZxIcCgl0ZW1wb3JhcnkYEyABKAhSCXRlbXBvcmFyeRIzCgpzdG9yZV90eXBl'
    'GBQgASgOMhQuWWRiLlRhYmxlLlN0b3JlVHlwZVIJc3RvcmVUeXBlGj0KD0F0dHJpYnV0ZXNFbn'
    'RyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBQgwKCnBhcnRp'
    'dGlvbnM=');

@$core.Deprecated('Use createTableResponseDescriptor instead')
const CreateTableResponse$json = {
  '1': 'CreateTableResponse',
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

/// Descriptor for `CreateTableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTableResponseDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVUYWJsZVJlc3BvbnNlEjcKCW9wZXJhdGlvbhgBIAEoCzIZLllkYi5PcGVyYXRpb2'
    '5zLk9wZXJhdGlvblIJb3BlcmF0aW9u');

@$core.Deprecated('Use dropTableRequestDescriptor instead')
const DropTableRequest$json = {
  '1': 'DropTableRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {
      '1': 'operation_params',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `DropTableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dropTableRequestDescriptor = $convert.base64Decode(
    'ChBEcm9wVGFibGVSZXF1ZXN0Eh0KCnNlc3Npb25faWQYASABKAlSCXNlc3Npb25JZBISCgRwYX'
    'RoGAIgASgJUgRwYXRoEkoKEG9wZXJhdGlvbl9wYXJhbXMYBCABKAsyHy5ZZGIuT3BlcmF0aW9u'
    'cy5PcGVyYXRpb25QYXJhbXNSD29wZXJhdGlvblBhcmFtc0oECAMQBA==');

@$core.Deprecated('Use dropTableResponseDescriptor instead')
const DropTableResponse$json = {
  '1': 'DropTableResponse',
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

/// Descriptor for `DropTableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dropTableResponseDescriptor = $convert.base64Decode(
    'ChFEcm9wVGFibGVSZXNwb25zZRI3CglvcGVyYXRpb24YASABKAsyGS5ZZGIuT3BlcmF0aW9ucy'
    '5PcGVyYXRpb25SCW9wZXJhdGlvbg==');

@$core.Deprecated('Use renameIndexItemDescriptor instead')
const RenameIndexItem$json = {
  '1': 'RenameIndexItem',
  '2': [
    {'1': 'source_name', '3': 1, '4': 1, '5': 9, '10': 'sourceName'},
    {'1': 'destination_name', '3': 2, '4': 1, '5': 9, '10': 'destinationName'},
    {
      '1': 'replace_destination',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'replaceDestination'
    },
  ],
};

/// Descriptor for `RenameIndexItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renameIndexItemDescriptor = $convert.base64Decode(
    'Cg9SZW5hbWVJbmRleEl0ZW0SHwoLc291cmNlX25hbWUYASABKAlSCnNvdXJjZU5hbWUSKQoQZG'
    'VzdGluYXRpb25fbmFtZRgCIAEoCVIPZGVzdGluYXRpb25OYW1lEi8KE3JlcGxhY2VfZGVzdGlu'
    'YXRpb24YAyABKAhSEnJlcGxhY2VEZXN0aW5hdGlvbg==');

@$core.Deprecated('Use alterTableRequestDescriptor instead')
const AlterTableRequest$json = {
  '1': 'AlterTableRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {
      '1': 'add_columns',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ColumnMeta',
      '10': 'addColumns'
    },
    {'1': 'drop_columns', '3': 4, '4': 3, '5': 9, '10': 'dropColumns'},
    {
      '1': 'operation_params',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {
      '1': 'alter_columns',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ColumnMeta',
      '10': 'alterColumns'
    },
    {
      '1': 'set_ttl_settings',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.TtlSettings',
      '9': 0,
      '10': 'setTtlSettings'
    },
    {
      '1': 'drop_ttl_settings',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Empty',
      '9': 0,
      '10': 'dropTtlSettings'
    },
    {
      '1': 'add_indexes',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.TableIndex',
      '10': 'addIndexes'
    },
    {'1': 'drop_indexes', '3': 10, '4': 3, '5': 9, '10': 'dropIndexes'},
    {
      '1': 'alter_storage_settings',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StorageSettings',
      '10': 'alterStorageSettings'
    },
    {
      '1': 'add_column_families',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ColumnFamily',
      '10': 'addColumnFamilies'
    },
    {
      '1': 'alter_column_families',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ColumnFamily',
      '10': 'alterColumnFamilies'
    },
    {
      '1': 'alter_attributes',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.AlterTableRequest.AlterAttributesEntry',
      '8': {},
      '10': 'alterAttributes'
    },
    {
      '1': 'set_compaction_policy',
      '3': 15,
      '4': 1,
      '5': 9,
      '10': 'setCompactionPolicy'
    },
    {
      '1': 'alter_partitioning_settings',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.PartitioningSettings',
      '10': 'alterPartitioningSettings'
    },
    {
      '1': 'set_key_bloom_filter',
      '3': 17,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'setKeyBloomFilter'
    },
    {
      '1': 'set_read_replicas_settings',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.ReadReplicasSettings',
      '10': 'setReadReplicasSettings'
    },
    {
      '1': 'add_changefeeds',
      '3': 19,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.Changefeed',
      '10': 'addChangefeeds'
    },
    {'1': 'drop_changefeeds', '3': 20, '4': 3, '5': 9, '10': 'dropChangefeeds'},
    {
      '1': 'rename_indexes',
      '3': 21,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.RenameIndexItem',
      '10': 'renameIndexes'
    },
    {'1': 'set_tiering', '3': 22, '4': 1, '5': 9, '9': 1, '10': 'setTiering'},
    {
      '1': 'drop_tiering',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Empty',
      '9': 1,
      '10': 'dropTiering'
    },
  ],
  '3': [AlterTableRequest_AlterAttributesEntry$json],
  '8': [
    {'1': 'ttl_action'},
    {'1': 'tiering_action'},
  ],
};

@$core.Deprecated('Use alterTableRequestDescriptor instead')
const AlterTableRequest_AlterAttributesEntry$json = {
  '1': 'AlterAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `AlterTableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alterTableRequestDescriptor = $convert.base64Decode(
    'ChFBbHRlclRhYmxlUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgJUglzZXNzaW9uSWQSEgoEcG'
    'F0aBgCIAEoCVIEcGF0aBI2CgthZGRfY29sdW1ucxgDIAMoCzIVLllkYi5UYWJsZS5Db2x1bW5N'
    'ZXRhUgphZGRDb2x1bW5zEiEKDGRyb3BfY29sdW1ucxgEIAMoCVILZHJvcENvbHVtbnMSSgoQb3'
    'BlcmF0aW9uX3BhcmFtcxgFIAEoCzIfLllkYi5PcGVyYXRpb25zLk9wZXJhdGlvblBhcmFtc1IP'
    'b3BlcmF0aW9uUGFyYW1zEjoKDWFsdGVyX2NvbHVtbnMYBiADKAsyFS5ZZGIuVGFibGUuQ29sdW'
    '1uTWV0YVIMYWx0ZXJDb2x1bW5zEkIKEHNldF90dGxfc2V0dGluZ3MYByABKAsyFi5ZZGIuVGFi'
    'bGUuVHRsU2V0dGluZ3NIAFIOc2V0VHRsU2V0dGluZ3MSRAoRZHJvcF90dGxfc2V0dGluZ3MYCC'
    'ABKAsyFi5nb29nbGUucHJvdG9idWYuRW1wdHlIAFIPZHJvcFR0bFNldHRpbmdzEjYKC2FkZF9p'
    'bmRleGVzGAkgAygLMhUuWWRiLlRhYmxlLlRhYmxlSW5kZXhSCmFkZEluZGV4ZXMSIQoMZHJvcF'
    '9pbmRleGVzGAogAygJUgtkcm9wSW5kZXhlcxJQChZhbHRlcl9zdG9yYWdlX3NldHRpbmdzGAsg'
    'ASgLMhouWWRiLlRhYmxlLlN0b3JhZ2VTZXR0aW5nc1IUYWx0ZXJTdG9yYWdlU2V0dGluZ3MSRw'
    'oTYWRkX2NvbHVtbl9mYW1pbGllcxgMIAMoCzIXLllkYi5UYWJsZS5Db2x1bW5GYW1pbHlSEWFk'
    'ZENvbHVtbkZhbWlsaWVzEksKFWFsdGVyX2NvbHVtbl9mYW1pbGllcxgNIAMoCzIXLllkYi5UYW'
    'JsZS5Db2x1bW5GYW1pbHlSE2FsdGVyQ29sdW1uRmFtaWxpZXMScQoQYWx0ZXJfYXR0cmlidXRl'
    'cxgOIAMoCzIxLllkYi5UYWJsZS5BbHRlclRhYmxlUmVxdWVzdC5BbHRlckF0dHJpYnV0ZXNFbn'
    'RyeUITouYqAxiAIKrmKggKBgoECAEQZFIPYWx0ZXJBdHRyaWJ1dGVzEjIKFXNldF9jb21wYWN0'
    'aW9uX3BvbGljeRgPIAEoCVITc2V0Q29tcGFjdGlvblBvbGljeRJfChthbHRlcl9wYXJ0aXRpb2'
    '5pbmdfc2V0dGluZ3MYECABKAsyHy5ZZGIuVGFibGUuUGFydGl0aW9uaW5nU2V0dGluZ3NSGWFs'
    'dGVyUGFydGl0aW9uaW5nU2V0dGluZ3MSSAoUc2V0X2tleV9ibG9vbV9maWx0ZXIYESABKA4yFy'
    '5ZZGIuRmVhdHVyZUZsYWcuU3RhdHVzUhFzZXRLZXlCbG9vbUZpbHRlchJcChpzZXRfcmVhZF9y'
    'ZXBsaWNhc19zZXR0aW5ncxgSIAEoCzIfLllkYi5UYWJsZS5SZWFkUmVwbGljYXNTZXR0aW5nc1'
    'IXc2V0UmVhZFJlcGxpY2FzU2V0dGluZ3MSPgoPYWRkX2NoYW5nZWZlZWRzGBMgAygLMhUuWWRi'
    'LlRhYmxlLkNoYW5nZWZlZWRSDmFkZENoYW5nZWZlZWRzEikKEGRyb3BfY2hhbmdlZmVlZHMYFC'
    'ADKAlSD2Ryb3BDaGFuZ2VmZWVkcxJBCg5yZW5hbWVfaW5kZXhlcxgVIAMoCzIaLllkYi5UYWJs'
    'ZS5SZW5hbWVJbmRleEl0ZW1SDXJlbmFtZUluZGV4ZXMSIQoLc2V0X3RpZXJpbmcYFiABKAlIAV'
    'IKc2V0VGllcmluZxI7Cgxkcm9wX3RpZXJpbmcYFyABKAsyFi5nb29nbGUucHJvdG9idWYuRW1w'
    'dHlIAVILZHJvcFRpZXJpbmcaQgoUQWx0ZXJBdHRyaWJ1dGVzRW50cnkSEAoDa2V5GAEgASgJUg'
    'NrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AUIMCgp0dGxfYWN0aW9uQhAKDnRpZXJpbmdf'
    'YWN0aW9u');

@$core.Deprecated('Use alterTableResponseDescriptor instead')
const AlterTableResponse$json = {
  '1': 'AlterTableResponse',
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

/// Descriptor for `AlterTableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alterTableResponseDescriptor = $convert.base64Decode(
    'ChJBbHRlclRhYmxlUmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZXJhdGlvbn'
    'MuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use copyTableRequestDescriptor instead')
const CopyTableRequest$json = {
  '1': 'CopyTableRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'source_path', '3': 2, '4': 1, '5': 9, '10': 'sourcePath'},
    {'1': 'destination_path', '3': 3, '4': 1, '5': 9, '10': 'destinationPath'},
    {
      '1': 'operation_params',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
  ],
};

/// Descriptor for `CopyTableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List copyTableRequestDescriptor = $convert.base64Decode(
    'ChBDb3B5VGFibGVSZXF1ZXN0Eh0KCnNlc3Npb25faWQYASABKAlSCXNlc3Npb25JZBIfCgtzb3'
    'VyY2VfcGF0aBgCIAEoCVIKc291cmNlUGF0aBIpChBkZXN0aW5hdGlvbl9wYXRoGAMgASgJUg9k'
    'ZXN0aW5hdGlvblBhdGgSSgoQb3BlcmF0aW9uX3BhcmFtcxgEIAEoCzIfLllkYi5PcGVyYXRpb2'
    '5zLk9wZXJhdGlvblBhcmFtc1IPb3BlcmF0aW9uUGFyYW1z');

@$core.Deprecated('Use copyTableResponseDescriptor instead')
const CopyTableResponse$json = {
  '1': 'CopyTableResponse',
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

/// Descriptor for `CopyTableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List copyTableResponseDescriptor = $convert.base64Decode(
    'ChFDb3B5VGFibGVSZXNwb25zZRI3CglvcGVyYXRpb24YASABKAsyGS5ZZGIuT3BlcmF0aW9ucy'
    '5PcGVyYXRpb25SCW9wZXJhdGlvbg==');

@$core.Deprecated('Use copyTableItemDescriptor instead')
const CopyTableItem$json = {
  '1': 'CopyTableItem',
  '2': [
    {'1': 'source_path', '3': 1, '4': 1, '5': 9, '10': 'sourcePath'},
    {'1': 'destination_path', '3': 2, '4': 1, '5': 9, '10': 'destinationPath'},
    {'1': 'omit_indexes', '3': 3, '4': 1, '5': 8, '10': 'omitIndexes'},
  ],
};

/// Descriptor for `CopyTableItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List copyTableItemDescriptor = $convert.base64Decode(
    'Cg1Db3B5VGFibGVJdGVtEh8KC3NvdXJjZV9wYXRoGAEgASgJUgpzb3VyY2VQYXRoEikKEGRlc3'
    'RpbmF0aW9uX3BhdGgYAiABKAlSD2Rlc3RpbmF0aW9uUGF0aBIhCgxvbWl0X2luZGV4ZXMYAyAB'
    'KAhSC29taXRJbmRleGVz');

@$core.Deprecated('Use copyTablesRequestDescriptor instead')
const CopyTablesRequest$json = {
  '1': 'CopyTablesRequest',
  '2': [
    {
      '1': 'operation_params',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {'1': 'session_id', '3': 2, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'tables',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.CopyTableItem',
      '10': 'tables'
    },
  ],
};

/// Descriptor for `CopyTablesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List copyTablesRequestDescriptor = $convert.base64Decode(
    'ChFDb3B5VGFibGVzUmVxdWVzdBJKChBvcGVyYXRpb25fcGFyYW1zGAEgASgLMh8uWWRiLk9wZX'
    'JhdGlvbnMuT3BlcmF0aW9uUGFyYW1zUg9vcGVyYXRpb25QYXJhbXMSHQoKc2Vzc2lvbl9pZBgC'
    'IAEoCVIJc2Vzc2lvbklkEjAKBnRhYmxlcxgDIAMoCzIYLllkYi5UYWJsZS5Db3B5VGFibGVJdG'
    'VtUgZ0YWJsZXM=');

@$core.Deprecated('Use copyTablesResponseDescriptor instead')
const CopyTablesResponse$json = {
  '1': 'CopyTablesResponse',
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

/// Descriptor for `CopyTablesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List copyTablesResponseDescriptor = $convert.base64Decode(
    'ChJDb3B5VGFibGVzUmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZXJhdGlvbn'
    'MuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use renameTableItemDescriptor instead')
const RenameTableItem$json = {
  '1': 'RenameTableItem',
  '2': [
    {'1': 'source_path', '3': 1, '4': 1, '5': 9, '10': 'sourcePath'},
    {'1': 'destination_path', '3': 2, '4': 1, '5': 9, '10': 'destinationPath'},
    {
      '1': 'replace_destination',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'replaceDestination'
    },
  ],
};

/// Descriptor for `RenameTableItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renameTableItemDescriptor = $convert.base64Decode(
    'Cg9SZW5hbWVUYWJsZUl0ZW0SHwoLc291cmNlX3BhdGgYASABKAlSCnNvdXJjZVBhdGgSKQoQZG'
    'VzdGluYXRpb25fcGF0aBgCIAEoCVIPZGVzdGluYXRpb25QYXRoEi8KE3JlcGxhY2VfZGVzdGlu'
    'YXRpb24YAyABKAhSEnJlcGxhY2VEZXN0aW5hdGlvbg==');

@$core.Deprecated('Use renameTablesRequestDescriptor instead')
const RenameTablesRequest$json = {
  '1': 'RenameTablesRequest',
  '2': [
    {
      '1': 'operation_params',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {'1': 'session_id', '3': 2, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'tables',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.RenameTableItem',
      '10': 'tables'
    },
  ],
};

/// Descriptor for `RenameTablesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renameTablesRequestDescriptor = $convert.base64Decode(
    'ChNSZW5hbWVUYWJsZXNSZXF1ZXN0EkoKEG9wZXJhdGlvbl9wYXJhbXMYASABKAsyHy5ZZGIuT3'
    'BlcmF0aW9ucy5PcGVyYXRpb25QYXJhbXNSD29wZXJhdGlvblBhcmFtcxIdCgpzZXNzaW9uX2lk'
    'GAIgASgJUglzZXNzaW9uSWQSMgoGdGFibGVzGAMgAygLMhouWWRiLlRhYmxlLlJlbmFtZVRhYm'
    'xlSXRlbVIGdGFibGVz');

@$core.Deprecated('Use renameTablesResponseDescriptor instead')
const RenameTablesResponse$json = {
  '1': 'RenameTablesResponse',
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

/// Descriptor for `RenameTablesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renameTablesResponseDescriptor = $convert.base64Decode(
    'ChRSZW5hbWVUYWJsZXNSZXNwb25zZRI3CglvcGVyYXRpb24YASABKAsyGS5ZZGIuT3BlcmF0aW'
    '9ucy5PcGVyYXRpb25SCW9wZXJhdGlvbg==');

@$core.Deprecated('Use describeTableRequestDescriptor instead')
const DescribeTableRequest$json = {
  '1': 'DescribeTableRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {
      '1': 'operation_params',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {
      '1': 'include_shard_key_bounds',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'includeShardKeyBounds'
    },
    {
      '1': 'include_table_stats',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'includeTableStats'
    },
    {
      '1': 'include_partition_stats',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'includePartitionStats'
    },
    {
      '1': 'include_shard_nodes_info',
      '3': 9,
      '4': 1,
      '5': 8,
      '10': 'includeShardNodesInfo'
    },
  ],
};

/// Descriptor for `DescribeTableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeTableRequestDescriptor = $convert.base64Decode(
    'ChREZXNjcmliZVRhYmxlUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgJUglzZXNzaW9uSWQSEg'
    'oEcGF0aBgCIAEoCVIEcGF0aBJKChBvcGVyYXRpb25fcGFyYW1zGAQgASgLMh8uWWRiLk9wZXJh'
    'dGlvbnMuT3BlcmF0aW9uUGFyYW1zUg9vcGVyYXRpb25QYXJhbXMSNwoYaW5jbHVkZV9zaGFyZF'
    '9rZXlfYm91bmRzGAUgASgIUhVpbmNsdWRlU2hhcmRLZXlCb3VuZHMSLgoTaW5jbHVkZV90YWJs'
    'ZV9zdGF0cxgGIAEoCFIRaW5jbHVkZVRhYmxlU3RhdHMSNgoXaW5jbHVkZV9wYXJ0aXRpb25fc3'
    'RhdHMYByABKAhSFWluY2x1ZGVQYXJ0aXRpb25TdGF0cxI3ChhpbmNsdWRlX3NoYXJkX25vZGVz'
    'X2luZm8YCSABKAhSFWluY2x1ZGVTaGFyZE5vZGVzSW5mbw==');

@$core.Deprecated('Use describeTableResponseDescriptor instead')
const DescribeTableResponse$json = {
  '1': 'DescribeTableResponse',
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

/// Descriptor for `DescribeTableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeTableResponseDescriptor = $convert.base64Decode(
    'ChVEZXNjcmliZVRhYmxlUmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZXJhdG'
    'lvbnMuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use describeTableResultDescriptor instead')
const DescribeTableResult$json = {
  '1': 'DescribeTableResult',
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
      '1': 'columns',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ColumnMeta',
      '10': 'columns'
    },
    {'1': 'primary_key', '3': 3, '4': 3, '5': 9, '10': 'primaryKey'},
    {
      '1': 'shard_key_bounds',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.Ydb.TypedValue',
      '10': 'shardKeyBounds'
    },
    {
      '1': 'indexes',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.TableIndexDescription',
      '10': 'indexes'
    },
    {
      '1': 'table_stats',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.TableStats',
      '10': 'tableStats'
    },
    {
      '1': 'ttl_settings',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.TtlSettings',
      '10': 'ttlSettings'
    },
    {
      '1': 'storage_settings',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StorageSettings',
      '10': 'storageSettings'
    },
    {
      '1': 'column_families',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ColumnFamily',
      '10': 'columnFamilies'
    },
    {
      '1': 'attributes',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.DescribeTableResult.AttributesEntry',
      '10': 'attributes'
    },
    {
      '1': 'partitioning_settings',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.PartitioningSettings',
      '10': 'partitioningSettings'
    },
    {
      '1': 'key_bloom_filter',
      '3': 13,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'keyBloomFilter'
    },
    {
      '1': 'read_replicas_settings',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.ReadReplicasSettings',
      '10': 'readReplicasSettings'
    },
    {
      '1': 'changefeeds',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ChangefeedDescription',
      '10': 'changefeeds'
    },
    {'1': 'tiering', '3': 16, '4': 1, '5': 9, '10': 'tiering'},
    {'1': 'temporary', '3': 17, '4': 1, '5': 8, '10': 'temporary'},
    {
      '1': 'store_type',
      '3': 18,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.StoreType',
      '10': 'storeType'
    },
  ],
  '3': [DescribeTableResult_AttributesEntry$json],
  '9': [
    {'1': 11, '2': 12},
  ],
};

@$core.Deprecated('Use describeTableResultDescriptor instead')
const DescribeTableResult_AttributesEntry$json = {
  '1': 'AttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `DescribeTableResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeTableResultDescriptor = $convert.base64Decode(
    'ChNEZXNjcmliZVRhYmxlUmVzdWx0EiUKBHNlbGYYASABKAsyES5ZZGIuU2NoZW1lLkVudHJ5Ug'
    'RzZWxmEi8KB2NvbHVtbnMYAiADKAsyFS5ZZGIuVGFibGUuQ29sdW1uTWV0YVIHY29sdW1ucxIf'
    'CgtwcmltYXJ5X2tleRgDIAMoCVIKcHJpbWFyeUtleRI5ChBzaGFyZF9rZXlfYm91bmRzGAQgAy'
    'gLMg8uWWRiLlR5cGVkVmFsdWVSDnNoYXJkS2V5Qm91bmRzEjoKB2luZGV4ZXMYBSADKAsyIC5Z'
    'ZGIuVGFibGUuVGFibGVJbmRleERlc2NyaXB0aW9uUgdpbmRleGVzEjYKC3RhYmxlX3N0YXRzGA'
    'YgASgLMhUuWWRiLlRhYmxlLlRhYmxlU3RhdHNSCnRhYmxlU3RhdHMSOQoMdHRsX3NldHRpbmdz'
    'GAcgASgLMhYuWWRiLlRhYmxlLlR0bFNldHRpbmdzUgt0dGxTZXR0aW5ncxJFChBzdG9yYWdlX3'
    'NldHRpbmdzGAggASgLMhouWWRiLlRhYmxlLlN0b3JhZ2VTZXR0aW5nc1IPc3RvcmFnZVNldHRp'
    'bmdzEkAKD2NvbHVtbl9mYW1pbGllcxgJIAMoCzIXLllkYi5UYWJsZS5Db2x1bW5GYW1pbHlSDm'
    'NvbHVtbkZhbWlsaWVzEk4KCmF0dHJpYnV0ZXMYCiADKAsyLi5ZZGIuVGFibGUuRGVzY3JpYmVU'
    'YWJsZVJlc3VsdC5BdHRyaWJ1dGVzRW50cnlSCmF0dHJpYnV0ZXMSVAoVcGFydGl0aW9uaW5nX3'
    'NldHRpbmdzGAwgASgLMh8uWWRiLlRhYmxlLlBhcnRpdGlvbmluZ1NldHRpbmdzUhRwYXJ0aXRp'
    'b25pbmdTZXR0aW5ncxJBChBrZXlfYmxvb21fZmlsdGVyGA0gASgOMhcuWWRiLkZlYXR1cmVGbG'
    'FnLlN0YXR1c1IOa2V5Qmxvb21GaWx0ZXISVQoWcmVhZF9yZXBsaWNhc19zZXR0aW5ncxgOIAEo'
    'CzIfLllkYi5UYWJsZS5SZWFkUmVwbGljYXNTZXR0aW5nc1IUcmVhZFJlcGxpY2FzU2V0dGluZ3'
    'MSQgoLY2hhbmdlZmVlZHMYDyADKAsyIC5ZZGIuVGFibGUuQ2hhbmdlZmVlZERlc2NyaXB0aW9u'
    'UgtjaGFuZ2VmZWVkcxIYCgd0aWVyaW5nGBAgASgJUgd0aWVyaW5nEhwKCXRlbXBvcmFyeRgRIA'
    'EoCFIJdGVtcG9yYXJ5EjMKCnN0b3JlX3R5cGUYEiABKA4yFC5ZZGIuVGFibGUuU3RvcmVUeXBl'
    'UglzdG9yZVR5cGUaPQoPQXR0cmlidXRlc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbH'
    'VlGAIgASgJUgV2YWx1ZToCOAFKBAgLEAw=');

@$core.Deprecated('Use queryDescriptor instead')
const Query$json = {
  '1': 'Query',
  '2': [
    {'1': 'yql_text', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'yqlText'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'id'},
  ],
  '8': [
    {'1': 'query'},
  ],
};

/// Descriptor for `Query`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDescriptor = $convert.base64Decode(
    'CgVRdWVyeRIbCgh5cWxfdGV4dBgBIAEoCUgAUgd5cWxUZXh0EhAKAmlkGAIgASgJSABSAmlkQg'
    'cKBXF1ZXJ5');

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
      '6': '.Ydb.Table.SerializableModeSettings',
      '9': 0,
      '10': 'serializableReadWrite'
    },
    {
      '1': 'online_read_only',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.OnlineModeSettings',
      '9': 0,
      '10': 'onlineReadOnly'
    },
    {
      '1': 'stale_read_only',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.StaleModeSettings',
      '9': 0,
      '10': 'staleReadOnly'
    },
    {
      '1': 'snapshot_read_only',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.SnapshotModeSettings',
      '9': 0,
      '10': 'snapshotReadOnly'
    },
    {
      '1': 'snapshot_read_write',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.SnapshotRWModeSettings',
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
    'MuWWRiLlRhYmxlLlNlcmlhbGl6YWJsZU1vZGVTZXR0aW5nc0gAUhVzZXJpYWxpemFibGVSZWFk'
    'V3JpdGUSSQoQb25saW5lX3JlYWRfb25seRgCIAEoCzIdLllkYi5UYWJsZS5PbmxpbmVNb2RlU2'
    'V0dGluZ3NIAFIOb25saW5lUmVhZE9ubHkSRgoPc3RhbGVfcmVhZF9vbmx5GAMgASgLMhwuWWRi'
    'LlRhYmxlLlN0YWxlTW9kZVNldHRpbmdzSABSDXN0YWxlUmVhZE9ubHkSTwoSc25hcHNob3Rfcm'
    'VhZF9vbmx5GAQgASgLMh8uWWRiLlRhYmxlLlNuYXBzaG90TW9kZVNldHRpbmdzSABSEHNuYXBz'
    'aG90UmVhZE9ubHkSUwoTc25hcHNob3RfcmVhZF93cml0ZRgFIAEoCzIhLllkYi5UYWJsZS5Tbm'
    'Fwc2hvdFJXTW9kZVNldHRpbmdzSABSEXNuYXBzaG90UmVhZFdyaXRlQgkKB3R4X21vZGU=');

@$core.Deprecated('Use transactionControlDescriptor instead')
const TransactionControl$json = {
  '1': 'TransactionControl',
  '2': [
    {'1': 'tx_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'txId'},
    {
      '1': 'begin_tx',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.TransactionSettings',
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
    'ChJUcmFuc2FjdGlvbkNvbnRyb2wSFQoFdHhfaWQYASABKAlIAFIEdHhJZBI7CghiZWdpbl90eB'
    'gCIAEoCzIeLllkYi5UYWJsZS5UcmFuc2FjdGlvblNldHRpbmdzSABSB2JlZ2luVHgSGwoJY29t'
    'bWl0X3R4GAogASgIUghjb21taXRUeEINCgt0eF9zZWxlY3Rvcg==');

@$core.Deprecated('Use queryCachePolicyDescriptor instead')
const QueryCachePolicy$json = {
  '1': 'QueryCachePolicy',
  '2': [
    {'1': 'keep_in_cache', '3': 1, '4': 1, '5': 8, '10': 'keepInCache'},
  ],
};

/// Descriptor for `QueryCachePolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCachePolicyDescriptor = $convert.base64Decode(
    'ChBRdWVyeUNhY2hlUG9saWN5EiIKDWtlZXBfaW5fY2FjaGUYASABKAhSC2tlZXBJbkNhY2hl');

@$core.Deprecated('Use queryStatsCollectionDescriptor instead')
const QueryStatsCollection$json = {
  '1': 'QueryStatsCollection',
  '4': [QueryStatsCollection_Mode$json],
};

@$core.Deprecated('Use queryStatsCollectionDescriptor instead')
const QueryStatsCollection_Mode$json = {
  '1': 'Mode',
  '2': [
    {'1': 'STATS_COLLECTION_UNSPECIFIED', '2': 0},
    {'1': 'STATS_COLLECTION_NONE', '2': 1},
    {'1': 'STATS_COLLECTION_BASIC', '2': 2},
    {'1': 'STATS_COLLECTION_FULL', '2': 3},
    {'1': 'STATS_COLLECTION_PROFILE', '2': 4},
  ],
};

/// Descriptor for `QueryStatsCollection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryStatsCollectionDescriptor = $convert.base64Decode(
    'ChRRdWVyeVN0YXRzQ29sbGVjdGlvbiKYAQoETW9kZRIgChxTVEFUU19DT0xMRUNUSU9OX1VOU1'
    'BFQ0lGSUVEEAASGQoVU1RBVFNfQ09MTEVDVElPTl9OT05FEAESGgoWU1RBVFNfQ09MTEVDVElP'
    'Tl9CQVNJQxACEhkKFVNUQVRTX0NPTExFQ1RJT05fRlVMTBADEhwKGFNUQVRTX0NPTExFQ1RJT0'
    '5fUFJPRklMRRAE');

@$core.Deprecated('Use executeDataQueryRequestDescriptor instead')
const ExecuteDataQueryRequest$json = {
  '1': 'ExecuteDataQueryRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'tx_control',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.TransactionControl',
      '10': 'txControl'
    },
    {
      '1': 'query',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.Query',
      '10': 'query'
    },
    {
      '1': 'parameters',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ExecuteDataQueryRequest.ParametersEntry',
      '10': 'parameters'
    },
    {
      '1': 'query_cache_policy',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.QueryCachePolicy',
      '10': 'queryCachePolicy'
    },
    {
      '1': 'operation_params',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {
      '1': 'collect_stats',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.QueryStatsCollection.Mode',
      '10': 'collectStats'
    },
  ],
  '3': [ExecuteDataQueryRequest_ParametersEntry$json],
};

@$core.Deprecated('Use executeDataQueryRequestDescriptor instead')
const ExecuteDataQueryRequest_ParametersEntry$json = {
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

/// Descriptor for `ExecuteDataQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeDataQueryRequestDescriptor = $convert.base64Decode(
    'ChdFeGVjdXRlRGF0YVF1ZXJ5UmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgJUglzZXNzaW9uSW'
    'QSPAoKdHhfY29udHJvbBgCIAEoCzIdLllkYi5UYWJsZS5UcmFuc2FjdGlvbkNvbnRyb2xSCXR4'
    'Q29udHJvbBImCgVxdWVyeRgDIAEoCzIQLllkYi5UYWJsZS5RdWVyeVIFcXVlcnkSUgoKcGFyYW'
    '1ldGVycxgEIAMoCzIyLllkYi5UYWJsZS5FeGVjdXRlRGF0YVF1ZXJ5UmVxdWVzdC5QYXJhbWV0'
    'ZXJzRW50cnlSCnBhcmFtZXRlcnMSSQoScXVlcnlfY2FjaGVfcG9saWN5GAUgASgLMhsuWWRiLl'
    'RhYmxlLlF1ZXJ5Q2FjaGVQb2xpY3lSEHF1ZXJ5Q2FjaGVQb2xpY3kSSgoQb3BlcmF0aW9uX3Bh'
    'cmFtcxgGIAEoCzIfLllkYi5PcGVyYXRpb25zLk9wZXJhdGlvblBhcmFtc1IPb3BlcmF0aW9uUG'
    'FyYW1zEkkKDWNvbGxlY3Rfc3RhdHMYByABKA4yJC5ZZGIuVGFibGUuUXVlcnlTdGF0c0NvbGxl'
    'Y3Rpb24uTW9kZVIMY29sbGVjdFN0YXRzGk4KD1BhcmFtZXRlcnNFbnRyeRIQCgNrZXkYASABKA'
    'lSA2tleRIlCgV2YWx1ZRgCIAEoCzIPLllkYi5UeXBlZFZhbHVlUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use executeDataQueryResponseDescriptor instead')
const ExecuteDataQueryResponse$json = {
  '1': 'ExecuteDataQueryResponse',
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

/// Descriptor for `ExecuteDataQueryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeDataQueryResponseDescriptor =
    $convert.base64Decode(
        'ChhFeGVjdXRlRGF0YVF1ZXJ5UmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZX'
        'JhdGlvbnMuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use executeSchemeQueryRequestDescriptor instead')
const ExecuteSchemeQueryRequest$json = {
  '1': 'ExecuteSchemeQueryRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'yql_text', '3': 2, '4': 1, '5': 9, '10': 'yqlText'},
    {
      '1': 'operation_params',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
  ],
};

/// Descriptor for `ExecuteSchemeQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeSchemeQueryRequestDescriptor = $convert.base64Decode(
    'ChlFeGVjdXRlU2NoZW1lUXVlcnlSZXF1ZXN0Eh0KCnNlc3Npb25faWQYASABKAlSCXNlc3Npb2'
    '5JZBIZCgh5cWxfdGV4dBgCIAEoCVIHeXFsVGV4dBJKChBvcGVyYXRpb25fcGFyYW1zGAMgASgL'
    'Mh8uWWRiLk9wZXJhdGlvbnMuT3BlcmF0aW9uUGFyYW1zUg9vcGVyYXRpb25QYXJhbXM=');

@$core.Deprecated('Use executeSchemeQueryResponseDescriptor instead')
const ExecuteSchemeQueryResponse$json = {
  '1': 'ExecuteSchemeQueryResponse',
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

/// Descriptor for `ExecuteSchemeQueryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeSchemeQueryResponseDescriptor =
    $convert.base64Decode(
        'ChpFeGVjdXRlU2NoZW1lUXVlcnlSZXNwb25zZRI3CglvcGVyYXRpb24YASABKAsyGS5ZZGIuT3'
        'BlcmF0aW9ucy5PcGVyYXRpb25SCW9wZXJhdGlvbg==');

@$core.Deprecated('Use transactionMetaDescriptor instead')
const TransactionMeta$json = {
  '1': 'TransactionMeta',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `TransactionMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionMetaDescriptor =
    $convert.base64Decode('Cg9UcmFuc2FjdGlvbk1ldGESDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use queryMetaDescriptor instead')
const QueryMeta$json = {
  '1': 'QueryMeta',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'parameters_types',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.QueryMeta.ParametersTypesEntry',
      '10': 'parametersTypes'
    },
  ],
  '3': [QueryMeta_ParametersTypesEntry$json],
};

@$core.Deprecated('Use queryMetaDescriptor instead')
const QueryMeta_ParametersTypesEntry$json = {
  '1': 'ParametersTypesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Ydb.Type', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `QueryMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryMetaDescriptor = $convert.base64Decode(
    'CglRdWVyeU1ldGESDgoCaWQYASABKAlSAmlkElQKEHBhcmFtZXRlcnNfdHlwZXMYAiADKAsyKS'
    '5ZZGIuVGFibGUuUXVlcnlNZXRhLlBhcmFtZXRlcnNUeXBlc0VudHJ5Ug9wYXJhbWV0ZXJzVHlw'
    'ZXMaTQoUUGFyYW1ldGVyc1R5cGVzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSHwoFdmFsdWUYAi'
    'ABKAsyCS5ZZGIuVHlwZVIFdmFsdWU6AjgB');

@$core.Deprecated('Use executeQueryResultDescriptor instead')
const ExecuteQueryResult$json = {
  '1': 'ExecuteQueryResult',
  '2': [
    {
      '1': 'result_sets',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.ResultSet',
      '10': 'resultSets'
    },
    {
      '1': 'tx_meta',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.TransactionMeta',
      '10': 'txMeta'
    },
    {
      '1': 'query_meta',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.QueryMeta',
      '10': 'queryMeta'
    },
    {
      '1': 'query_stats',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TableStats.QueryStats',
      '10': 'queryStats'
    },
  ],
};

/// Descriptor for `ExecuteQueryResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeQueryResultDescriptor = $convert.base64Decode(
    'ChJFeGVjdXRlUXVlcnlSZXN1bHQSLwoLcmVzdWx0X3NldHMYASADKAsyDi5ZZGIuUmVzdWx0U2'
    'V0UgpyZXN1bHRTZXRzEjMKB3R4X21ldGEYAiABKAsyGi5ZZGIuVGFibGUuVHJhbnNhY3Rpb25N'
    'ZXRhUgZ0eE1ldGESMwoKcXVlcnlfbWV0YRgDIAEoCzIULllkYi5UYWJsZS5RdWVyeU1ldGFSCX'
    'F1ZXJ5TWV0YRI7CgtxdWVyeV9zdGF0cxgEIAEoCzIaLllkYi5UYWJsZVN0YXRzLlF1ZXJ5U3Rh'
    'dHNSCnF1ZXJ5U3RhdHM=');

@$core.Deprecated('Use explainDataQueryRequestDescriptor instead')
const ExplainDataQueryRequest$json = {
  '1': 'ExplainDataQueryRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'yql_text', '3': 2, '4': 1, '5': 9, '10': 'yqlText'},
    {
      '1': 'operation_params',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {
      '1': 'collect_full_diagnostics',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'collectFullDiagnostics'
    },
  ],
};

/// Descriptor for `ExplainDataQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List explainDataQueryRequestDescriptor = $convert.base64Decode(
    'ChdFeHBsYWluRGF0YVF1ZXJ5UmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgJUglzZXNzaW9uSW'
    'QSGQoIeXFsX3RleHQYAiABKAlSB3lxbFRleHQSSgoQb3BlcmF0aW9uX3BhcmFtcxgDIAEoCzIf'
    'LllkYi5PcGVyYXRpb25zLk9wZXJhdGlvblBhcmFtc1IPb3BlcmF0aW9uUGFyYW1zEjgKGGNvbG'
    'xlY3RfZnVsbF9kaWFnbm9zdGljcxgEIAEoCFIWY29sbGVjdEZ1bGxEaWFnbm9zdGljcw==');

@$core.Deprecated('Use explainDataQueryResponseDescriptor instead')
const ExplainDataQueryResponse$json = {
  '1': 'ExplainDataQueryResponse',
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

/// Descriptor for `ExplainDataQueryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List explainDataQueryResponseDescriptor =
    $convert.base64Decode(
        'ChhFeHBsYWluRGF0YVF1ZXJ5UmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZX'
        'JhdGlvbnMuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use explainQueryResultDescriptor instead')
const ExplainQueryResult$json = {
  '1': 'ExplainQueryResult',
  '2': [
    {'1': 'query_ast', '3': 1, '4': 1, '5': 9, '10': 'queryAst'},
    {'1': 'query_plan', '3': 2, '4': 1, '5': 9, '10': 'queryPlan'},
    {
      '1': 'query_full_diagnostics',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'queryFullDiagnostics'
    },
  ],
};

/// Descriptor for `ExplainQueryResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List explainQueryResultDescriptor = $convert.base64Decode(
    'ChJFeHBsYWluUXVlcnlSZXN1bHQSGwoJcXVlcnlfYXN0GAEgASgJUghxdWVyeUFzdBIdCgpxdW'
    'VyeV9wbGFuGAIgASgJUglxdWVyeVBsYW4SNAoWcXVlcnlfZnVsbF9kaWFnbm9zdGljcxgDIAEo'
    'CVIUcXVlcnlGdWxsRGlhZ25vc3RpY3M=');

@$core.Deprecated('Use prepareDataQueryRequestDescriptor instead')
const PrepareDataQueryRequest$json = {
  '1': 'PrepareDataQueryRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'yql_text', '3': 2, '4': 1, '5': 9, '10': 'yqlText'},
    {
      '1': 'operation_params',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
  ],
};

/// Descriptor for `PrepareDataQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareDataQueryRequestDescriptor = $convert.base64Decode(
    'ChdQcmVwYXJlRGF0YVF1ZXJ5UmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgJUglzZXNzaW9uSW'
    'QSGQoIeXFsX3RleHQYAiABKAlSB3lxbFRleHQSSgoQb3BlcmF0aW9uX3BhcmFtcxgDIAEoCzIf'
    'LllkYi5PcGVyYXRpb25zLk9wZXJhdGlvblBhcmFtc1IPb3BlcmF0aW9uUGFyYW1z');

@$core.Deprecated('Use prepareDataQueryResponseDescriptor instead')
const PrepareDataQueryResponse$json = {
  '1': 'PrepareDataQueryResponse',
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

/// Descriptor for `PrepareDataQueryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareDataQueryResponseDescriptor =
    $convert.base64Decode(
        'ChhQcmVwYXJlRGF0YVF1ZXJ5UmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZX'
        'JhdGlvbnMuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use prepareQueryResultDescriptor instead')
const PrepareQueryResult$json = {
  '1': 'PrepareQueryResult',
  '2': [
    {'1': 'query_id', '3': 1, '4': 1, '5': 9, '10': 'queryId'},
    {
      '1': 'parameters_types',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.PrepareQueryResult.ParametersTypesEntry',
      '10': 'parametersTypes'
    },
  ],
  '3': [PrepareQueryResult_ParametersTypesEntry$json],
};

@$core.Deprecated('Use prepareQueryResultDescriptor instead')
const PrepareQueryResult_ParametersTypesEntry$json = {
  '1': 'ParametersTypesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Ydb.Type', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PrepareQueryResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareQueryResultDescriptor = $convert.base64Decode(
    'ChJQcmVwYXJlUXVlcnlSZXN1bHQSGQoIcXVlcnlfaWQYASABKAlSB3F1ZXJ5SWQSXQoQcGFyYW'
    '1ldGVyc190eXBlcxgCIAMoCzIyLllkYi5UYWJsZS5QcmVwYXJlUXVlcnlSZXN1bHQuUGFyYW1l'
    'dGVyc1R5cGVzRW50cnlSD3BhcmFtZXRlcnNUeXBlcxpNChRQYXJhbWV0ZXJzVHlwZXNFbnRyeR'
    'IQCgNrZXkYASABKAlSA2tleRIfCgV2YWx1ZRgCIAEoCzIJLllkYi5UeXBlUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use keepAliveRequestDescriptor instead')
const KeepAliveRequest$json = {
  '1': 'KeepAliveRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'operation_params',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
  ],
};

/// Descriptor for `KeepAliveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keepAliveRequestDescriptor = $convert.base64Decode(
    'ChBLZWVwQWxpdmVSZXF1ZXN0Eh0KCnNlc3Npb25faWQYASABKAlSCXNlc3Npb25JZBJKChBvcG'
    'VyYXRpb25fcGFyYW1zGAIgASgLMh8uWWRiLk9wZXJhdGlvbnMuT3BlcmF0aW9uUGFyYW1zUg9v'
    'cGVyYXRpb25QYXJhbXM=');

@$core.Deprecated('Use keepAliveResponseDescriptor instead')
const KeepAliveResponse$json = {
  '1': 'KeepAliveResponse',
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

/// Descriptor for `KeepAliveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keepAliveResponseDescriptor = $convert.base64Decode(
    'ChFLZWVwQWxpdmVSZXNwb25zZRI3CglvcGVyYXRpb24YASABKAsyGS5ZZGIuT3BlcmF0aW9ucy'
    '5PcGVyYXRpb25SCW9wZXJhdGlvbg==');

@$core.Deprecated('Use keepAliveResultDescriptor instead')
const KeepAliveResult$json = {
  '1': 'KeepAliveResult',
  '2': [
    {
      '1': 'session_status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.KeepAliveResult.SessionStatus',
      '10': 'sessionStatus'
    },
  ],
  '4': [KeepAliveResult_SessionStatus$json],
};

@$core.Deprecated('Use keepAliveResultDescriptor instead')
const KeepAliveResult_SessionStatus$json = {
  '1': 'SessionStatus',
  '2': [
    {'1': 'SESSION_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'SESSION_STATUS_READY', '2': 1},
    {'1': 'SESSION_STATUS_BUSY', '2': 2},
  ],
};

/// Descriptor for `KeepAliveResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keepAliveResultDescriptor = $convert.base64Decode(
    'Cg9LZWVwQWxpdmVSZXN1bHQSTwoOc2Vzc2lvbl9zdGF0dXMYASABKA4yKC5ZZGIuVGFibGUuS2'
    'VlcEFsaXZlUmVzdWx0LlNlc3Npb25TdGF0dXNSDXNlc3Npb25TdGF0dXMiYgoNU2Vzc2lvblN0'
    'YXR1cxIeChpTRVNTSU9OX1NUQVRVU19VTlNQRUNJRklFRBAAEhgKFFNFU1NJT05fU1RBVFVTX1'
    'JFQURZEAESFwoTU0VTU0lPTl9TVEFUVVNfQlVTWRAC');

@$core.Deprecated('Use beginTransactionRequestDescriptor instead')
const BeginTransactionRequest$json = {
  '1': 'BeginTransactionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'tx_settings',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.TransactionSettings',
      '10': 'txSettings'
    },
    {
      '1': 'operation_params',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
  ],
};

/// Descriptor for `BeginTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beginTransactionRequestDescriptor = $convert.base64Decode(
    'ChdCZWdpblRyYW5zYWN0aW9uUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgJUglzZXNzaW9uSW'
    'QSPwoLdHhfc2V0dGluZ3MYAiABKAsyHi5ZZGIuVGFibGUuVHJhbnNhY3Rpb25TZXR0aW5nc1IK'
    'dHhTZXR0aW5ncxJKChBvcGVyYXRpb25fcGFyYW1zGAMgASgLMh8uWWRiLk9wZXJhdGlvbnMuT3'
    'BlcmF0aW9uUGFyYW1zUg9vcGVyYXRpb25QYXJhbXM=');

@$core.Deprecated('Use beginTransactionResponseDescriptor instead')
const BeginTransactionResponse$json = {
  '1': 'BeginTransactionResponse',
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

/// Descriptor for `BeginTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beginTransactionResponseDescriptor =
    $convert.base64Decode(
        'ChhCZWdpblRyYW5zYWN0aW9uUmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZX'
        'JhdGlvbnMuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use beginTransactionResultDescriptor instead')
const BeginTransactionResult$json = {
  '1': 'BeginTransactionResult',
  '2': [
    {
      '1': 'tx_meta',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.TransactionMeta',
      '10': 'txMeta'
    },
  ],
};

/// Descriptor for `BeginTransactionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beginTransactionResultDescriptor =
    $convert.base64Decode(
        'ChZCZWdpblRyYW5zYWN0aW9uUmVzdWx0EjMKB3R4X21ldGEYASABKAsyGi5ZZGIuVGFibGUuVH'
        'JhbnNhY3Rpb25NZXRhUgZ0eE1ldGE=');

@$core.Deprecated('Use commitTransactionRequestDescriptor instead')
const CommitTransactionRequest$json = {
  '1': 'CommitTransactionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'tx_id', '3': 2, '4': 1, '5': 9, '10': 'txId'},
    {
      '1': 'operation_params',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {
      '1': 'collect_stats',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.QueryStatsCollection.Mode',
      '10': 'collectStats'
    },
  ],
};

/// Descriptor for `CommitTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitTransactionRequestDescriptor = $convert.base64Decode(
    'ChhDb21taXRUcmFuc2FjdGlvblJlcXVlc3QSHQoKc2Vzc2lvbl9pZBgBIAEoCVIJc2Vzc2lvbk'
    'lkEhMKBXR4X2lkGAIgASgJUgR0eElkEkoKEG9wZXJhdGlvbl9wYXJhbXMYAyABKAsyHy5ZZGIu'
    'T3BlcmF0aW9ucy5PcGVyYXRpb25QYXJhbXNSD29wZXJhdGlvblBhcmFtcxJJCg1jb2xsZWN0X3'
    'N0YXRzGAQgASgOMiQuWWRiLlRhYmxlLlF1ZXJ5U3RhdHNDb2xsZWN0aW9uLk1vZGVSDGNvbGxl'
    'Y3RTdGF0cw==');

@$core.Deprecated('Use commitTransactionResponseDescriptor instead')
const CommitTransactionResponse$json = {
  '1': 'CommitTransactionResponse',
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

/// Descriptor for `CommitTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitTransactionResponseDescriptor =
    $convert.base64Decode(
        'ChlDb21taXRUcmFuc2FjdGlvblJlc3BvbnNlEjcKCW9wZXJhdGlvbhgBIAEoCzIZLllkYi5PcG'
        'VyYXRpb25zLk9wZXJhdGlvblIJb3BlcmF0aW9u');

@$core.Deprecated('Use commitTransactionResultDescriptor instead')
const CommitTransactionResult$json = {
  '1': 'CommitTransactionResult',
  '2': [
    {
      '1': 'query_stats',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TableStats.QueryStats',
      '10': 'queryStats'
    },
  ],
};

/// Descriptor for `CommitTransactionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitTransactionResultDescriptor =
    $convert.base64Decode(
        'ChdDb21taXRUcmFuc2FjdGlvblJlc3VsdBI7CgtxdWVyeV9zdGF0cxgBIAEoCzIaLllkYi5UYW'
        'JsZVN0YXRzLlF1ZXJ5U3RhdHNSCnF1ZXJ5U3RhdHM=');

@$core.Deprecated('Use rollbackTransactionRequestDescriptor instead')
const RollbackTransactionRequest$json = {
  '1': 'RollbackTransactionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'tx_id', '3': 2, '4': 1, '5': 9, '10': 'txId'},
    {
      '1': 'operation_params',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
  ],
};

/// Descriptor for `RollbackTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollbackTransactionRequestDescriptor =
    $convert.base64Decode(
        'ChpSb2xsYmFja1RyYW5zYWN0aW9uUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgJUglzZXNzaW'
        '9uSWQSEwoFdHhfaWQYAiABKAlSBHR4SWQSSgoQb3BlcmF0aW9uX3BhcmFtcxgDIAEoCzIfLllk'
        'Yi5PcGVyYXRpb25zLk9wZXJhdGlvblBhcmFtc1IPb3BlcmF0aW9uUGFyYW1z');

@$core.Deprecated('Use rollbackTransactionResponseDescriptor instead')
const RollbackTransactionResponse$json = {
  '1': 'RollbackTransactionResponse',
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

/// Descriptor for `RollbackTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollbackTransactionResponseDescriptor =
    $convert.base64Decode(
        'ChtSb2xsYmFja1RyYW5zYWN0aW9uUmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk'
        '9wZXJhdGlvbnMuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use storagePolicyDescriptionDescriptor instead')
const StoragePolicyDescription$json = {
  '1': 'StoragePolicyDescription',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'labels',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.StoragePolicyDescription.LabelsEntry',
      '10': 'labels'
    },
  ],
  '3': [StoragePolicyDescription_LabelsEntry$json],
};

@$core.Deprecated('Use storagePolicyDescriptionDescriptor instead')
const StoragePolicyDescription_LabelsEntry$json = {
  '1': 'LabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `StoragePolicyDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storagePolicyDescriptionDescriptor = $convert.base64Decode(
    'ChhTdG9yYWdlUG9saWN5RGVzY3JpcHRpb24SEgoEbmFtZRgBIAEoCVIEbmFtZRJHCgZsYWJlbH'
    'MYAiADKAsyLy5ZZGIuVGFibGUuU3RvcmFnZVBvbGljeURlc2NyaXB0aW9uLkxhYmVsc0VudHJ5'
    'UgZsYWJlbHMaOQoLTGFiZWxzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKA'
    'lSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use compactionPolicyDescriptionDescriptor instead')
const CompactionPolicyDescription$json = {
  '1': 'CompactionPolicyDescription',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'labels',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.CompactionPolicyDescription.LabelsEntry',
      '10': 'labels'
    },
  ],
  '3': [CompactionPolicyDescription_LabelsEntry$json],
};

@$core.Deprecated('Use compactionPolicyDescriptionDescriptor instead')
const CompactionPolicyDescription_LabelsEntry$json = {
  '1': 'LabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CompactionPolicyDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compactionPolicyDescriptionDescriptor = $convert.base64Decode(
    'ChtDb21wYWN0aW9uUG9saWN5RGVzY3JpcHRpb24SEgoEbmFtZRgBIAEoCVIEbmFtZRJKCgZsYW'
    'JlbHMYAiADKAsyMi5ZZGIuVGFibGUuQ29tcGFjdGlvblBvbGljeURlc2NyaXB0aW9uLkxhYmVs'
    'c0VudHJ5UgZsYWJlbHMaOQoLTGFiZWxzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdW'
    'UYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use partitioningPolicyDescriptionDescriptor instead')
const PartitioningPolicyDescription$json = {
  '1': 'PartitioningPolicyDescription',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'labels',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.PartitioningPolicyDescription.LabelsEntry',
      '10': 'labels'
    },
  ],
  '3': [PartitioningPolicyDescription_LabelsEntry$json],
};

@$core.Deprecated('Use partitioningPolicyDescriptionDescriptor instead')
const PartitioningPolicyDescription_LabelsEntry$json = {
  '1': 'LabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PartitioningPolicyDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitioningPolicyDescriptionDescriptor = $convert.base64Decode(
    'Ch1QYXJ0aXRpb25pbmdQb2xpY3lEZXNjcmlwdGlvbhISCgRuYW1lGAEgASgJUgRuYW1lEkwKBm'
    'xhYmVscxgCIAMoCzI0LllkYi5UYWJsZS5QYXJ0aXRpb25pbmdQb2xpY3lEZXNjcmlwdGlvbi5M'
    'YWJlbHNFbnRyeVIGbGFiZWxzGjkKC0xhYmVsc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBX'
    'ZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use executionPolicyDescriptionDescriptor instead')
const ExecutionPolicyDescription$json = {
  '1': 'ExecutionPolicyDescription',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'labels',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ExecutionPolicyDescription.LabelsEntry',
      '10': 'labels'
    },
  ],
  '3': [ExecutionPolicyDescription_LabelsEntry$json],
};

@$core.Deprecated('Use executionPolicyDescriptionDescriptor instead')
const ExecutionPolicyDescription_LabelsEntry$json = {
  '1': 'LabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ExecutionPolicyDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executionPolicyDescriptionDescriptor = $convert.base64Decode(
    'ChpFeGVjdXRpb25Qb2xpY3lEZXNjcmlwdGlvbhISCgRuYW1lGAEgASgJUgRuYW1lEkkKBmxhYm'
    'VscxgCIAMoCzIxLllkYi5UYWJsZS5FeGVjdXRpb25Qb2xpY3lEZXNjcmlwdGlvbi5MYWJlbHNF'
    'bnRyeVIGbGFiZWxzGjkKC0xhYmVsc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGA'
    'IgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use replicationPolicyDescriptionDescriptor instead')
const ReplicationPolicyDescription$json = {
  '1': 'ReplicationPolicyDescription',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'labels',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ReplicationPolicyDescription.LabelsEntry',
      '10': 'labels'
    },
  ],
  '3': [ReplicationPolicyDescription_LabelsEntry$json],
};

@$core.Deprecated('Use replicationPolicyDescriptionDescriptor instead')
const ReplicationPolicyDescription_LabelsEntry$json = {
  '1': 'LabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ReplicationPolicyDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replicationPolicyDescriptionDescriptor = $convert.base64Decode(
    'ChxSZXBsaWNhdGlvblBvbGljeURlc2NyaXB0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUSSwoGbG'
    'FiZWxzGAIgAygLMjMuWWRiLlRhYmxlLlJlcGxpY2F0aW9uUG9saWN5RGVzY3JpcHRpb24uTGFi'
    'ZWxzRW50cnlSBmxhYmVscxo5CgtMYWJlbHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YW'
    'x1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use cachingPolicyDescriptionDescriptor instead')
const CachingPolicyDescription$json = {
  '1': 'CachingPolicyDescription',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'labels',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.CachingPolicyDescription.LabelsEntry',
      '10': 'labels'
    },
  ],
  '3': [CachingPolicyDescription_LabelsEntry$json],
};

@$core.Deprecated('Use cachingPolicyDescriptionDescriptor instead')
const CachingPolicyDescription_LabelsEntry$json = {
  '1': 'LabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CachingPolicyDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cachingPolicyDescriptionDescriptor = $convert.base64Decode(
    'ChhDYWNoaW5nUG9saWN5RGVzY3JpcHRpb24SEgoEbmFtZRgBIAEoCVIEbmFtZRJHCgZsYWJlbH'
    'MYAiADKAsyLy5ZZGIuVGFibGUuQ2FjaGluZ1BvbGljeURlc2NyaXB0aW9uLkxhYmVsc0VudHJ5'
    'UgZsYWJlbHMaOQoLTGFiZWxzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKA'
    'lSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use tableProfileDescriptionDescriptor instead')
const TableProfileDescription$json = {
  '1': 'TableProfileDescription',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'labels',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.TableProfileDescription.LabelsEntry',
      '10': 'labels'
    },
    {
      '1': 'default_storage_policy',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'defaultStoragePolicy'
    },
    {
      '1': 'allowed_storage_policies',
      '3': 4,
      '4': 3,
      '5': 9,
      '10': 'allowedStoragePolicies'
    },
    {
      '1': 'default_compaction_policy',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'defaultCompactionPolicy'
    },
    {
      '1': 'allowed_compaction_policies',
      '3': 6,
      '4': 3,
      '5': 9,
      '10': 'allowedCompactionPolicies'
    },
    {
      '1': 'default_partitioning_policy',
      '3': 7,
      '4': 1,
      '5': 9,
      '10': 'defaultPartitioningPolicy'
    },
    {
      '1': 'allowed_partitioning_policies',
      '3': 8,
      '4': 3,
      '5': 9,
      '10': 'allowedPartitioningPolicies'
    },
    {
      '1': 'default_execution_policy',
      '3': 9,
      '4': 1,
      '5': 9,
      '10': 'defaultExecutionPolicy'
    },
    {
      '1': 'allowed_execution_policies',
      '3': 10,
      '4': 3,
      '5': 9,
      '10': 'allowedExecutionPolicies'
    },
    {
      '1': 'default_replication_policy',
      '3': 11,
      '4': 1,
      '5': 9,
      '10': 'defaultReplicationPolicy'
    },
    {
      '1': 'allowed_replication_policies',
      '3': 12,
      '4': 3,
      '5': 9,
      '10': 'allowedReplicationPolicies'
    },
    {
      '1': 'default_caching_policy',
      '3': 13,
      '4': 1,
      '5': 9,
      '10': 'defaultCachingPolicy'
    },
    {
      '1': 'allowed_caching_policies',
      '3': 14,
      '4': 3,
      '5': 9,
      '10': 'allowedCachingPolicies'
    },
  ],
  '3': [TableProfileDescription_LabelsEntry$json],
};

@$core.Deprecated('Use tableProfileDescriptionDescriptor instead')
const TableProfileDescription_LabelsEntry$json = {
  '1': 'LabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TableProfileDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tableProfileDescriptionDescriptor = $convert.base64Decode(
    'ChdUYWJsZVByb2ZpbGVEZXNjcmlwdGlvbhISCgRuYW1lGAEgASgJUgRuYW1lEkYKBmxhYmVscx'
    'gCIAMoCzIuLllkYi5UYWJsZS5UYWJsZVByb2ZpbGVEZXNjcmlwdGlvbi5MYWJlbHNFbnRyeVIG'
    'bGFiZWxzEjQKFmRlZmF1bHRfc3RvcmFnZV9wb2xpY3kYAyABKAlSFGRlZmF1bHRTdG9yYWdlUG'
    '9saWN5EjgKGGFsbG93ZWRfc3RvcmFnZV9wb2xpY2llcxgEIAMoCVIWYWxsb3dlZFN0b3JhZ2VQ'
    'b2xpY2llcxI6ChlkZWZhdWx0X2NvbXBhY3Rpb25fcG9saWN5GAUgASgJUhdkZWZhdWx0Q29tcG'
    'FjdGlvblBvbGljeRI+ChthbGxvd2VkX2NvbXBhY3Rpb25fcG9saWNpZXMYBiADKAlSGWFsbG93'
    'ZWRDb21wYWN0aW9uUG9saWNpZXMSPgobZGVmYXVsdF9wYXJ0aXRpb25pbmdfcG9saWN5GAcgAS'
    'gJUhlkZWZhdWx0UGFydGl0aW9uaW5nUG9saWN5EkIKHWFsbG93ZWRfcGFydGl0aW9uaW5nX3Bv'
    'bGljaWVzGAggAygJUhthbGxvd2VkUGFydGl0aW9uaW5nUG9saWNpZXMSOAoYZGVmYXVsdF9leG'
    'VjdXRpb25fcG9saWN5GAkgASgJUhZkZWZhdWx0RXhlY3V0aW9uUG9saWN5EjwKGmFsbG93ZWRf'
    'ZXhlY3V0aW9uX3BvbGljaWVzGAogAygJUhhhbGxvd2VkRXhlY3V0aW9uUG9saWNpZXMSPAoaZG'
    'VmYXVsdF9yZXBsaWNhdGlvbl9wb2xpY3kYCyABKAlSGGRlZmF1bHRSZXBsaWNhdGlvblBvbGlj'
    'eRJAChxhbGxvd2VkX3JlcGxpY2F0aW9uX3BvbGljaWVzGAwgAygJUhphbGxvd2VkUmVwbGljYX'
    'Rpb25Qb2xpY2llcxI0ChZkZWZhdWx0X2NhY2hpbmdfcG9saWN5GA0gASgJUhRkZWZhdWx0Q2Fj'
    'aGluZ1BvbGljeRI4ChhhbGxvd2VkX2NhY2hpbmdfcG9saWNpZXMYDiADKAlSFmFsbG93ZWRDYW'
    'NoaW5nUG9saWNpZXMaOQoLTGFiZWxzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUY'
    'AiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use describeTableOptionsRequestDescriptor instead')
const DescribeTableOptionsRequest$json = {
  '1': 'DescribeTableOptionsRequest',
  '2': [
    {
      '1': 'operation_params',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
  ],
};

/// Descriptor for `DescribeTableOptionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeTableOptionsRequestDescriptor =
    $convert.base64Decode(
        'ChtEZXNjcmliZVRhYmxlT3B0aW9uc1JlcXVlc3QSSgoQb3BlcmF0aW9uX3BhcmFtcxgBIAEoCz'
        'IfLllkYi5PcGVyYXRpb25zLk9wZXJhdGlvblBhcmFtc1IPb3BlcmF0aW9uUGFyYW1z');

@$core.Deprecated('Use describeTableOptionsResponseDescriptor instead')
const DescribeTableOptionsResponse$json = {
  '1': 'DescribeTableOptionsResponse',
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

/// Descriptor for `DescribeTableOptionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeTableOptionsResponseDescriptor =
    $convert.base64Decode(
        'ChxEZXNjcmliZVRhYmxlT3B0aW9uc1Jlc3BvbnNlEjcKCW9wZXJhdGlvbhgBIAEoCzIZLllkYi'
        '5PcGVyYXRpb25zLk9wZXJhdGlvblIJb3BlcmF0aW9u');

@$core.Deprecated('Use describeTableOptionsResultDescriptor instead')
const DescribeTableOptionsResult$json = {
  '1': 'DescribeTableOptionsResult',
  '2': [
    {
      '1': 'table_profile_presets',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.TableProfileDescription',
      '10': 'tableProfilePresets'
    },
    {
      '1': 'storage_policy_presets',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.StoragePolicyDescription',
      '10': 'storagePolicyPresets'
    },
    {
      '1': 'compaction_policy_presets',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.CompactionPolicyDescription',
      '10': 'compactionPolicyPresets'
    },
    {
      '1': 'partitioning_policy_presets',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.PartitioningPolicyDescription',
      '10': 'partitioningPolicyPresets'
    },
    {
      '1': 'execution_policy_presets',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ExecutionPolicyDescription',
      '10': 'executionPolicyPresets'
    },
    {
      '1': 'replication_policy_presets',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ReplicationPolicyDescription',
      '10': 'replicationPolicyPresets'
    },
    {
      '1': 'caching_policy_presets',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.CachingPolicyDescription',
      '10': 'cachingPolicyPresets'
    },
  ],
};

/// Descriptor for `DescribeTableOptionsResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeTableOptionsResultDescriptor = $convert.base64Decode(
    'ChpEZXNjcmliZVRhYmxlT3B0aW9uc1Jlc3VsdBJWChV0YWJsZV9wcm9maWxlX3ByZXNldHMYAS'
    'ADKAsyIi5ZZGIuVGFibGUuVGFibGVQcm9maWxlRGVzY3JpcHRpb25SE3RhYmxlUHJvZmlsZVBy'
    'ZXNldHMSWQoWc3RvcmFnZV9wb2xpY3lfcHJlc2V0cxgCIAMoCzIjLllkYi5UYWJsZS5TdG9yYW'
    'dlUG9saWN5RGVzY3JpcHRpb25SFHN0b3JhZ2VQb2xpY3lQcmVzZXRzEmIKGWNvbXBhY3Rpb25f'
    'cG9saWN5X3ByZXNldHMYAyADKAsyJi5ZZGIuVGFibGUuQ29tcGFjdGlvblBvbGljeURlc2NyaX'
    'B0aW9uUhdjb21wYWN0aW9uUG9saWN5UHJlc2V0cxJoChtwYXJ0aXRpb25pbmdfcG9saWN5X3By'
    'ZXNldHMYBCADKAsyKC5ZZGIuVGFibGUuUGFydGl0aW9uaW5nUG9saWN5RGVzY3JpcHRpb25SGX'
    'BhcnRpdGlvbmluZ1BvbGljeVByZXNldHMSXwoYZXhlY3V0aW9uX3BvbGljeV9wcmVzZXRzGAUg'
    'AygLMiUuWWRiLlRhYmxlLkV4ZWN1dGlvblBvbGljeURlc2NyaXB0aW9uUhZleGVjdXRpb25Qb2'
    'xpY3lQcmVzZXRzEmUKGnJlcGxpY2F0aW9uX3BvbGljeV9wcmVzZXRzGAYgAygLMicuWWRiLlRh'
    'YmxlLlJlcGxpY2F0aW9uUG9saWN5RGVzY3JpcHRpb25SGHJlcGxpY2F0aW9uUG9saWN5UHJlc2'
    'V0cxJZChZjYWNoaW5nX3BvbGljeV9wcmVzZXRzGAcgAygLMiMuWWRiLlRhYmxlLkNhY2hpbmdQ'
    'b2xpY3lEZXNjcmlwdGlvblIUY2FjaGluZ1BvbGljeVByZXNldHM=');

@$core.Deprecated('Use keyRangeDescriptor instead')
const KeyRange$json = {
  '1': 'KeyRange',
  '2': [
    {
      '1': 'greater',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TypedValue',
      '9': 0,
      '10': 'greater'
    },
    {
      '1': 'greater_or_equal',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TypedValue',
      '9': 0,
      '10': 'greaterOrEqual'
    },
    {
      '1': 'less',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TypedValue',
      '9': 1,
      '10': 'less'
    },
    {
      '1': 'less_or_equal',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TypedValue',
      '9': 1,
      '10': 'lessOrEqual'
    },
  ],
  '8': [
    {'1': 'from_bound'},
    {'1': 'to_bound'},
  ],
};

/// Descriptor for `KeyRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyRangeDescriptor = $convert.base64Decode(
    'CghLZXlSYW5nZRIrCgdncmVhdGVyGAEgASgLMg8uWWRiLlR5cGVkVmFsdWVIAFIHZ3JlYXRlch'
    'I7ChBncmVhdGVyX29yX2VxdWFsGAIgASgLMg8uWWRiLlR5cGVkVmFsdWVIAFIOZ3JlYXRlck9y'
    'RXF1YWwSJQoEbGVzcxgDIAEoCzIPLllkYi5UeXBlZFZhbHVlSAFSBGxlc3MSNQoNbGVzc19vcl'
    '9lcXVhbBgEIAEoCzIPLllkYi5UeXBlZFZhbHVlSAFSC2xlc3NPckVxdWFsQgwKCmZyb21fYm91'
    'bmRCCgoIdG9fYm91bmQ=');

@$core.Deprecated('Use readTableRequestDescriptor instead')
const ReadTableRequest$json = {
  '1': 'ReadTableRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {
      '1': 'key_range',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.KeyRange',
      '10': 'keyRange'
    },
    {'1': 'columns', '3': 4, '4': 3, '5': 9, '10': 'columns'},
    {'1': 'ordered', '3': 5, '4': 1, '5': 8, '10': 'ordered'},
    {'1': 'row_limit', '3': 6, '4': 1, '5': 4, '10': 'rowLimit'},
    {
      '1': 'use_snapshot',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'useSnapshot'
    },
    {'1': 'batch_limit_bytes', '3': 8, '4': 1, '5': 4, '10': 'batchLimitBytes'},
    {'1': 'batch_limit_rows', '3': 9, '4': 1, '5': 4, '10': 'batchLimitRows'},
    {
      '1': 'return_not_null_data_as_optional',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'returnNotNullDataAsOptional'
    },
  ],
};

/// Descriptor for `ReadTableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readTableRequestDescriptor = $convert.base64Decode(
    'ChBSZWFkVGFibGVSZXF1ZXN0Eh0KCnNlc3Npb25faWQYASABKAlSCXNlc3Npb25JZBISCgRwYX'
    'RoGAIgASgJUgRwYXRoEjAKCWtleV9yYW5nZRgDIAEoCzITLllkYi5UYWJsZS5LZXlSYW5nZVII'
    'a2V5UmFuZ2USGAoHY29sdW1ucxgEIAMoCVIHY29sdW1ucxIYCgdvcmRlcmVkGAUgASgIUgdvcm'
    'RlcmVkEhsKCXJvd19saW1pdBgGIAEoBFIIcm93TGltaXQSOgoMdXNlX3NuYXBzaG90GAcgASgO'
    'MhcuWWRiLkZlYXR1cmVGbGFnLlN0YXR1c1ILdXNlU25hcHNob3QSKgoRYmF0Y2hfbGltaXRfYn'
    'l0ZXMYCCABKARSD2JhdGNoTGltaXRCeXRlcxIoChBiYXRjaF9saW1pdF9yb3dzGAkgASgEUg5i'
    'YXRjaExpbWl0Um93cxJeCiByZXR1cm5fbm90X251bGxfZGF0YV9hc19vcHRpb25hbBgKIAEoDj'
    'IXLllkYi5GZWF0dXJlRmxhZy5TdGF0dXNSG3JldHVybk5vdE51bGxEYXRhQXNPcHRpb25hbA==');

@$core.Deprecated('Use readTableResponseDescriptor instead')
const ReadTableResponse$json = {
  '1': 'ReadTableResponse',
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
      '1': 'snapshot',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.VirtualTimestamp',
      '10': 'snapshot'
    },
    {
      '1': 'result',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.ReadTableResult',
      '10': 'result'
    },
  ],
};

/// Descriptor for `ReadTableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readTableResponseDescriptor = $convert.base64Decode(
    'ChFSZWFkVGFibGVSZXNwb25zZRIxCgZzdGF0dXMYASABKA4yGS5ZZGIuU3RhdHVzSWRzLlN0YX'
    'R1c0NvZGVSBnN0YXR1cxIvCgZpc3N1ZXMYAiADKAsyFy5ZZGIuSXNzdWUuSXNzdWVNZXNzYWdl'
    'UgZpc3N1ZXMSMQoIc25hcHNob3QYBCABKAsyFS5ZZGIuVmlydHVhbFRpbWVzdGFtcFIIc25hcH'
    'Nob3QSMgoGcmVzdWx0GAMgASgLMhouWWRiLlRhYmxlLlJlYWRUYWJsZVJlc3VsdFIGcmVzdWx0');

@$core.Deprecated('Use readTableResultDescriptor instead')
const ReadTableResult$json = {
  '1': 'ReadTableResult',
  '2': [
    {
      '1': 'result_set',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.ResultSet',
      '10': 'resultSet'
    },
  ],
};

/// Descriptor for `ReadTableResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readTableResultDescriptor = $convert.base64Decode(
    'Cg9SZWFkVGFibGVSZXN1bHQSLQoKcmVzdWx0X3NldBgBIAEoCzIOLllkYi5SZXN1bHRTZXRSCX'
    'Jlc3VsdFNldA==');

@$core.Deprecated('Use readRowsRequestDescriptor instead')
const ReadRowsRequest$json = {
  '1': 'ReadRowsRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {
      '1': 'keys',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TypedValue',
      '10': 'keys'
    },
    {'1': 'columns', '3': 4, '4': 3, '5': 9, '10': 'columns'},
  ],
};

/// Descriptor for `ReadRowsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readRowsRequestDescriptor = $convert.base64Decode(
    'Cg9SZWFkUm93c1JlcXVlc3QSHQoKc2Vzc2lvbl9pZBgBIAEoCVIJc2Vzc2lvbklkEhIKBHBhdG'
    'gYAiABKAlSBHBhdGgSIwoEa2V5cxgDIAEoCzIPLllkYi5UeXBlZFZhbHVlUgRrZXlzEhgKB2Nv'
    'bHVtbnMYBCADKAlSB2NvbHVtbnM=');

@$core.Deprecated('Use readRowsResponseDescriptor instead')
const ReadRowsResponse$json = {
  '1': 'ReadRowsResponse',
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
      '1': 'result_set',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.ResultSet',
      '10': 'resultSet'
    },
  ],
};

/// Descriptor for `ReadRowsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readRowsResponseDescriptor = $convert.base64Decode(
    'ChBSZWFkUm93c1Jlc3BvbnNlEjEKBnN0YXR1cxgBIAEoDjIZLllkYi5TdGF0dXNJZHMuU3RhdH'
    'VzQ29kZVIGc3RhdHVzEi8KBmlzc3VlcxgCIAMoCzIXLllkYi5Jc3N1ZS5Jc3N1ZU1lc3NhZ2VS'
    'Bmlzc3VlcxItCgpyZXN1bHRfc2V0GAMgASgLMg4uWWRiLlJlc3VsdFNldFIJcmVzdWx0U2V0');

@$core.Deprecated('Use bulkUpsertRequestDescriptor instead')
const BulkUpsertRequest$json = {
  '1': 'BulkUpsertRequest',
  '2': [
    {'1': 'table', '3': 1, '4': 1, '5': 9, '10': 'table'},
    {
      '1': 'rows',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TypedValue',
      '10': 'rows'
    },
    {
      '1': 'operation_params',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams',
      '10': 'operationParams'
    },
    {
      '1': 'arrow_batch_settings',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Formats.ArrowBatchSettings',
      '9': 0,
      '10': 'arrowBatchSettings'
    },
    {
      '1': 'csv_settings',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Formats.CsvSettings',
      '9': 0,
      '10': 'csvSettings'
    },
    {'1': 'data', '3': 1000, '4': 1, '5': 12, '10': 'data'},
  ],
  '8': [
    {'1': 'data_format'},
  ],
};

/// Descriptor for `BulkUpsertRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bulkUpsertRequestDescriptor = $convert.base64Decode(
    'ChFCdWxrVXBzZXJ0UmVxdWVzdBIUCgV0YWJsZRgBIAEoCVIFdGFibGUSIwoEcm93cxgCIAEoCz'
    'IPLllkYi5UeXBlZFZhbHVlUgRyb3dzEkoKEG9wZXJhdGlvbl9wYXJhbXMYAyABKAsyHy5ZZGIu'
    'T3BlcmF0aW9ucy5PcGVyYXRpb25QYXJhbXNSD29wZXJhdGlvblBhcmFtcxJTChRhcnJvd19iYX'
    'RjaF9zZXR0aW5ncxgHIAEoCzIfLllkYi5Gb3JtYXRzLkFycm93QmF0Y2hTZXR0aW5nc0gAUhJh'
    'cnJvd0JhdGNoU2V0dGluZ3MSPQoMY3N2X3NldHRpbmdzGAggASgLMhguWWRiLkZvcm1hdHMuQ3'
    'N2U2V0dGluZ3NIAFILY3N2U2V0dGluZ3MSEwoEZGF0YRjoByABKAxSBGRhdGFCDQoLZGF0YV9m'
    'b3JtYXQ=');

@$core.Deprecated('Use bulkUpsertResponseDescriptor instead')
const BulkUpsertResponse$json = {
  '1': 'BulkUpsertResponse',
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

/// Descriptor for `BulkUpsertResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bulkUpsertResponseDescriptor = $convert.base64Decode(
    'ChJCdWxrVXBzZXJ0UmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZXJhdGlvbn'
    'MuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use bulkUpsertResultDescriptor instead')
const BulkUpsertResult$json = {
  '1': 'BulkUpsertResult',
};

/// Descriptor for `BulkUpsertResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bulkUpsertResultDescriptor =
    $convert.base64Decode('ChBCdWxrVXBzZXJ0UmVzdWx0');

@$core.Deprecated('Use executeScanQueryRequestDescriptor instead')
const ExecuteScanQueryRequest$json = {
  '1': 'ExecuteScanQueryRequest',
  '2': [
    {
      '1': 'query',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.Query',
      '10': 'query'
    },
    {
      '1': 'parameters',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Table.ExecuteScanQueryRequest.ParametersEntry',
      '10': 'parameters'
    },
    {
      '1': 'mode',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.ExecuteScanQueryRequest.Mode',
      '10': 'mode'
    },
    {
      '1': 'collect_stats',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Table.QueryStatsCollection.Mode',
      '10': 'collectStats'
    },
    {
      '1': 'collect_full_diagnostics',
      '3': 9,
      '4': 1,
      '5': 8,
      '10': 'collectFullDiagnostics'
    },
  ],
  '3': [ExecuteScanQueryRequest_ParametersEntry$json],
  '4': [ExecuteScanQueryRequest_Mode$json],
  '9': [
    {'1': 1, '2': 2},
    {'1': 2, '2': 3},
    {'1': 5, '2': 6},
    {'1': 7, '2': 8},
  ],
};

@$core.Deprecated('Use executeScanQueryRequestDescriptor instead')
const ExecuteScanQueryRequest_ParametersEntry$json = {
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

@$core.Deprecated('Use executeScanQueryRequestDescriptor instead')
const ExecuteScanQueryRequest_Mode$json = {
  '1': 'Mode',
  '2': [
    {'1': 'MODE_UNSPECIFIED', '2': 0},
    {'1': 'MODE_EXPLAIN', '2': 1},
    {'1': 'MODE_EXEC', '2': 3},
  ],
};

/// Descriptor for `ExecuteScanQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeScanQueryRequestDescriptor = $convert.base64Decode(
    'ChdFeGVjdXRlU2NhblF1ZXJ5UmVxdWVzdBImCgVxdWVyeRgDIAEoCzIQLllkYi5UYWJsZS5RdW'
    'VyeVIFcXVlcnkSUgoKcGFyYW1ldGVycxgEIAMoCzIyLllkYi5UYWJsZS5FeGVjdXRlU2NhblF1'
    'ZXJ5UmVxdWVzdC5QYXJhbWV0ZXJzRW50cnlSCnBhcmFtZXRlcnMSOwoEbW9kZRgGIAEoDjInLl'
    'lkYi5UYWJsZS5FeGVjdXRlU2NhblF1ZXJ5UmVxdWVzdC5Nb2RlUgRtb2RlEkkKDWNvbGxlY3Rf'
    'c3RhdHMYCCABKA4yJC5ZZGIuVGFibGUuUXVlcnlTdGF0c0NvbGxlY3Rpb24uTW9kZVIMY29sbG'
    'VjdFN0YXRzEjgKGGNvbGxlY3RfZnVsbF9kaWFnbm9zdGljcxgJIAEoCFIWY29sbGVjdEZ1bGxE'
    'aWFnbm9zdGljcxpOCg9QYXJhbWV0ZXJzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSJQoFdmFsdW'
    'UYAiABKAsyDy5ZZGIuVHlwZWRWYWx1ZVIFdmFsdWU6AjgBIj0KBE1vZGUSFAoQTU9ERV9VTlNQ'
    'RUNJRklFRBAAEhAKDE1PREVfRVhQTEFJThABEg0KCU1PREVfRVhFQxADSgQIARACSgQIAhADSg'
    'QIBRAGSgQIBxAI');

@$core.Deprecated('Use executeScanQueryPartialResponseDescriptor instead')
const ExecuteScanQueryPartialResponse$json = {
  '1': 'ExecuteScanQueryPartialResponse',
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
      '1': 'result',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Table.ExecuteScanQueryPartialResult',
      '10': 'result'
    },
  ],
};

/// Descriptor for `ExecuteScanQueryPartialResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeScanQueryPartialResponseDescriptor =
    $convert.base64Decode(
        'Ch9FeGVjdXRlU2NhblF1ZXJ5UGFydGlhbFJlc3BvbnNlEjEKBnN0YXR1cxgBIAEoDjIZLllkYi'
        '5TdGF0dXNJZHMuU3RhdHVzQ29kZVIGc3RhdHVzEi8KBmlzc3VlcxgCIAMoCzIXLllkYi5Jc3N1'
        'ZS5Jc3N1ZU1lc3NhZ2VSBmlzc3VlcxJACgZyZXN1bHQYAyABKAsyKC5ZZGIuVGFibGUuRXhlY3'
        'V0ZVNjYW5RdWVyeVBhcnRpYWxSZXN1bHRSBnJlc3VsdA==');

@$core.Deprecated('Use executeScanQueryPartialResultDescriptor instead')
const ExecuteScanQueryPartialResult$json = {
  '1': 'ExecuteScanQueryPartialResult',
  '2': [
    {
      '1': 'result_set',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.ResultSet',
      '10': 'resultSet'
    },
    {
      '1': 'query_stats',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TableStats.QueryStats',
      '10': 'queryStats'
    },
    {
      '1': 'query_full_diagnostics',
      '3': 7,
      '4': 1,
      '5': 9,
      '10': 'queryFullDiagnostics'
    },
  ],
  '9': [
    {'1': 2, '2': 3},
    {'1': 3, '2': 4},
    {'1': 4, '2': 5},
    {'1': 5, '2': 6},
  ],
};

/// Descriptor for `ExecuteScanQueryPartialResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeScanQueryPartialResultDescriptor = $convert.base64Decode(
    'Ch1FeGVjdXRlU2NhblF1ZXJ5UGFydGlhbFJlc3VsdBItCgpyZXN1bHRfc2V0GAEgASgLMg4uWW'
    'RiLlJlc3VsdFNldFIJcmVzdWx0U2V0EjsKC3F1ZXJ5X3N0YXRzGAYgASgLMhouWWRiLlRhYmxl'
    'U3RhdHMuUXVlcnlTdGF0c1IKcXVlcnlTdGF0cxI0ChZxdWVyeV9mdWxsX2RpYWdub3N0aWNzGA'
    'cgASgJUhRxdWVyeUZ1bGxEaWFnbm9zdGljc0oECAIQA0oECAMQBEoECAQQBUoECAUQBg==');

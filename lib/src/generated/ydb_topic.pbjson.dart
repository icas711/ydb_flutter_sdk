// This is a generated file - do not edit.
//
// Generated from ydb_topic.proto.

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

@$core.Deprecated('Use codecDescriptor instead')
const Codec$json = {
  '1': 'Codec',
  '2': [
    {'1': 'CODEC_UNSPECIFIED', '2': 0},
    {'1': 'CODEC_RAW', '2': 1},
    {'1': 'CODEC_GZIP', '2': 2},
    {'1': 'CODEC_LZOP', '2': 3},
    {'1': 'CODEC_ZSTD', '2': 4},
    {'1': 'CODEC_CUSTOM', '2': 10000},
  ],
  '4': [
    {'1': 5, '2': 9999},
    {'1': 20000, '2': 2147483647},
  ],
};

/// Descriptor for `Codec`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List codecDescriptor = $convert.base64Decode(
    'CgVDb2RlYxIVChFDT0RFQ19VTlNQRUNJRklFRBAAEg0KCUNPREVDX1JBVxABEg4KCkNPREVDX0'
    'daSVAQAhIOCgpDT0RFQ19MWk9QEAMSDgoKQ09ERUNfWlNURBAEEhEKDENPREVDX0NVU1RPTRCQ'
    'TiIFCAUQj04iCgignAEQ/////wc=');

@$core.Deprecated('Use autoPartitioningStrategyDescriptor instead')
const AutoPartitioningStrategy$json = {
  '1': 'AutoPartitioningStrategy',
  '2': [
    {'1': 'AUTO_PARTITIONING_STRATEGY_UNSPECIFIED', '2': 0},
    {'1': 'AUTO_PARTITIONING_STRATEGY_DISABLED', '2': 1},
    {'1': 'AUTO_PARTITIONING_STRATEGY_SCALE_UP', '2': 2},
    {'1': 'AUTO_PARTITIONING_STRATEGY_SCALE_UP_AND_DOWN', '2': 3},
    {'1': 'AUTO_PARTITIONING_STRATEGY_PAUSED', '2': 4},
  ],
};

/// Descriptor for `AutoPartitioningStrategy`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List autoPartitioningStrategyDescriptor = $convert.base64Decode(
    'ChhBdXRvUGFydGl0aW9uaW5nU3RyYXRlZ3kSKgomQVVUT19QQVJUSVRJT05JTkdfU1RSQVRFR1'
    'lfVU5TUEVDSUZJRUQQABInCiNBVVRPX1BBUlRJVElPTklOR19TVFJBVEVHWV9ESVNBQkxFRBAB'
    'EicKI0FVVE9fUEFSVElUSU9OSU5HX1NUUkFURUdZX1NDQUxFX1VQEAISMAosQVVUT19QQVJUSV'
    'RJT05JTkdfU1RSQVRFR1lfU0NBTEVfVVBfQU5EX0RPV04QAxIlCiFBVVRPX1BBUlRJVElPTklO'
    'R19TVFJBVEVHWV9QQVVTRUQQBA==');

@$core.Deprecated('Use meteringModeDescriptor instead')
const MeteringMode$json = {
  '1': 'MeteringMode',
  '2': [
    {'1': 'METERING_MODE_UNSPECIFIED', '2': 0},
    {'1': 'METERING_MODE_RESERVED_CAPACITY', '2': 1},
    {'1': 'METERING_MODE_REQUEST_UNITS', '2': 2},
  ],
};

/// Descriptor for `MeteringMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List meteringModeDescriptor = $convert.base64Decode(
    'CgxNZXRlcmluZ01vZGUSHQoZTUVURVJJTkdfTU9ERV9VTlNQRUNJRklFRBAAEiMKH01FVEVSSU'
    '5HX01PREVfUkVTRVJWRURfQ0FQQUNJVFkQARIfChtNRVRFUklOR19NT0RFX1JFUVVFU1RfVU5J'
    'VFMQAg==');

@$core.Deprecated('Use supportedCodecsDescriptor instead')
const SupportedCodecs$json = {
  '1': 'SupportedCodecs',
  '2': [
    {'1': 'codecs', '3': 1, '4': 3, '5': 5, '8': {}, '10': 'codecs'},
  ],
};

/// Descriptor for `SupportedCodecs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supportedCodecsDescriptor = $convert.base64Decode(
    'Cg9TdXBwb3J0ZWRDb2RlY3MSLAoGY29kZWNzGAEgAygFQhSa5ioCGGSy5ioKWzE7IDE5OTk5XV'
    'IGY29kZWNz');

@$core.Deprecated('Use offsetsRangeDescriptor instead')
const OffsetsRange$json = {
  '1': 'OffsetsRange',
  '2': [
    {'1': 'start', '3': 1, '4': 1, '5': 3, '10': 'start'},
    {'1': 'end', '3': 2, '4': 1, '5': 3, '10': 'end'},
  ],
};

/// Descriptor for `OffsetsRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offsetsRangeDescriptor = $convert.base64Decode(
    'CgxPZmZzZXRzUmFuZ2USFAoFc3RhcnQYASABKANSBXN0YXJ0EhAKA2VuZBgCIAEoA1IDZW5k');

@$core.Deprecated('Use updateTokenRequestDescriptor instead')
const UpdateTokenRequest$json = {
  '1': 'UpdateTokenRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'token'},
  ],
};

/// Descriptor for `UpdateTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTokenRequestDescriptor =
    $convert.base64Decode(
        'ChJVcGRhdGVUb2tlblJlcXVlc3QSGgoFdG9rZW4YASABKAlCBLjmKgFSBXRva2Vu');

@$core.Deprecated('Use updateTokenResponseDescriptor instead')
const UpdateTokenResponse$json = {
  '1': 'UpdateTokenResponse',
};

/// Descriptor for `UpdateTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTokenResponseDescriptor =
    $convert.base64Decode('ChNVcGRhdGVUb2tlblJlc3BvbnNl');

@$core.Deprecated('Use partitionWithGenerationDescriptor instead')
const PartitionWithGeneration$json = {
  '1': 'PartitionWithGeneration',
  '2': [
    {'1': 'partition_id', '3': 1, '4': 1, '5': 3, '10': 'partitionId'},
    {'1': 'generation', '3': 2, '4': 1, '5': 3, '10': 'generation'},
  ],
};

/// Descriptor for `PartitionWithGeneration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitionWithGenerationDescriptor =
    $convert.base64Decode(
        'ChdQYXJ0aXRpb25XaXRoR2VuZXJhdGlvbhIhCgxwYXJ0aXRpb25faWQYASABKANSC3BhcnRpdG'
        'lvbklkEh4KCmdlbmVyYXRpb24YAiABKANSCmdlbmVyYXRpb24=');

@$core.Deprecated('Use metadataItemDescriptor instead')
const MetadataItem$json = {
  '1': 'MetadataItem',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `MetadataItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadataItemDescriptor = $convert.base64Decode(
    'CgxNZXRhZGF0YUl0ZW0SEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVl');

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage$json = {
  '1': 'StreamWriteMessage',
  '3': [
    StreamWriteMessage_FromClient$json,
    StreamWriteMessage_FromServer$json,
    StreamWriteMessage_InitRequest$json,
    StreamWriteMessage_InitResponse$json,
    StreamWriteMessage_WriteRequest$json,
    StreamWriteMessage_WriteResponse$json
  ],
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_FromClient$json = {
  '1': 'FromClient',
  '2': [
    {
      '1': 'init_request',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamWriteMessage.InitRequest',
      '9': 0,
      '10': 'initRequest'
    },
    {
      '1': 'write_request',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamWriteMessage.WriteRequest',
      '9': 0,
      '10': 'writeRequest'
    },
    {
      '1': 'update_token_request',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.UpdateTokenRequest',
      '9': 0,
      '10': 'updateTokenRequest'
    },
  ],
  '8': [
    {'1': 'client_message'},
  ],
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_FromServer$json = {
  '1': 'FromServer',
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
      '1': 'init_response',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamWriteMessage.InitResponse',
      '9': 0,
      '10': 'initResponse'
    },
    {
      '1': 'write_response',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamWriteMessage.WriteResponse',
      '9': 0,
      '10': 'writeResponse'
    },
    {
      '1': 'update_token_response',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.UpdateTokenResponse',
      '9': 0,
      '10': 'updateTokenResponse'
    },
  ],
  '8': [
    {'1': 'server_message'},
  ],
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_InitRequest$json = {
  '1': 'InitRequest',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'producer_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'producerId'},
    {
      '1': 'write_session_meta',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.StreamWriteMessage.InitRequest.WriteSessionMetaEntry',
      '10': 'writeSessionMeta'
    },
    {
      '1': 'message_group_id',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 0,
      '10': 'messageGroupId'
    },
    {'1': 'partition_id', '3': 5, '4': 1, '5': 3, '9': 0, '10': 'partitionId'},
    {
      '1': 'partition_with_generation',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.PartitionWithGeneration',
      '9': 0,
      '10': 'partitionWithGeneration'
    },
    {'1': 'get_last_seq_no', '3': 6, '4': 1, '5': 8, '10': 'getLastSeqNo'},
  ],
  '3': [StreamWriteMessage_InitRequest_WriteSessionMetaEntry$json],
  '8': [
    {'1': 'partitioning'},
  ],
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_InitRequest_WriteSessionMetaEntry$json = {
  '1': 'WriteSessionMetaEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_InitResponse$json = {
  '1': 'InitResponse',
  '2': [
    {'1': 'last_seq_no', '3': 1, '4': 1, '5': 3, '10': 'lastSeqNo'},
    {'1': 'session_id', '3': 2, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'partition_id', '3': 3, '4': 1, '5': 3, '10': 'partitionId'},
    {
      '1': 'supported_codecs',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.SupportedCodecs',
      '10': 'supportedCodecs'
    },
  ],
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_WriteRequest$json = {
  '1': 'WriteRequest',
  '2': [
    {
      '1': 'messages',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.StreamWriteMessage.WriteRequest.MessageData',
      '10': 'messages'
    },
    {'1': 'codec', '3': 2, '4': 1, '5': 5, '10': 'codec'},
    {
      '1': 'tx',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.TransactionIdentity',
      '9': 0,
      '10': 'tx',
      '17': true
    },
  ],
  '3': [StreamWriteMessage_WriteRequest_MessageData$json],
  '8': [
    {'1': '_tx'},
  ],
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_WriteRequest_MessageData$json = {
  '1': 'MessageData',
  '2': [
    {'1': 'seq_no', '3': 1, '4': 1, '5': 3, '10': 'seqNo'},
    {
      '1': 'created_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
    {
      '1': 'uncompressed_size',
      '3': 4,
      '4': 1,
      '5': 3,
      '10': 'uncompressedSize'
    },
    {
      '1': 'message_group_id',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 0,
      '10': 'messageGroupId'
    },
    {'1': 'partition_id', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'partitionId'},
    {
      '1': 'partition_with_generation',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.PartitionWithGeneration',
      '9': 0,
      '10': 'partitionWithGeneration'
    },
    {
      '1': 'metadata_items',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.MetadataItem',
      '8': {},
      '10': 'metadataItems'
    },
  ],
  '8': [
    {'1': 'partitioning'},
  ],
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_WriteResponse$json = {
  '1': 'WriteResponse',
  '2': [
    {
      '1': 'acks',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.StreamWriteMessage.WriteResponse.WriteAck',
      '10': 'acks'
    },
    {'1': 'partition_id', '3': 2, '4': 1, '5': 3, '10': 'partitionId'},
    {
      '1': 'write_statistics',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamWriteMessage.WriteResponse.WriteStatistics',
      '10': 'writeStatistics'
    },
  ],
  '3': [
    StreamWriteMessage_WriteResponse_WriteAck$json,
    StreamWriteMessage_WriteResponse_WriteStatistics$json
  ],
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_WriteResponse_WriteAck$json = {
  '1': 'WriteAck',
  '2': [
    {'1': 'seq_no', '3': 1, '4': 1, '5': 3, '10': 'seqNo'},
    {
      '1': 'written',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamWriteMessage.WriteResponse.WriteAck.Written',
      '9': 0,
      '10': 'written'
    },
    {
      '1': 'skipped',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamWriteMessage.WriteResponse.WriteAck.Skipped',
      '9': 0,
      '10': 'skipped'
    },
    {
      '1': 'written_in_tx',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamWriteMessage.WriteResponse.WriteAck.WrittenInTx',
      '9': 0,
      '10': 'writtenInTx'
    },
  ],
  '3': [
    StreamWriteMessage_WriteResponse_WriteAck_Written$json,
    StreamWriteMessage_WriteResponse_WriteAck_Skipped$json,
    StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx$json
  ],
  '8': [
    {'1': 'message_write_status'},
  ],
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_WriteResponse_WriteAck_Written$json = {
  '1': 'Written',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
  ],
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_WriteResponse_WriteAck_Skipped$json = {
  '1': 'Skipped',
  '2': [
    {
      '1': 'reason',
      '3': 1,
      '4': 1,
      '5': 14,
      '6':
          '.Ydb.Topic.StreamWriteMessage.WriteResponse.WriteAck.Skipped.Reason',
      '10': 'reason'
    },
  ],
  '4': [StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason$json],
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason$json = {
  '1': 'Reason',
  '2': [
    {'1': 'REASON_UNSPECIFIED', '2': 0},
    {'1': 'REASON_ALREADY_WRITTEN', '2': 1},
  ],
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx$json = {
  '1': 'WrittenInTx',
};

@$core.Deprecated('Use streamWriteMessageDescriptor instead')
const StreamWriteMessage_WriteResponse_WriteStatistics$json = {
  '1': 'WriteStatistics',
  '2': [
    {
      '1': 'persisting_time',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'persistingTime'
    },
    {
      '1': 'min_queue_wait_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'minQueueWaitTime'
    },
    {
      '1': 'max_queue_wait_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'maxQueueWaitTime'
    },
    {
      '1': 'partition_quota_wait_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'partitionQuotaWaitTime'
    },
    {
      '1': 'topic_quota_wait_time',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'topicQuotaWaitTime'
    },
  ],
};

/// Descriptor for `StreamWriteMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamWriteMessageDescriptor = $convert.base64Decode(
    'ChJTdHJlYW1Xcml0ZU1lc3NhZ2UalAIKCkZyb21DbGllbnQSTgoMaW5pdF9yZXF1ZXN0GAEgAS'
    'gLMikuWWRiLlRvcGljLlN0cmVhbVdyaXRlTWVzc2FnZS5Jbml0UmVxdWVzdEgAUgtpbml0UmVx'
    'dWVzdBJRCg13cml0ZV9yZXF1ZXN0GAIgASgLMiouWWRiLlRvcGljLlN0cmVhbVdyaXRlTWVzc2'
    'FnZS5Xcml0ZVJlcXVlc3RIAFIMd3JpdGVSZXF1ZXN0ElEKFHVwZGF0ZV90b2tlbl9yZXF1ZXN0'
    'GAMgASgLMh0uWWRiLlRvcGljLlVwZGF0ZVRva2VuUmVxdWVzdEgAUhJ1cGRhdGVUb2tlblJlcX'
    'Vlc3RCEAoOY2xpZW50X21lc3NhZ2UagQMKCkZyb21TZXJ2ZXISMQoGc3RhdHVzGAEgASgOMhku'
    'WWRiLlN0YXR1c0lkcy5TdGF0dXNDb2RlUgZzdGF0dXMSLwoGaXNzdWVzGAIgAygLMhcuWWRiLk'
    'lzc3VlLklzc3VlTWVzc2FnZVIGaXNzdWVzElEKDWluaXRfcmVzcG9uc2UYAyABKAsyKi5ZZGIu'
    'VG9waWMuU3RyZWFtV3JpdGVNZXNzYWdlLkluaXRSZXNwb25zZUgAUgxpbml0UmVzcG9uc2USVA'
    'oOd3JpdGVfcmVzcG9uc2UYBCABKAsyKy5ZZGIuVG9waWMuU3RyZWFtV3JpdGVNZXNzYWdlLldy'
    'aXRlUmVzcG9uc2VIAFINd3JpdGVSZXNwb25zZRJUChV1cGRhdGVfdG9rZW5fcmVzcG9uc2UYBS'
    'ABKAsyHi5ZZGIuVG9waWMuVXBkYXRlVG9rZW5SZXNwb25zZUgAUhN1cGRhdGVUb2tlblJlc3Bv'
    'bnNlQhAKDnNlcnZlcl9tZXNzYWdlGvIDCgtJbml0UmVxdWVzdBISCgRwYXRoGAEgASgJUgRwYX'
    'RoEigKC3Byb2R1Y2VyX2lkGAIgASgJQgei5ioDGIAQUgpwcm9kdWNlcklkEm0KEndyaXRlX3Nl'
    'c3Npb25fbWV0YRgDIAMoCzI/LllkYi5Ub3BpYy5TdHJlYW1Xcml0ZU1lc3NhZ2UuSW5pdFJlcX'
    'Vlc3QuV3JpdGVTZXNzaW9uTWV0YUVudHJ5UhB3cml0ZVNlc3Npb25NZXRhEjMKEG1lc3NhZ2Vf'
    'Z3JvdXBfaWQYBCABKAlCB6LmKgMYgBBIAFIObWVzc2FnZUdyb3VwSWQSIwoMcGFydGl0aW9uX2'
    'lkGAUgASgDSABSC3BhcnRpdGlvbklkEmAKGXBhcnRpdGlvbl93aXRoX2dlbmVyYXRpb24YByAB'
    'KAsyIi5ZZGIuVG9waWMuUGFydGl0aW9uV2l0aEdlbmVyYXRpb25IAFIXcGFydGl0aW9uV2l0aE'
    'dlbmVyYXRpb24SJQoPZ2V0X2xhc3Rfc2VxX25vGAYgASgIUgxnZXRMYXN0U2VxTm8aQwoVV3Jp'
    'dGVTZXNzaW9uTWV0YUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YW'
    'x1ZToCOAFCDgoMcGFydGl0aW9uaW5nGrcBCgxJbml0UmVzcG9uc2USHgoLbGFzdF9zZXFfbm8Y'
    'ASABKANSCWxhc3RTZXFObxIdCgpzZXNzaW9uX2lkGAIgASgJUglzZXNzaW9uSWQSIQoMcGFydG'
    'l0aW9uX2lkGAMgASgDUgtwYXJ0aXRpb25JZBJFChBzdXBwb3J0ZWRfY29kZWNzGAQgASgLMhou'
    'WWRiLlRvcGljLlN1cHBvcnRlZENvZGVjc1IPc3VwcG9ydGVkQ29kZWNzGuwECgxXcml0ZVJlcX'
    'Vlc3QSUgoIbWVzc2FnZXMYASADKAsyNi5ZZGIuVG9waWMuU3RyZWFtV3JpdGVNZXNzYWdlLldy'
    'aXRlUmVxdWVzdC5NZXNzYWdlRGF0YVIIbWVzc2FnZXMSFAoFY29kZWMYAiABKAVSBWNvZGVjEj'
    'MKAnR4GAMgASgLMh4uWWRiLlRvcGljLlRyYW5zYWN0aW9uSWRlbnRpdHlIAFICdHiIAQEatQMK'
    'C01lc3NhZ2VEYXRhEhUKBnNlcV9ubxgBIAEoA1IFc2VxTm8SOQoKY3JlYXRlZF9hdBgCIAEoCz'
    'IaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBISCgRkYXRhGAMgASgMUgRk'
    'YXRhEisKEXVuY29tcHJlc3NlZF9zaXplGAQgASgDUhB1bmNvbXByZXNzZWRTaXplEjMKEG1lc3'
    'NhZ2VfZ3JvdXBfaWQYBSABKAlCB6LmKgMYgBBIAFIObWVzc2FnZUdyb3VwSWQSIwoMcGFydGl0'
    'aW9uX2lkGAYgASgDSABSC3BhcnRpdGlvbklkEmAKGXBhcnRpdGlvbl93aXRoX2dlbmVyYXRpb2'
    '4YCCABKAsyIi5ZZGIuVG9waWMuUGFydGl0aW9uV2l0aEdlbmVyYXRpb25IAFIXcGFydGl0aW9u'
    'V2l0aEdlbmVyYXRpb24SRwoObWV0YWRhdGFfaXRlbXMYByADKAsyFy5ZZGIuVG9waWMuTWV0YW'
    'RhdGFJdGVtQgea5ioDGOgHUg1tZXRhZGF0YUl0ZW1zQg4KDHBhcnRpdGlvbmluZ0IFCgNfdHga'
    'pQkKDVdyaXRlUmVzcG9uc2USSAoEYWNrcxgBIAMoCzI0LllkYi5Ub3BpYy5TdHJlYW1Xcml0ZU'
    '1lc3NhZ2UuV3JpdGVSZXNwb25zZS5Xcml0ZUFja1IEYWNrcxIhCgxwYXJ0aXRpb25faWQYAiAB'
    'KANSC3BhcnRpdGlvbklkEmYKEHdyaXRlX3N0YXRpc3RpY3MYAyABKAsyOy5ZZGIuVG9waWMuU3'
    'RyZWFtV3JpdGVNZXNzYWdlLldyaXRlUmVzcG9uc2UuV3JpdGVTdGF0aXN0aWNzUg93cml0ZVN0'
    'YXRpc3RpY3MargQKCFdyaXRlQWNrEhUKBnNlcV9ubxgBIAEoA1IFc2VxTm8SWAoHd3JpdHRlbh'
    'gCIAEoCzI8LllkYi5Ub3BpYy5TdHJlYW1Xcml0ZU1lc3NhZ2UuV3JpdGVSZXNwb25zZS5Xcml0'
    'ZUFjay5Xcml0dGVuSABSB3dyaXR0ZW4SWAoHc2tpcHBlZBgDIAEoCzI8LllkYi5Ub3BpYy5TdH'
    'JlYW1Xcml0ZU1lc3NhZ2UuV3JpdGVSZXNwb25zZS5Xcml0ZUFjay5Ta2lwcGVkSABSB3NraXBw'
    'ZWQSZgoNd3JpdHRlbl9pbl90eBgEIAEoCzJALllkYi5Ub3BpYy5TdHJlYW1Xcml0ZU1lc3NhZ2'
    'UuV3JpdGVSZXNwb25zZS5Xcml0ZUFjay5Xcml0dGVuSW5UeEgAUgt3cml0dGVuSW5UeBohCgdX'
    'cml0dGVuEhYKBm9mZnNldBgBIAEoA1IGb2Zmc2V0GqQBCgdTa2lwcGVkElsKBnJlYXNvbhgBIA'
    'EoDjJDLllkYi5Ub3BpYy5TdHJlYW1Xcml0ZU1lc3NhZ2UuV3JpdGVSZXNwb25zZS5Xcml0ZUFj'
    'ay5Ta2lwcGVkLlJlYXNvblIGcmVhc29uIjwKBlJlYXNvbhIWChJSRUFTT05fVU5TUEVDSUZJRU'
    'QQABIaChZSRUFTT05fQUxSRUFEWV9XUklUVEVOEAEaDQoLV3JpdHRlbkluVHhCFgoUbWVzc2Fn'
    'ZV93cml0ZV9zdGF0dXMajQMKD1dyaXRlU3RhdGlzdGljcxJCCg9wZXJzaXN0aW5nX3RpbWUYAS'
    'ABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SDnBlcnNpc3RpbmdUaW1lEkgKE21pbl9x'
    'dWV1ZV93YWl0X3RpbWUYAiABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SEG1pblF1ZX'
    'VlV2FpdFRpbWUSSAoTbWF4X3F1ZXVlX3dhaXRfdGltZRgDIAEoCzIZLmdvb2dsZS5wcm90b2J1'
    'Zi5EdXJhdGlvblIQbWF4UXVldWVXYWl0VGltZRJUChlwYXJ0aXRpb25fcXVvdGFfd2FpdF90aW'
    '1lGAQgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUhZwYXJ0aXRpb25RdW90YVdhaXRU'
    'aW1lEkwKFXRvcGljX3F1b3RhX3dhaXRfdGltZRgFIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdX'
    'JhdGlvblISdG9waWNRdW90YVdhaXRUaW1l');

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage$json = {
  '1': 'StreamReadMessage',
  '3': [
    StreamReadMessage_PartitionSession$json,
    StreamReadMessage_FromClient$json,
    StreamReadMessage_FromServer$json,
    StreamReadMessage_InitRequest$json,
    StreamReadMessage_InitResponse$json,
    StreamReadMessage_ReadRequest$json,
    StreamReadMessage_ReadResponse$json,
    StreamReadMessage_CommitOffsetRequest$json,
    StreamReadMessage_CommitOffsetResponse$json,
    StreamReadMessage_PartitionSessionStatusRequest$json,
    StreamReadMessage_PartitionSessionStatusResponse$json,
    StreamReadMessage_StartPartitionSessionRequest$json,
    StreamReadMessage_StartPartitionSessionResponse$json,
    StreamReadMessage_StopPartitionSessionRequest$json,
    StreamReadMessage_StopPartitionSessionResponse$json,
    StreamReadMessage_UpdatePartitionSession$json,
    StreamReadMessage_DirectReadAck$json,
    StreamReadMessage_EndPartitionSession$json
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_PartitionSession$json = {
  '1': 'PartitionSession',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'partition_id', '3': 3, '4': 1, '5': 3, '10': 'partitionId'},
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_FromClient$json = {
  '1': 'FromClient',
  '2': [
    {
      '1': 'init_request',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.InitRequest',
      '9': 0,
      '10': 'initRequest'
    },
    {
      '1': 'read_request',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.ReadRequest',
      '9': 0,
      '10': 'readRequest'
    },
    {
      '1': 'commit_offset_request',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.CommitOffsetRequest',
      '9': 0,
      '10': 'commitOffsetRequest'
    },
    {
      '1': 'partition_session_status_request',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.PartitionSessionStatusRequest',
      '9': 0,
      '10': 'partitionSessionStatusRequest'
    },
    {
      '1': 'update_token_request',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.UpdateTokenRequest',
      '9': 0,
      '10': 'updateTokenRequest'
    },
    {
      '1': 'direct_read_ack',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.DirectReadAck',
      '9': 0,
      '10': 'directReadAck'
    },
    {
      '1': 'start_partition_session_response',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.StartPartitionSessionResponse',
      '9': 0,
      '10': 'startPartitionSessionResponse'
    },
    {
      '1': 'stop_partition_session_response',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.StopPartitionSessionResponse',
      '9': 0,
      '10': 'stopPartitionSessionResponse'
    },
  ],
  '8': [
    {'1': 'client_message'},
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_FromServer$json = {
  '1': 'FromServer',
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
      '1': 'init_response',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.InitResponse',
      '9': 0,
      '10': 'initResponse'
    },
    {
      '1': 'read_response',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.ReadResponse',
      '9': 0,
      '10': 'readResponse'
    },
    {
      '1': 'commit_offset_response',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.CommitOffsetResponse',
      '9': 0,
      '10': 'commitOffsetResponse'
    },
    {
      '1': 'partition_session_status_response',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.PartitionSessionStatusResponse',
      '9': 0,
      '10': 'partitionSessionStatusResponse'
    },
    {
      '1': 'update_token_response',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.UpdateTokenResponse',
      '9': 0,
      '10': 'updateTokenResponse'
    },
    {
      '1': 'start_partition_session_request',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.StartPartitionSessionRequest',
      '9': 0,
      '10': 'startPartitionSessionRequest'
    },
    {
      '1': 'stop_partition_session_request',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.StopPartitionSessionRequest',
      '9': 0,
      '10': 'stopPartitionSessionRequest'
    },
    {
      '1': 'update_partition_session',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.UpdatePartitionSession',
      '9': 0,
      '10': 'updatePartitionSession'
    },
    {
      '1': 'end_partition_session',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.EndPartitionSession',
      '9': 0,
      '10': 'endPartitionSession'
    },
  ],
  '8': [
    {'1': 'server_message'},
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_InitRequest$json = {
  '1': 'InitRequest',
  '2': [
    {
      '1': 'topics_read_settings',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.InitRequest.TopicReadSettings',
      '10': 'topicsReadSettings'
    },
    {'1': 'consumer', '3': 2, '4': 1, '5': 9, '10': 'consumer'},
    {'1': 'reader_name', '3': 3, '4': 1, '5': 9, '10': 'readerName'},
    {'1': 'direct_read', '3': 4, '4': 1, '5': 8, '10': 'directRead'},
    {
      '1': 'auto_partitioning_support',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'autoPartitioningSupport'
    },
  ],
  '3': [StreamReadMessage_InitRequest_TopicReadSettings$json],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_InitRequest_TopicReadSettings$json = {
  '1': 'TopicReadSettings',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'partition_ids', '3': 2, '4': 3, '5': 3, '10': 'partitionIds'},
    {
      '1': 'max_lag',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'maxLag'
    },
    {
      '1': 'read_from',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'readFrom'
    },
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_InitResponse$json = {
  '1': 'InitResponse',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_ReadRequest$json = {
  '1': 'ReadRequest',
  '2': [
    {'1': 'bytes_size', '3': 1, '4': 1, '5': 3, '10': 'bytesSize'},
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_ReadResponse$json = {
  '1': 'ReadResponse',
  '2': [
    {
      '1': 'partition_data',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.ReadResponse.PartitionData',
      '10': 'partitionData'
    },
    {'1': 'bytes_size', '3': 2, '4': 1, '5': 3, '10': 'bytesSize'},
  ],
  '3': [
    StreamReadMessage_ReadResponse_MessageData$json,
    StreamReadMessage_ReadResponse_Batch$json,
    StreamReadMessage_ReadResponse_PartitionData$json
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_ReadResponse_MessageData$json = {
  '1': 'MessageData',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'seq_no', '3': 2, '4': 1, '5': 3, '10': 'seqNo'},
    {
      '1': 'created_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    {'1': 'data', '3': 5, '4': 1, '5': 12, '10': 'data'},
    {
      '1': 'uncompressed_size',
      '3': 6,
      '4': 1,
      '5': 3,
      '10': 'uncompressedSize'
    },
    {
      '1': 'message_group_id',
      '3': 7,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'messageGroupId'
    },
    {
      '1': 'metadata_items',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.MetadataItem',
      '10': 'metadataItems'
    },
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_ReadResponse_Batch$json = {
  '1': 'Batch',
  '2': [
    {
      '1': 'message_data',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.ReadResponse.MessageData',
      '10': 'messageData'
    },
    {'1': 'producer_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'producerId'},
    {
      '1': 'write_session_meta',
      '3': 3,
      '4': 3,
      '5': 11,
      '6':
          '.Ydb.Topic.StreamReadMessage.ReadResponse.Batch.WriteSessionMetaEntry',
      '10': 'writeSessionMeta'
    },
    {'1': 'codec', '3': 4, '4': 1, '5': 5, '10': 'codec'},
    {
      '1': 'written_at',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'writtenAt'
    },
  ],
  '3': [StreamReadMessage_ReadResponse_Batch_WriteSessionMetaEntry$json],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_ReadResponse_Batch_WriteSessionMetaEntry$json = {
  '1': 'WriteSessionMetaEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_ReadResponse_PartitionData$json = {
  '1': 'PartitionData',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {
      '1': 'batches',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.ReadResponse.Batch',
      '10': 'batches'
    },
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_CommitOffsetRequest$json = {
  '1': 'CommitOffsetRequest',
  '2': [
    {
      '1': 'commit_offsets',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.Ydb.Topic.StreamReadMessage.CommitOffsetRequest.PartitionCommitOffset',
      '10': 'commitOffsets'
    },
  ],
  '3': [StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset$json],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset$json = {
  '1': 'PartitionCommitOffset',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {
      '1': 'offsets',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.OffsetsRange',
      '10': 'offsets'
    },
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_CommitOffsetResponse$json = {
  '1': 'CommitOffsetResponse',
  '2': [
    {
      '1': 'partitions_committed_offsets',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.Ydb.Topic.StreamReadMessage.CommitOffsetResponse.PartitionCommittedOffset',
      '10': 'partitionsCommittedOffsets'
    },
  ],
  '3': [StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset$json],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset$json = {
  '1': 'PartitionCommittedOffset',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {'1': 'committed_offset', '3': 2, '4': 1, '5': 3, '10': 'committedOffset'},
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_PartitionSessionStatusRequest$json = {
  '1': 'PartitionSessionStatusRequest',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_PartitionSessionStatusResponse$json = {
  '1': 'PartitionSessionStatusResponse',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {
      '1': 'partition_offsets',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.OffsetsRange',
      '10': 'partitionOffsets'
    },
    {'1': 'committed_offset', '3': 3, '4': 1, '5': 3, '10': 'committedOffset'},
    {
      '1': 'write_time_high_watermark',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'writeTimeHighWatermark'
    },
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_StartPartitionSessionRequest$json = {
  '1': 'StartPartitionSessionRequest',
  '2': [
    {
      '1': 'partition_session',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.PartitionSession',
      '10': 'partitionSession'
    },
    {'1': 'committed_offset', '3': 2, '4': 1, '5': 3, '10': 'committedOffset'},
    {
      '1': 'partition_offsets',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.OffsetsRange',
      '10': 'partitionOffsets'
    },
    {
      '1': 'partition_location',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.PartitionLocation',
      '10': 'partitionLocation'
    },
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_StartPartitionSessionResponse$json = {
  '1': 'StartPartitionSessionResponse',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {
      '1': 'read_offset',
      '3': 2,
      '4': 1,
      '5': 3,
      '9': 0,
      '10': 'readOffset',
      '17': true
    },
    {
      '1': 'commit_offset',
      '3': 3,
      '4': 1,
      '5': 3,
      '9': 1,
      '10': 'commitOffset',
      '17': true
    },
  ],
  '8': [
    {'1': '_read_offset'},
    {'1': '_commit_offset'},
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_StopPartitionSessionRequest$json = {
  '1': 'StopPartitionSessionRequest',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {'1': 'graceful', '3': 2, '4': 1, '5': 8, '10': 'graceful'},
    {'1': 'committed_offset', '3': 3, '4': 1, '5': 3, '10': 'committedOffset'},
    {
      '1': 'last_direct_read_id',
      '3': 4,
      '4': 1,
      '5': 3,
      '10': 'lastDirectReadId'
    },
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_StopPartitionSessionResponse$json = {
  '1': 'StopPartitionSessionResponse',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {'1': 'graceful', '3': 2, '4': 1, '5': 8, '10': 'graceful'},
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_UpdatePartitionSession$json = {
  '1': 'UpdatePartitionSession',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {
      '1': 'partition_location',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.PartitionLocation',
      '10': 'partitionLocation'
    },
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_DirectReadAck$json = {
  '1': 'DirectReadAck',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {'1': 'direct_read_id', '3': 2, '4': 1, '5': 3, '10': 'directReadId'},
  ],
};

@$core.Deprecated('Use streamReadMessageDescriptor instead')
const StreamReadMessage_EndPartitionSession$json = {
  '1': 'EndPartitionSession',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {
      '1': 'adjacent_partition_ids',
      '3': 2,
      '4': 3,
      '5': 3,
      '10': 'adjacentPartitionIds'
    },
    {
      '1': 'child_partition_ids',
      '3': 3,
      '4': 3,
      '5': 3,
      '10': 'childPartitionIds'
    },
  ],
};

/// Descriptor for `StreamReadMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamReadMessageDescriptor = $convert.base64Decode(
    'ChFTdHJlYW1SZWFkTWVzc2FnZRp7ChBQYXJ0aXRpb25TZXNzaW9uEjAKFHBhcnRpdGlvbl9zZX'
    'NzaW9uX2lkGAEgASgDUhJwYXJ0aXRpb25TZXNzaW9uSWQSEgoEcGF0aBgCIAEoCVIEcGF0aBIh'
    'CgxwYXJ0aXRpb25faWQYAyABKANSC3BhcnRpdGlvbklkGuIGCgpGcm9tQ2xpZW50Ek0KDGluaX'
    'RfcmVxdWVzdBgBIAEoCzIoLllkYi5Ub3BpYy5TdHJlYW1SZWFkTWVzc2FnZS5Jbml0UmVxdWVz'
    'dEgAUgtpbml0UmVxdWVzdBJNCgxyZWFkX3JlcXVlc3QYAiABKAsyKC5ZZGIuVG9waWMuU3RyZW'
    'FtUmVhZE1lc3NhZ2UuUmVhZFJlcXVlc3RIAFILcmVhZFJlcXVlc3QSZgoVY29tbWl0X29mZnNl'
    'dF9yZXF1ZXN0GAMgASgLMjAuWWRiLlRvcGljLlN0cmVhbVJlYWRNZXNzYWdlLkNvbW1pdE9mZn'
    'NldFJlcXVlc3RIAFITY29tbWl0T2Zmc2V0UmVxdWVzdBKFAQogcGFydGl0aW9uX3Nlc3Npb25f'
    'c3RhdHVzX3JlcXVlc3QYBCABKAsyOi5ZZGIuVG9waWMuU3RyZWFtUmVhZE1lc3NhZ2UuUGFydG'
    'l0aW9uU2Vzc2lvblN0YXR1c1JlcXVlc3RIAFIdcGFydGl0aW9uU2Vzc2lvblN0YXR1c1JlcXVl'
    'c3QSUQoUdXBkYXRlX3Rva2VuX3JlcXVlc3QYBSABKAsyHS5ZZGIuVG9waWMuVXBkYXRlVG9rZW'
    '5SZXF1ZXN0SABSEnVwZGF0ZVRva2VuUmVxdWVzdBJUCg9kaXJlY3RfcmVhZF9hY2sYCCABKAsy'
    'Ki5ZZGIuVG9waWMuU3RyZWFtUmVhZE1lc3NhZ2UuRGlyZWN0UmVhZEFja0gAUg1kaXJlY3RSZW'
    'FkQWNrEoUBCiBzdGFydF9wYXJ0aXRpb25fc2Vzc2lvbl9yZXNwb25zZRgGIAEoCzI6LllkYi5U'
    'b3BpYy5TdHJlYW1SZWFkTWVzc2FnZS5TdGFydFBhcnRpdGlvblNlc3Npb25SZXNwb25zZUgAUh'
    '1zdGFydFBhcnRpdGlvblNlc3Npb25SZXNwb25zZRKCAQofc3RvcF9wYXJ0aXRpb25fc2Vzc2lv'
    'bl9yZXNwb25zZRgHIAEoCzI5LllkYi5Ub3BpYy5TdHJlYW1SZWFkTWVzc2FnZS5TdG9wUGFydG'
    'l0aW9uU2Vzc2lvblJlc3BvbnNlSABSHHN0b3BQYXJ0aXRpb25TZXNzaW9uUmVzcG9uc2VCEAoO'
    'Y2xpZW50X21lc3NhZ2Ua0QgKCkZyb21TZXJ2ZXISMQoGc3RhdHVzGAEgASgOMhkuWWRiLlN0YX'
    'R1c0lkcy5TdGF0dXNDb2RlUgZzdGF0dXMSLwoGaXNzdWVzGAIgAygLMhcuWWRiLklzc3VlLklz'
    'c3VlTWVzc2FnZVIGaXNzdWVzElAKDWluaXRfcmVzcG9uc2UYAyABKAsyKS5ZZGIuVG9waWMuU3'
    'RyZWFtUmVhZE1lc3NhZ2UuSW5pdFJlc3BvbnNlSABSDGluaXRSZXNwb25zZRJQCg1yZWFkX3Jl'
    'c3BvbnNlGAQgASgLMikuWWRiLlRvcGljLlN0cmVhbVJlYWRNZXNzYWdlLlJlYWRSZXNwb25zZU'
    'gAUgxyZWFkUmVzcG9uc2USaQoWY29tbWl0X29mZnNldF9yZXNwb25zZRgFIAEoCzIxLllkYi5U'
    'b3BpYy5TdHJlYW1SZWFkTWVzc2FnZS5Db21taXRPZmZzZXRSZXNwb25zZUgAUhRjb21taXRPZm'
    'ZzZXRSZXNwb25zZRKIAQohcGFydGl0aW9uX3Nlc3Npb25fc3RhdHVzX3Jlc3BvbnNlGAYgASgL'
    'MjsuWWRiLlRvcGljLlN0cmVhbVJlYWRNZXNzYWdlLlBhcnRpdGlvblNlc3Npb25TdGF0dXNSZX'
    'Nwb25zZUgAUh5wYXJ0aXRpb25TZXNzaW9uU3RhdHVzUmVzcG9uc2USVAoVdXBkYXRlX3Rva2Vu'
    'X3Jlc3BvbnNlGAcgASgLMh4uWWRiLlRvcGljLlVwZGF0ZVRva2VuUmVzcG9uc2VIAFITdXBkYX'
    'RlVG9rZW5SZXNwb25zZRKCAQofc3RhcnRfcGFydGl0aW9uX3Nlc3Npb25fcmVxdWVzdBgIIAEo'
    'CzI5LllkYi5Ub3BpYy5TdHJlYW1SZWFkTWVzc2FnZS5TdGFydFBhcnRpdGlvblNlc3Npb25SZX'
    'F1ZXN0SABSHHN0YXJ0UGFydGl0aW9uU2Vzc2lvblJlcXVlc3QSfwoec3RvcF9wYXJ0aXRpb25f'
    'c2Vzc2lvbl9yZXF1ZXN0GAkgASgLMjguWWRiLlRvcGljLlN0cmVhbVJlYWRNZXNzYWdlLlN0b3'
    'BQYXJ0aXRpb25TZXNzaW9uUmVxdWVzdEgAUhtzdG9wUGFydGl0aW9uU2Vzc2lvblJlcXVlc3QS'
    'bwoYdXBkYXRlX3BhcnRpdGlvbl9zZXNzaW9uGAogASgLMjMuWWRiLlRvcGljLlN0cmVhbVJlYW'
    'RNZXNzYWdlLlVwZGF0ZVBhcnRpdGlvblNlc3Npb25IAFIWdXBkYXRlUGFydGl0aW9uU2Vzc2lv'
    'bhJmChVlbmRfcGFydGl0aW9uX3Nlc3Npb24YCyABKAsyMC5ZZGIuVG9waWMuU3RyZWFtUmVhZE'
    '1lc3NhZ2UuRW5kUGFydGl0aW9uU2Vzc2lvbkgAUhNlbmRQYXJ0aXRpb25TZXNzaW9uQhAKDnNl'
    'cnZlcl9tZXNzYWdlGtEDCgtJbml0UmVxdWVzdBJsChR0b3BpY3NfcmVhZF9zZXR0aW5ncxgBIA'
    'MoCzI6LllkYi5Ub3BpYy5TdHJlYW1SZWFkTWVzc2FnZS5Jbml0UmVxdWVzdC5Ub3BpY1JlYWRT'
    'ZXR0aW5nc1ISdG9waWNzUmVhZFNldHRpbmdzEhoKCGNvbnN1bWVyGAIgASgJUghjb25zdW1lch'
    'IfCgtyZWFkZXJfbmFtZRgDIAEoCVIKcmVhZGVyTmFtZRIfCgtkaXJlY3RfcmVhZBgEIAEoCFIK'
    'ZGlyZWN0UmVhZBI6ChlhdXRvX3BhcnRpdGlvbmluZ19zdXBwb3J0GAUgASgIUhdhdXRvUGFydG'
    'l0aW9uaW5nU3VwcG9ydBq5AQoRVG9waWNSZWFkU2V0dGluZ3MSEgoEcGF0aBgBIAEoCVIEcGF0'
    'aBIjCg1wYXJ0aXRpb25faWRzGAIgAygDUgxwYXJ0aXRpb25JZHMSMgoHbWF4X2xhZxgDIAEoCz'
    'IZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIGbWF4TGFnEjcKCXJlYWRfZnJvbRgEIAEoCzIa'
    'Lmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCHJlYWRGcm9tGi0KDEluaXRSZXNwb25zZRIdCg'
    'pzZXNzaW9uX2lkGAEgASgJUglzZXNzaW9uSWQaLAoLUmVhZFJlcXVlc3QSHQoKYnl0ZXNfc2l6'
    'ZRgBIAEoA1IJYnl0ZXNTaXplGuMHCgxSZWFkUmVzcG9uc2USXgoOcGFydGl0aW9uX2RhdGEYAS'
    'ADKAsyNy5ZZGIuVG9waWMuU3RyZWFtUmVhZE1lc3NhZ2UuUmVhZFJlc3BvbnNlLlBhcnRpdGlv'
    'bkRhdGFSDXBhcnRpdGlvbkRhdGESHQoKYnl0ZXNfc2l6ZRgCIAEoA1IJYnl0ZXNTaXplGqsCCg'
    'tNZXNzYWdlRGF0YRIWCgZvZmZzZXQYASABKANSBm9mZnNldBIVCgZzZXFfbm8YAiABKANSBXNl'
    'cU5vEjkKCmNyZWF0ZWRfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcm'
    'VhdGVkQXQSEgoEZGF0YRgFIAEoDFIEZGF0YRIrChF1bmNvbXByZXNzZWRfc2l6ZRgGIAEoA1IQ'
    'dW5jb21wcmVzc2VkU2l6ZRIxChBtZXNzYWdlX2dyb3VwX2lkGAcgASgJQgei5ioDGIAQUg5tZX'
    'NzYWdlR3JvdXBJZBI+Cg5tZXRhZGF0YV9pdGVtcxgIIAMoCzIXLllkYi5Ub3BpYy5NZXRhZGF0'
    'YUl0ZW1SDW1ldGFkYXRhSXRlbXMalgMKBUJhdGNoElgKDG1lc3NhZ2VfZGF0YRgBIAMoCzI1Ll'
    'lkYi5Ub3BpYy5TdHJlYW1SZWFkTWVzc2FnZS5SZWFkUmVzcG9uc2UuTWVzc2FnZURhdGFSC21l'
    'c3NhZ2VEYXRhEigKC3Byb2R1Y2VyX2lkGAIgASgJQgei5ioDGIAQUgpwcm9kdWNlcklkEnMKEn'
    'dyaXRlX3Nlc3Npb25fbWV0YRgDIAMoCzJFLllkYi5Ub3BpYy5TdHJlYW1SZWFkTWVzc2FnZS5S'
    'ZWFkUmVzcG9uc2UuQmF0Y2guV3JpdGVTZXNzaW9uTWV0YUVudHJ5UhB3cml0ZVNlc3Npb25NZX'
    'RhEhQKBWNvZGVjGAQgASgFUgVjb2RlYxI5Cgp3cml0dGVuX2F0GAUgASgLMhouZ29vZ2xlLnBy'
    'b3RvYnVmLlRpbWVzdGFtcFIJd3JpdHRlbkF0GkMKFVdyaXRlU2Vzc2lvbk1ldGFFbnRyeRIQCg'
    'NrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGowBCg1QYXJ0aXRpb25E'
    'YXRhEjAKFHBhcnRpdGlvbl9zZXNzaW9uX2lkGAEgASgDUhJwYXJ0aXRpb25TZXNzaW9uSWQSSQ'
    'oHYmF0Y2hlcxgCIAMoCzIvLllkYi5Ub3BpYy5TdHJlYW1SZWFkTWVzc2FnZS5SZWFkUmVzcG9u'
    'c2UuQmF0Y2hSB2JhdGNoZXMaggIKE0NvbW1pdE9mZnNldFJlcXVlc3QSbQoOY29tbWl0X29mZn'
    'NldHMYASADKAsyRi5ZZGIuVG9waWMuU3RyZWFtUmVhZE1lc3NhZ2UuQ29tbWl0T2Zmc2V0UmVx'
    'dWVzdC5QYXJ0aXRpb25Db21taXRPZmZzZXRSDWNvbW1pdE9mZnNldHMafAoVUGFydGl0aW9uQ2'
    '9tbWl0T2Zmc2V0EjAKFHBhcnRpdGlvbl9zZXNzaW9uX2lkGAEgASgDUhJwYXJ0aXRpb25TZXNz'
    'aW9uSWQSMQoHb2Zmc2V0cxgCIAMoCzIXLllkYi5Ub3BpYy5PZmZzZXRzUmFuZ2VSB29mZnNldH'
    'MangIKFENvbW1pdE9mZnNldFJlc3BvbnNlEowBChxwYXJ0aXRpb25zX2NvbW1pdHRlZF9vZmZz'
    'ZXRzGAEgAygLMkouWWRiLlRvcGljLlN0cmVhbVJlYWRNZXNzYWdlLkNvbW1pdE9mZnNldFJlc3'
    'BvbnNlLlBhcnRpdGlvbkNvbW1pdHRlZE9mZnNldFIacGFydGl0aW9uc0NvbW1pdHRlZE9mZnNl'
    'dHMadwoYUGFydGl0aW9uQ29tbWl0dGVkT2Zmc2V0EjAKFHBhcnRpdGlvbl9zZXNzaW9uX2lkGA'
    'EgASgDUhJwYXJ0aXRpb25TZXNzaW9uSWQSKQoQY29tbWl0dGVkX29mZnNldBgCIAEoA1IPY29t'
    'bWl0dGVkT2Zmc2V0GlEKHVBhcnRpdGlvblNlc3Npb25TdGF0dXNSZXF1ZXN0EjAKFHBhcnRpdG'
    'lvbl9zZXNzaW9uX2lkGAEgASgDUhJwYXJ0aXRpb25TZXNzaW9uSWQamgIKHlBhcnRpdGlvblNl'
    'c3Npb25TdGF0dXNSZXNwb25zZRIwChRwYXJ0aXRpb25fc2Vzc2lvbl9pZBgBIAEoA1IScGFydG'
    'l0aW9uU2Vzc2lvbklkEkQKEXBhcnRpdGlvbl9vZmZzZXRzGAIgASgLMhcuWWRiLlRvcGljLk9m'
    'ZnNldHNSYW5nZVIQcGFydGl0aW9uT2Zmc2V0cxIpChBjb21taXR0ZWRfb2Zmc2V0GAMgASgDUg'
    '9jb21taXR0ZWRPZmZzZXQSVQoZd3JpdGVfdGltZV9oaWdoX3dhdGVybWFyaxgEIAEoCzIaLmdv'
    'b2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSFndyaXRlVGltZUhpZ2hXYXRlcm1hcmsauAIKHFN0YX'
    'J0UGFydGl0aW9uU2Vzc2lvblJlcXVlc3QSWgoRcGFydGl0aW9uX3Nlc3Npb24YASABKAsyLS5Z'
    'ZGIuVG9waWMuU3RyZWFtUmVhZE1lc3NhZ2UuUGFydGl0aW9uU2Vzc2lvblIQcGFydGl0aW9uU2'
    'Vzc2lvbhIpChBjb21taXR0ZWRfb2Zmc2V0GAIgASgDUg9jb21taXR0ZWRPZmZzZXQSRAoRcGFy'
    'dGl0aW9uX29mZnNldHMYAyABKAsyFy5ZZGIuVG9waWMuT2Zmc2V0c1JhbmdlUhBwYXJ0aXRpb2'
    '5PZmZzZXRzEksKEnBhcnRpdGlvbl9sb2NhdGlvbhgEIAEoCzIcLllkYi5Ub3BpYy5QYXJ0aXRp'
    'b25Mb2NhdGlvblIRcGFydGl0aW9uTG9jYXRpb24awwEKHVN0YXJ0UGFydGl0aW9uU2Vzc2lvbl'
    'Jlc3BvbnNlEjAKFHBhcnRpdGlvbl9zZXNzaW9uX2lkGAEgASgDUhJwYXJ0aXRpb25TZXNzaW9u'
    'SWQSJAoLcmVhZF9vZmZzZXQYAiABKANIAFIKcmVhZE9mZnNldIgBARIoCg1jb21taXRfb2Zmc2'
    'V0GAMgASgDSAFSDGNvbW1pdE9mZnNldIgBAUIOCgxfcmVhZF9vZmZzZXRCEAoOX2NvbW1pdF9v'
    'ZmZzZXQaxQEKG1N0b3BQYXJ0aXRpb25TZXNzaW9uUmVxdWVzdBIwChRwYXJ0aXRpb25fc2Vzc2'
    'lvbl9pZBgBIAEoA1IScGFydGl0aW9uU2Vzc2lvbklkEhoKCGdyYWNlZnVsGAIgASgIUghncmFj'
    'ZWZ1bBIpChBjb21taXR0ZWRfb2Zmc2V0GAMgASgDUg9jb21taXR0ZWRPZmZzZXQSLQoTbGFzdF'
    '9kaXJlY3RfcmVhZF9pZBgEIAEoA1IQbGFzdERpcmVjdFJlYWRJZBpsChxTdG9wUGFydGl0aW9u'
    'U2Vzc2lvblJlc3BvbnNlEjAKFHBhcnRpdGlvbl9zZXNzaW9uX2lkGAEgASgDUhJwYXJ0aXRpb2'
    '5TZXNzaW9uSWQSGgoIZ3JhY2VmdWwYAiABKAhSCGdyYWNlZnVsGpcBChZVcGRhdGVQYXJ0aXRp'
    'b25TZXNzaW9uEjAKFHBhcnRpdGlvbl9zZXNzaW9uX2lkGAEgASgDUhJwYXJ0aXRpb25TZXNzaW'
    '9uSWQSSwoScGFydGl0aW9uX2xvY2F0aW9uGAIgASgLMhwuWWRiLlRvcGljLlBhcnRpdGlvbkxv'
    'Y2F0aW9uUhFwYXJ0aXRpb25Mb2NhdGlvbhpnCg1EaXJlY3RSZWFkQWNrEjAKFHBhcnRpdGlvbl'
    '9zZXNzaW9uX2lkGAEgASgDUhJwYXJ0aXRpb25TZXNzaW9uSWQSJAoOZGlyZWN0X3JlYWRfaWQY'
    'AiABKANSDGRpcmVjdFJlYWRJZBqtAQoTRW5kUGFydGl0aW9uU2Vzc2lvbhIwChRwYXJ0aXRpb2'
    '5fc2Vzc2lvbl9pZBgBIAEoA1IScGFydGl0aW9uU2Vzc2lvbklkEjQKFmFkamFjZW50X3BhcnRp'
    'dGlvbl9pZHMYAiADKANSFGFkamFjZW50UGFydGl0aW9uSWRzEi4KE2NoaWxkX3BhcnRpdGlvbl'
    '9pZHMYAyADKANSEWNoaWxkUGFydGl0aW9uSWRz');

@$core.Deprecated('Use streamDirectReadMessageDescriptor instead')
const StreamDirectReadMessage$json = {
  '1': 'StreamDirectReadMessage',
  '3': [
    StreamDirectReadMessage_FromClient$json,
    StreamDirectReadMessage_FromServer$json,
    StreamDirectReadMessage_InitRequest$json,
    StreamDirectReadMessage_InitResponse$json,
    StreamDirectReadMessage_StartDirectReadPartitionSessionRequest$json,
    StreamDirectReadMessage_StartDirectReadPartitionSessionResponse$json,
    StreamDirectReadMessage_StopDirectReadPartitionSession$json,
    StreamDirectReadMessage_DirectReadResponse$json
  ],
};

@$core.Deprecated('Use streamDirectReadMessageDescriptor instead')
const StreamDirectReadMessage_FromClient$json = {
  '1': 'FromClient',
  '2': [
    {
      '1': 'init_request',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamDirectReadMessage.InitRequest',
      '9': 0,
      '10': 'initRequest'
    },
    {
      '1': 'start_direct_read_partition_session_request',
      '3': 2,
      '4': 1,
      '5': 11,
      '6':
          '.Ydb.Topic.StreamDirectReadMessage.StartDirectReadPartitionSessionRequest',
      '9': 0,
      '10': 'startDirectReadPartitionSessionRequest'
    },
    {
      '1': 'update_token_request',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.UpdateTokenRequest',
      '9': 0,
      '10': 'updateTokenRequest'
    },
  ],
  '8': [
    {'1': 'client_message'},
  ],
};

@$core.Deprecated('Use streamDirectReadMessageDescriptor instead')
const StreamDirectReadMessage_FromServer$json = {
  '1': 'FromServer',
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
      '1': 'init_response',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamDirectReadMessage.InitResponse',
      '9': 0,
      '10': 'initResponse'
    },
    {
      '1': 'start_direct_read_partition_session_response',
      '3': 7,
      '4': 1,
      '5': 11,
      '6':
          '.Ydb.Topic.StreamDirectReadMessage.StartDirectReadPartitionSessionResponse',
      '9': 0,
      '10': 'startDirectReadPartitionSessionResponse'
    },
    {
      '1': 'stop_direct_read_partition_session',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamDirectReadMessage.StopDirectReadPartitionSession',
      '9': 0,
      '10': 'stopDirectReadPartitionSession'
    },
    {
      '1': 'direct_read_response',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamDirectReadMessage.DirectReadResponse',
      '9': 0,
      '10': 'directReadResponse'
    },
    {
      '1': 'update_token_response',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.UpdateTokenResponse',
      '9': 0,
      '10': 'updateTokenResponse'
    },
  ],
  '8': [
    {'1': 'server_message'},
  ],
};

@$core.Deprecated('Use streamDirectReadMessageDescriptor instead')
const StreamDirectReadMessage_InitRequest$json = {
  '1': 'InitRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'topics_read_settings',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.StreamDirectReadMessage.InitRequest.TopicReadSettings',
      '10': 'topicsReadSettings'
    },
    {'1': 'consumer', '3': 3, '4': 1, '5': 9, '10': 'consumer'},
  ],
  '3': [StreamDirectReadMessage_InitRequest_TopicReadSettings$json],
};

@$core.Deprecated('Use streamDirectReadMessageDescriptor instead')
const StreamDirectReadMessage_InitRequest_TopicReadSettings$json = {
  '1': 'TopicReadSettings',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
  ],
};

@$core.Deprecated('Use streamDirectReadMessageDescriptor instead')
const StreamDirectReadMessage_InitResponse$json = {
  '1': 'InitResponse',
};

@$core.Deprecated('Use streamDirectReadMessageDescriptor instead')
const StreamDirectReadMessage_StartDirectReadPartitionSessionRequest$json = {
  '1': 'StartDirectReadPartitionSessionRequest',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {
      '1': 'last_direct_read_id',
      '3': 2,
      '4': 1,
      '5': 3,
      '10': 'lastDirectReadId'
    },
    {'1': 'generation', '3': 3, '4': 1, '5': 3, '10': 'generation'},
  ],
};

@$core.Deprecated('Use streamDirectReadMessageDescriptor instead')
const StreamDirectReadMessage_StartDirectReadPartitionSessionResponse$json = {
  '1': 'StartDirectReadPartitionSessionResponse',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {'1': 'generation', '3': 2, '4': 1, '5': 3, '10': 'generation'},
  ],
};

@$core.Deprecated('Use streamDirectReadMessageDescriptor instead')
const StreamDirectReadMessage_StopDirectReadPartitionSession$json = {
  '1': 'StopDirectReadPartitionSession',
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
      '1': 'partition_session_id',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {'1': 'generation', '3': 4, '4': 1, '5': 3, '10': 'generation'},
  ],
};

@$core.Deprecated('Use streamDirectReadMessageDescriptor instead')
const StreamDirectReadMessage_DirectReadResponse$json = {
  '1': 'DirectReadResponse',
  '2': [
    {
      '1': 'partition_session_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'partitionSessionId'
    },
    {'1': 'direct_read_id', '3': 2, '4': 1, '5': 3, '10': 'directReadId'},
    {
      '1': 'partition_data',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.StreamReadMessage.ReadResponse.PartitionData',
      '10': 'partitionData'
    },
    {'1': 'bytes_size', '3': 4, '4': 1, '5': 3, '10': 'bytesSize'},
  ],
};

/// Descriptor for `StreamDirectReadMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamDirectReadMessageDescriptor = $convert.base64Decode(
    'ChdTdHJlYW1EaXJlY3RSZWFkTWVzc2FnZRrxAgoKRnJvbUNsaWVudBJTCgxpbml0X3JlcXVlc3'
    'QYASABKAsyLi5ZZGIuVG9waWMuU3RyZWFtRGlyZWN0UmVhZE1lc3NhZ2UuSW5pdFJlcXVlc3RI'
    'AFILaW5pdFJlcXVlc3QSqAEKK3N0YXJ0X2RpcmVjdF9yZWFkX3BhcnRpdGlvbl9zZXNzaW9uX3'
    'JlcXVlc3QYAiABKAsySS5ZZGIuVG9waWMuU3RyZWFtRGlyZWN0UmVhZE1lc3NhZ2UuU3RhcnRE'
    'aXJlY3RSZWFkUGFydGl0aW9uU2Vzc2lvblJlcXVlc3RIAFImc3RhcnREaXJlY3RSZWFkUGFydG'
    'l0aW9uU2Vzc2lvblJlcXVlc3QSUQoUdXBkYXRlX3Rva2VuX3JlcXVlc3QYAyABKAsyHS5ZZGIu'
    'VG9waWMuVXBkYXRlVG9rZW5SZXF1ZXN0SABSEnVwZGF0ZVRva2VuUmVxdWVzdEIQCg5jbGllbn'
    'RfbWVzc2FnZRrbBQoKRnJvbVNlcnZlchIxCgZzdGF0dXMYASABKA4yGS5ZZGIuU3RhdHVzSWRz'
    'LlN0YXR1c0NvZGVSBnN0YXR1cxIvCgZpc3N1ZXMYAiADKAsyFy5ZZGIuSXNzdWUuSXNzdWVNZX'
    'NzYWdlUgZpc3N1ZXMSVgoNaW5pdF9yZXNwb25zZRgGIAEoCzIvLllkYi5Ub3BpYy5TdHJlYW1E'
    'aXJlY3RSZWFkTWVzc2FnZS5Jbml0UmVzcG9uc2VIAFIMaW5pdFJlc3BvbnNlEqsBCixzdGFydF'
    '9kaXJlY3RfcmVhZF9wYXJ0aXRpb25fc2Vzc2lvbl9yZXNwb25zZRgHIAEoCzJKLllkYi5Ub3Bp'
    'Yy5TdHJlYW1EaXJlY3RSZWFkTWVzc2FnZS5TdGFydERpcmVjdFJlYWRQYXJ0aXRpb25TZXNzaW'
    '9uUmVzcG9uc2VIAFInc3RhcnREaXJlY3RSZWFkUGFydGl0aW9uU2Vzc2lvblJlc3BvbnNlEo8B'
    'CiJzdG9wX2RpcmVjdF9yZWFkX3BhcnRpdGlvbl9zZXNzaW9uGAMgASgLMkEuWWRiLlRvcGljLl'
    'N0cmVhbURpcmVjdFJlYWRNZXNzYWdlLlN0b3BEaXJlY3RSZWFkUGFydGl0aW9uU2Vzc2lvbkgA'
    'Uh5zdG9wRGlyZWN0UmVhZFBhcnRpdGlvblNlc3Npb24SaQoUZGlyZWN0X3JlYWRfcmVzcG9uc2'
    'UYBCABKAsyNS5ZZGIuVG9waWMuU3RyZWFtRGlyZWN0UmVhZE1lc3NhZ2UuRGlyZWN0UmVhZFJl'
    'c3BvbnNlSABSEmRpcmVjdFJlYWRSZXNwb25zZRJUChV1cGRhdGVfdG9rZW5fcmVzcG9uc2UYBS'
    'ABKAsyHi5ZZGIuVG9waWMuVXBkYXRlVG9rZW5SZXNwb25zZUgAUhN1cGRhdGVUb2tlblJlc3Bv'
    'bnNlQhAKDnNlcnZlcl9tZXNzYWdlGuUBCgtJbml0UmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgAS'
    'gJUglzZXNzaW9uSWQScgoUdG9waWNzX3JlYWRfc2V0dGluZ3MYAiADKAsyQC5ZZGIuVG9waWMu'
    'U3RyZWFtRGlyZWN0UmVhZE1lc3NhZ2UuSW5pdFJlcXVlc3QuVG9waWNSZWFkU2V0dGluZ3NSEn'
    'RvcGljc1JlYWRTZXR0aW5ncxIaCghjb25zdW1lchgDIAEoCVIIY29uc3VtZXIaJwoRVG9waWNS'
    'ZWFkU2V0dGluZ3MSEgoEcGF0aBgBIAEoCVIEcGF0aBoOCgxJbml0UmVzcG9uc2UaqQEKJlN0YX'
    'J0RGlyZWN0UmVhZFBhcnRpdGlvblNlc3Npb25SZXF1ZXN0EjAKFHBhcnRpdGlvbl9zZXNzaW9u'
    'X2lkGAEgASgDUhJwYXJ0aXRpb25TZXNzaW9uSWQSLQoTbGFzdF9kaXJlY3RfcmVhZF9pZBgCIA'
    'EoA1IQbGFzdERpcmVjdFJlYWRJZBIeCgpnZW5lcmF0aW9uGAMgASgDUgpnZW5lcmF0aW9uGnsK'
    'J1N0YXJ0RGlyZWN0UmVhZFBhcnRpdGlvblNlc3Npb25SZXNwb25zZRIwChRwYXJ0aXRpb25fc2'
    'Vzc2lvbl9pZBgBIAEoA1IScGFydGl0aW9uU2Vzc2lvbklkEh4KCmdlbmVyYXRpb24YAiABKANS'
    'CmdlbmVyYXRpb24a1gEKHlN0b3BEaXJlY3RSZWFkUGFydGl0aW9uU2Vzc2lvbhIxCgZzdGF0dX'
    'MYASABKA4yGS5ZZGIuU3RhdHVzSWRzLlN0YXR1c0NvZGVSBnN0YXR1cxIvCgZpc3N1ZXMYAiAD'
    'KAsyFy5ZZGIuSXNzdWUuSXNzdWVNZXNzYWdlUgZpc3N1ZXMSMAoUcGFydGl0aW9uX3Nlc3Npb2'
    '5faWQYAyABKANSEnBhcnRpdGlvblNlc3Npb25JZBIeCgpnZW5lcmF0aW9uGAQgASgDUgpnZW5l'
    'cmF0aW9uGusBChJEaXJlY3RSZWFkUmVzcG9uc2USMAoUcGFydGl0aW9uX3Nlc3Npb25faWQYAS'
    'ABKANSEnBhcnRpdGlvblNlc3Npb25JZBIkCg5kaXJlY3RfcmVhZF9pZBgCIAEoA1IMZGlyZWN0'
    'UmVhZElkEl4KDnBhcnRpdGlvbl9kYXRhGAMgASgLMjcuWWRiLlRvcGljLlN0cmVhbVJlYWRNZX'
    'NzYWdlLlJlYWRSZXNwb25zZS5QYXJ0aXRpb25EYXRhUg1wYXJ0aXRpb25EYXRhEh0KCmJ5dGVz'
    'X3NpemUYBCABKANSCWJ5dGVzU2l6ZQ==');

@$core.Deprecated('Use transactionIdentityDescriptor instead')
const TransactionIdentity$json = {
  '1': 'TransactionIdentity',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'session', '3': 2, '4': 1, '5': 9, '10': 'session'},
  ],
};

/// Descriptor for `TransactionIdentity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionIdentityDescriptor = $convert.base64Decode(
    'ChNUcmFuc2FjdGlvbklkZW50aXR5Eg4KAmlkGAEgASgJUgJpZBIYCgdzZXNzaW9uGAIgASgJUg'
    'dzZXNzaW9u');

@$core.Deprecated('Use updateOffsetsInTransactionRequestDescriptor instead')
const UpdateOffsetsInTransactionRequest$json = {
  '1': 'UpdateOffsetsInTransactionRequest',
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
      '1': 'tx',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.TransactionIdentity',
      '10': 'tx'
    },
    {
      '1': 'topics',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.UpdateOffsetsInTransactionRequest.TopicOffsets',
      '10': 'topics'
    },
    {'1': 'consumer', '3': 4, '4': 1, '5': 9, '10': 'consumer'},
  ],
  '3': [UpdateOffsetsInTransactionRequest_TopicOffsets$json],
};

@$core.Deprecated('Use updateOffsetsInTransactionRequestDescriptor instead')
const UpdateOffsetsInTransactionRequest_TopicOffsets$json = {
  '1': 'TopicOffsets',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {
      '1': 'partitions',
      '3': 2,
      '4': 3,
      '5': 11,
      '6':
          '.Ydb.Topic.UpdateOffsetsInTransactionRequest.TopicOffsets.PartitionOffsets',
      '10': 'partitions'
    },
  ],
  '3': [UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets$json],
};

@$core.Deprecated('Use updateOffsetsInTransactionRequestDescriptor instead')
const UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets$json = {
  '1': 'PartitionOffsets',
  '2': [
    {'1': 'partition_id', '3': 1, '4': 1, '5': 3, '10': 'partitionId'},
    {
      '1': 'partition_offsets',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.OffsetsRange',
      '10': 'partitionOffsets'
    },
  ],
};

/// Descriptor for `UpdateOffsetsInTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOffsetsInTransactionRequestDescriptor = $convert.base64Decode(
    'CiFVcGRhdGVPZmZzZXRzSW5UcmFuc2FjdGlvblJlcXVlc3QSSgoQb3BlcmF0aW9uX3BhcmFtcx'
    'gBIAEoCzIfLllkYi5PcGVyYXRpb25zLk9wZXJhdGlvblBhcmFtc1IPb3BlcmF0aW9uUGFyYW1z'
    'Ei4KAnR4GAIgASgLMh4uWWRiLlRvcGljLlRyYW5zYWN0aW9uSWRlbnRpdHlSAnR4ElEKBnRvcG'
    'ljcxgDIAMoCzI5LllkYi5Ub3BpYy5VcGRhdGVPZmZzZXRzSW5UcmFuc2FjdGlvblJlcXVlc3Qu'
    'VG9waWNPZmZzZXRzUgZ0b3BpY3MSGgoIY29uc3VtZXIYBCABKAlSCGNvbnN1bWVyGosCCgxUb3'
    'BpY09mZnNldHMSEgoEcGF0aBgBIAEoCVIEcGF0aBJqCgpwYXJ0aXRpb25zGAIgAygLMkouWWRi'
    'LlRvcGljLlVwZGF0ZU9mZnNldHNJblRyYW5zYWN0aW9uUmVxdWVzdC5Ub3BpY09mZnNldHMuUG'
    'FydGl0aW9uT2Zmc2V0c1IKcGFydGl0aW9ucxp7ChBQYXJ0aXRpb25PZmZzZXRzEiEKDHBhcnRp'
    'dGlvbl9pZBgBIAEoA1ILcGFydGl0aW9uSWQSRAoRcGFydGl0aW9uX29mZnNldHMYAiADKAsyFy'
    '5ZZGIuVG9waWMuT2Zmc2V0c1JhbmdlUhBwYXJ0aXRpb25PZmZzZXRz');

@$core.Deprecated('Use updateOffsetsInTransactionResponseDescriptor instead')
const UpdateOffsetsInTransactionResponse$json = {
  '1': 'UpdateOffsetsInTransactionResponse',
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

/// Descriptor for `UpdateOffsetsInTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOffsetsInTransactionResponseDescriptor =
    $convert.base64Decode(
        'CiJVcGRhdGVPZmZzZXRzSW5UcmFuc2FjdGlvblJlc3BvbnNlEjcKCW9wZXJhdGlvbhgBIAEoCz'
        'IZLllkYi5PcGVyYXRpb25zLk9wZXJhdGlvblIJb3BlcmF0aW9u');

@$core.Deprecated('Use updateOffsetsInTransactionResultDescriptor instead')
const UpdateOffsetsInTransactionResult$json = {
  '1': 'UpdateOffsetsInTransactionResult',
};

/// Descriptor for `UpdateOffsetsInTransactionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOffsetsInTransactionResultDescriptor =
    $convert.base64Decode('CiBVcGRhdGVPZmZzZXRzSW5UcmFuc2FjdGlvblJlc3VsdA==');

@$core.Deprecated('Use commitOffsetRequestDescriptor instead')
const CommitOffsetRequest$json = {
  '1': 'CommitOffsetRequest',
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
    {'1': 'partition_id', '3': 3, '4': 1, '5': 3, '10': 'partitionId'},
    {'1': 'consumer', '3': 4, '4': 1, '5': 9, '10': 'consumer'},
    {'1': 'offset', '3': 5, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'read_session_id', '3': 6, '4': 1, '5': 9, '10': 'readSessionId'},
  ],
};

/// Descriptor for `CommitOffsetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitOffsetRequestDescriptor = $convert.base64Decode(
    'ChNDb21taXRPZmZzZXRSZXF1ZXN0EkoKEG9wZXJhdGlvbl9wYXJhbXMYASABKAsyHy5ZZGIuT3'
    'BlcmF0aW9ucy5PcGVyYXRpb25QYXJhbXNSD29wZXJhdGlvblBhcmFtcxISCgRwYXRoGAIgASgJ'
    'UgRwYXRoEiEKDHBhcnRpdGlvbl9pZBgDIAEoA1ILcGFydGl0aW9uSWQSGgoIY29uc3VtZXIYBC'
    'ABKAlSCGNvbnN1bWVyEhYKBm9mZnNldBgFIAEoA1IGb2Zmc2V0EiYKD3JlYWRfc2Vzc2lvbl9p'
    'ZBgGIAEoCVINcmVhZFNlc3Npb25JZA==');

@$core.Deprecated('Use commitOffsetResponseDescriptor instead')
const CommitOffsetResponse$json = {
  '1': 'CommitOffsetResponse',
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

/// Descriptor for `CommitOffsetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitOffsetResponseDescriptor = $convert.base64Decode(
    'ChRDb21taXRPZmZzZXRSZXNwb25zZRI3CglvcGVyYXRpb24YASABKAsyGS5ZZGIuT3BlcmF0aW'
    '9ucy5PcGVyYXRpb25SCW9wZXJhdGlvbg==');

@$core.Deprecated('Use commitOffsetResultDescriptor instead')
const CommitOffsetResult$json = {
  '1': 'CommitOffsetResult',
};

/// Descriptor for `CommitOffsetResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitOffsetResultDescriptor =
    $convert.base64Decode('ChJDb21taXRPZmZzZXRSZXN1bHQ=');

@$core.Deprecated('Use multipleWindowsStatDescriptor instead')
const MultipleWindowsStat$json = {
  '1': 'MultipleWindowsStat',
  '2': [
    {'1': 'per_minute', '3': 1, '4': 1, '5': 3, '10': 'perMinute'},
    {'1': 'per_hour', '3': 2, '4': 1, '5': 3, '10': 'perHour'},
    {'1': 'per_day', '3': 3, '4': 1, '5': 3, '10': 'perDay'},
  ],
};

/// Descriptor for `MultipleWindowsStat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multipleWindowsStatDescriptor = $convert.base64Decode(
    'ChNNdWx0aXBsZVdpbmRvd3NTdGF0Eh0KCnBlcl9taW51dGUYASABKANSCXBlck1pbnV0ZRIZCg'
    'hwZXJfaG91chgCIAEoA1IHcGVySG91chIXCgdwZXJfZGF5GAMgASgDUgZwZXJEYXk=');

@$core.Deprecated('Use consumerDescriptor instead')
const Consumer$json = {
  '1': 'Consumer',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'important', '3': 2, '4': 1, '5': 8, '10': 'important'},
    {
      '1': 'read_from',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'readFrom'
    },
    {
      '1': 'supported_codecs',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.SupportedCodecs',
      '10': 'supportedCodecs'
    },
    {
      '1': 'attributes',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.Consumer.AttributesEntry',
      '10': 'attributes'
    },
    {
      '1': 'consumer_stats',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.Consumer.ConsumerStats',
      '10': 'consumerStats'
    },
    {
      '1': 'availability_period',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '9': 0,
      '10': 'availabilityPeriod',
      '17': true
    },
  ],
  '3': [Consumer_AttributesEntry$json, Consumer_ConsumerStats$json],
  '8': [
    {'1': '_availability_period'},
  ],
  '9': [
    {'1': 4, '2': 5},
  ],
};

@$core.Deprecated('Use consumerDescriptor instead')
const Consumer_AttributesEntry$json = {
  '1': 'AttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use consumerDescriptor instead')
const Consumer_ConsumerStats$json = {
  '1': 'ConsumerStats',
  '2': [
    {
      '1': 'min_partitions_last_read_time',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'minPartitionsLastReadTime'
    },
    {
      '1': 'max_read_time_lag',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'maxReadTimeLag'
    },
    {
      '1': 'max_write_time_lag',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'maxWriteTimeLag'
    },
    {
      '1': 'max_committed_time_lag',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'maxCommittedTimeLag'
    },
    {
      '1': 'bytes_read',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.MultipleWindowsStat',
      '10': 'bytesRead'
    },
  ],
};

/// Descriptor for `Consumer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consumerDescriptor = $convert.base64Decode(
    'CghDb25zdW1lchISCgRuYW1lGAEgASgJUgRuYW1lEhwKCWltcG9ydGFudBgCIAEoCFIJaW1wb3'
    'J0YW50EjcKCXJlYWRfZnJvbRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCHJl'
    'YWRGcm9tEkUKEHN1cHBvcnRlZF9jb2RlY3MYBSABKAsyGi5ZZGIuVG9waWMuU3VwcG9ydGVkQ2'
    '9kZWNzUg9zdXBwb3J0ZWRDb2RlY3MSQwoKYXR0cmlidXRlcxgGIAMoCzIjLllkYi5Ub3BpYy5D'
    'b25zdW1lci5BdHRyaWJ1dGVzRW50cnlSCmF0dHJpYnV0ZXMSSAoOY29uc3VtZXJfc3RhdHMYBy'
    'ABKAsyIS5ZZGIuVG9waWMuQ29uc3VtZXIuQ29uc3VtZXJTdGF0c1INY29uc3VtZXJTdGF0cxJP'
    'ChNhdmFpbGFiaWxpdHlfcGVyaW9kGAggASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uSA'
    'BSEmF2YWlsYWJpbGl0eVBlcmlvZIgBARo9Cg9BdHRyaWJ1dGVzRW50cnkSEAoDa2V5GAEgASgJ'
    'UgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4ARqKAwoNQ29uc3VtZXJTdGF0cxJcCh1taW'
    '5fcGFydGl0aW9uc19sYXN0X3JlYWRfdGltZRgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1l'
    'c3RhbXBSGW1pblBhcnRpdGlvbnNMYXN0UmVhZFRpbWUSRAoRbWF4X3JlYWRfdGltZV9sYWcYAi'
    'ABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SDm1heFJlYWRUaW1lTGFnEkYKEm1heF93'
    'cml0ZV90aW1lX2xhZxgDIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIPbWF4V3JpdG'
    'VUaW1lTGFnEk4KFm1heF9jb21taXR0ZWRfdGltZV9sYWcYBSABKAsyGS5nb29nbGUucHJvdG9i'
    'dWYuRHVyYXRpb25SE21heENvbW1pdHRlZFRpbWVMYWcSPQoKYnl0ZXNfcmVhZBgEIAEoCzIeLl'
    'lkYi5Ub3BpYy5NdWx0aXBsZVdpbmRvd3NTdGF0UglieXRlc1JlYWRCFgoUX2F2YWlsYWJpbGl0'
    'eV9wZXJpb2RKBAgEEAU=');

@$core.Deprecated('Use alterConsumerDescriptor instead')
const AlterConsumer$json = {
  '1': 'AlterConsumer',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'set_important',
      '3': 2,
      '4': 1,
      '5': 8,
      '9': 1,
      '10': 'setImportant',
      '17': true
    },
    {
      '1': 'set_read_from',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'setReadFrom'
    },
    {
      '1': 'set_supported_codecs',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.SupportedCodecs',
      '10': 'setSupportedCodecs'
    },
    {
      '1': 'alter_attributes',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.AlterConsumer.AlterAttributesEntry',
      '10': 'alterAttributes'
    },
    {
      '1': 'set_availability_period',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '9': 0,
      '10': 'setAvailabilityPeriod'
    },
    {
      '1': 'reset_availability_period',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Empty',
      '9': 0,
      '10': 'resetAvailabilityPeriod'
    },
  ],
  '3': [AlterConsumer_AlterAttributesEntry$json],
  '8': [
    {'1': 'availability_period_action'},
    {'1': '_set_important'},
  ],
  '9': [
    {'1': 4, '2': 5},
  ],
};

@$core.Deprecated('Use alterConsumerDescriptor instead')
const AlterConsumer_AlterAttributesEntry$json = {
  '1': 'AlterAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `AlterConsumer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alterConsumerDescriptor = $convert.base64Decode(
    'Cg1BbHRlckNvbnN1bWVyEhIKBG5hbWUYASABKAlSBG5hbWUSKAoNc2V0X2ltcG9ydGFudBgCIA'
    'EoCEgBUgxzZXRJbXBvcnRhbnSIAQESPgoNc2V0X3JlYWRfZnJvbRgDIAEoCzIaLmdvb2dsZS5w'
    'cm90b2J1Zi5UaW1lc3RhbXBSC3NldFJlYWRGcm9tEkwKFHNldF9zdXBwb3J0ZWRfY29kZWNzGA'
    'UgASgLMhouWWRiLlRvcGljLlN1cHBvcnRlZENvZGVjc1ISc2V0U3VwcG9ydGVkQ29kZWNzElgK'
    'EGFsdGVyX2F0dHJpYnV0ZXMYBiADKAsyLS5ZZGIuVG9waWMuQWx0ZXJDb25zdW1lci5BbHRlck'
    'F0dHJpYnV0ZXNFbnRyeVIPYWx0ZXJBdHRyaWJ1dGVzElMKF3NldF9hdmFpbGFiaWxpdHlfcGVy'
    'aW9kGAcgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uSABSFXNldEF2YWlsYWJpbGl0eV'
    'BlcmlvZBJUChlyZXNldF9hdmFpbGFiaWxpdHlfcGVyaW9kGAggASgLMhYuZ29vZ2xlLnByb3Rv'
    'YnVmLkVtcHR5SABSF3Jlc2V0QXZhaWxhYmlsaXR5UGVyaW9kGkIKFEFsdGVyQXR0cmlidXRlc0'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAFCHAoaYXZh'
    'aWxhYmlsaXR5X3BlcmlvZF9hY3Rpb25CEAoOX3NldF9pbXBvcnRhbnRKBAgEEAU=');

@$core.Deprecated('Use partitioningSettingsDescriptor instead')
const PartitioningSettings$json = {
  '1': 'PartitioningSettings',
  '2': [
    {
      '1': 'min_active_partitions',
      '3': 1,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'minActivePartitions'
    },
    {
      '1': 'max_active_partitions',
      '3': 3,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'maxActivePartitions'
    },
    {
      '1': 'partition_count_limit',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': {'3': true},
      '10': 'partitionCountLimit',
    },
    {
      '1': 'auto_partitioning_settings',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.AutoPartitioningSettings',
      '10': 'autoPartitioningSettings'
    },
  ],
};

/// Descriptor for `PartitioningSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitioningSettingsDescriptor = $convert.base64Decode(
    'ChRQYXJ0aXRpb25pbmdTZXR0aW5ncxI8ChVtaW5fYWN0aXZlX3BhcnRpdGlvbnMYASABKANCCL'
    'LmKgQ+PSAwUhNtaW5BY3RpdmVQYXJ0aXRpb25zEjwKFW1heF9hY3RpdmVfcGFydGl0aW9ucxgD'
    'IAEoA0IIsuYqBD49IDBSE21heEFjdGl2ZVBhcnRpdGlvbnMSPgoVcGFydGl0aW9uX2NvdW50X2'
    'xpbWl0GAIgASgDQgoYAbLmKgQ+PSAwUhNwYXJ0aXRpb25Db3VudExpbWl0EmEKGmF1dG9fcGFy'
    'dGl0aW9uaW5nX3NldHRpbmdzGAQgASgLMiMuWWRiLlRvcGljLkF1dG9QYXJ0aXRpb25pbmdTZX'
    'R0aW5nc1IYYXV0b1BhcnRpdGlvbmluZ1NldHRpbmdz');

@$core.Deprecated('Use autoPartitioningSettingsDescriptor instead')
const AutoPartitioningSettings$json = {
  '1': 'AutoPartitioningSettings',
  '2': [
    {
      '1': 'strategy',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Topic.AutoPartitioningStrategy',
      '10': 'strategy'
    },
    {
      '1': 'partition_write_speed',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.AutoPartitioningWriteSpeedStrategy',
      '10': 'partitionWriteSpeed'
    },
  ],
};

/// Descriptor for `AutoPartitioningSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autoPartitioningSettingsDescriptor = $convert.base64Decode(
    'ChhBdXRvUGFydGl0aW9uaW5nU2V0dGluZ3MSPwoIc3RyYXRlZ3kYASABKA4yIy5ZZGIuVG9waW'
    'MuQXV0b1BhcnRpdGlvbmluZ1N0cmF0ZWd5UghzdHJhdGVneRJhChVwYXJ0aXRpb25fd3JpdGVf'
    'c3BlZWQYAiABKAsyLS5ZZGIuVG9waWMuQXV0b1BhcnRpdGlvbmluZ1dyaXRlU3BlZWRTdHJhdG'
    'VneVITcGFydGl0aW9uV3JpdGVTcGVlZA==');

@$core.Deprecated('Use autoPartitioningWriteSpeedStrategyDescriptor instead')
const AutoPartitioningWriteSpeedStrategy$json = {
  '1': 'AutoPartitioningWriteSpeedStrategy',
  '2': [
    {
      '1': 'stabilization_window',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'stabilizationWindow'
    },
    {
      '1': 'up_utilization_percent',
      '3': 2,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'upUtilizationPercent'
    },
    {
      '1': 'down_utilization_percent',
      '3': 3,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'downUtilizationPercent'
    },
  ],
};

/// Descriptor for `AutoPartitioningWriteSpeedStrategy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autoPartitioningWriteSpeedStrategyDescriptor =
    $convert.base64Decode(
        'CiJBdXRvUGFydGl0aW9uaW5nV3JpdGVTcGVlZFN0cmF0ZWd5EkwKFHN0YWJpbGl6YXRpb25fd2'
        'luZG93GAEgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUhNzdGFiaWxpemF0aW9uV2lu'
        'ZG93Ej4KFnVwX3V0aWxpemF0aW9uX3BlcmNlbnQYAiABKAVCCLLmKgQ+PSAwUhR1cFV0aWxpem'
        'F0aW9uUGVyY2VudBJCChhkb3duX3V0aWxpemF0aW9uX3BlcmNlbnQYAyABKAVCCLLmKgQ+PSAw'
        'UhZkb3duVXRpbGl6YXRpb25QZXJjZW50');

@$core.Deprecated('Use alterPartitioningSettingsDescriptor instead')
const AlterPartitioningSettings$json = {
  '1': 'AlterPartitioningSettings',
  '2': [
    {
      '1': 'set_min_active_partitions',
      '3': 1,
      '4': 1,
      '5': 3,
      '8': {},
      '9': 0,
      '10': 'setMinActivePartitions',
      '17': true
    },
    {
      '1': 'set_max_active_partitions',
      '3': 3,
      '4': 1,
      '5': 3,
      '8': {},
      '9': 1,
      '10': 'setMaxActivePartitions',
      '17': true
    },
    {
      '1': 'set_partition_count_limit',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': {'3': true},
      '9': 2,
      '10': 'setPartitionCountLimit',
      '17': true,
    },
    {
      '1': 'alter_auto_partitioning_settings',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.AlterAutoPartitioningSettings',
      '9': 3,
      '10': 'alterAutoPartitioningSettings',
      '17': true
    },
  ],
  '8': [
    {'1': '_set_min_active_partitions'},
    {'1': '_set_max_active_partitions'},
    {'1': '_set_partition_count_limit'},
    {'1': '_alter_auto_partitioning_settings'},
  ],
};

/// Descriptor for `AlterPartitioningSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alterPartitioningSettingsDescriptor = $convert.base64Decode(
    'ChlBbHRlclBhcnRpdGlvbmluZ1NldHRpbmdzEkgKGXNldF9taW5fYWN0aXZlX3BhcnRpdGlvbn'
    'MYASABKANCCLLmKgQ+PSAwSABSFnNldE1pbkFjdGl2ZVBhcnRpdGlvbnOIAQESSAoZc2V0X21h'
    'eF9hY3RpdmVfcGFydGl0aW9ucxgDIAEoA0IIsuYqBD49IDBIAVIWc2V0TWF4QWN0aXZlUGFydG'
    'l0aW9uc4gBARJKChlzZXRfcGFydGl0aW9uX2NvdW50X2xpbWl0GAIgASgDQgoYAbLmKgQ+PSAw'
    'SAJSFnNldFBhcnRpdGlvbkNvdW50TGltaXSIAQESdgogYWx0ZXJfYXV0b19wYXJ0aXRpb25pbm'
    'dfc2V0dGluZ3MYBCABKAsyKC5ZZGIuVG9waWMuQWx0ZXJBdXRvUGFydGl0aW9uaW5nU2V0dGlu'
    'Z3NIA1IdYWx0ZXJBdXRvUGFydGl0aW9uaW5nU2V0dGluZ3OIAQFCHAoaX3NldF9taW5fYWN0aX'
    'ZlX3BhcnRpdGlvbnNCHAoaX3NldF9tYXhfYWN0aXZlX3BhcnRpdGlvbnNCHAoaX3NldF9wYXJ0'
    'aXRpb25fY291bnRfbGltaXRCIwohX2FsdGVyX2F1dG9fcGFydGl0aW9uaW5nX3NldHRpbmdz');

@$core.Deprecated('Use alterAutoPartitioningSettingsDescriptor instead')
const AlterAutoPartitioningSettings$json = {
  '1': 'AlterAutoPartitioningSettings',
  '2': [
    {
      '1': 'set_strategy',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Topic.AutoPartitioningStrategy',
      '9': 0,
      '10': 'setStrategy',
      '17': true
    },
    {
      '1': 'set_partition_write_speed',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.AlterAutoPartitioningWriteSpeedStrategy',
      '9': 1,
      '10': 'setPartitionWriteSpeed',
      '17': true
    },
  ],
  '8': [
    {'1': '_set_strategy'},
    {'1': '_set_partition_write_speed'},
  ],
};

/// Descriptor for `AlterAutoPartitioningSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alterAutoPartitioningSettingsDescriptor = $convert.base64Decode(
    'Ch1BbHRlckF1dG9QYXJ0aXRpb25pbmdTZXR0aW5ncxJLCgxzZXRfc3RyYXRlZ3kYASABKA4yIy'
    '5ZZGIuVG9waWMuQXV0b1BhcnRpdGlvbmluZ1N0cmF0ZWd5SABSC3NldFN0cmF0ZWd5iAEBEnIK'
    'GXNldF9wYXJ0aXRpb25fd3JpdGVfc3BlZWQYAiABKAsyMi5ZZGIuVG9waWMuQWx0ZXJBdXRvUG'
    'FydGl0aW9uaW5nV3JpdGVTcGVlZFN0cmF0ZWd5SAFSFnNldFBhcnRpdGlvbldyaXRlU3BlZWSI'
    'AQFCDwoNX3NldF9zdHJhdGVneUIcChpfc2V0X3BhcnRpdGlvbl93cml0ZV9zcGVlZA==');

@$core
    .Deprecated('Use alterAutoPartitioningWriteSpeedStrategyDescriptor instead')
const AlterAutoPartitioningWriteSpeedStrategy$json = {
  '1': 'AlterAutoPartitioningWriteSpeedStrategy',
  '2': [
    {
      '1': 'set_stabilization_window',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '9': 0,
      '10': 'setStabilizationWindow',
      '17': true
    },
    {
      '1': 'set_up_utilization_percent',
      '3': 2,
      '4': 1,
      '5': 5,
      '8': {},
      '9': 1,
      '10': 'setUpUtilizationPercent',
      '17': true
    },
    {
      '1': 'set_down_utilization_percent',
      '3': 3,
      '4': 1,
      '5': 5,
      '8': {},
      '9': 2,
      '10': 'setDownUtilizationPercent',
      '17': true
    },
  ],
  '8': [
    {'1': '_set_stabilization_window'},
    {'1': '_set_up_utilization_percent'},
    {'1': '_set_down_utilization_percent'},
  ],
};

/// Descriptor for `AlterAutoPartitioningWriteSpeedStrategy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alterAutoPartitioningWriteSpeedStrategyDescriptor = $convert.base64Decode(
    'CidBbHRlckF1dG9QYXJ0aXRpb25pbmdXcml0ZVNwZWVkU3RyYXRlZ3kSWAoYc2V0X3N0YWJpbG'
    'l6YXRpb25fd2luZG93GAEgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uSABSFnNldFN0'
    'YWJpbGl6YXRpb25XaW5kb3eIAQESSgoac2V0X3VwX3V0aWxpemF0aW9uX3BlcmNlbnQYAiABKA'
    'VCCLLmKgQ+PSAwSAFSF3NldFVwVXRpbGl6YXRpb25QZXJjZW50iAEBEk4KHHNldF9kb3duX3V0'
    'aWxpemF0aW9uX3BlcmNlbnQYAyABKAVCCLLmKgQ+PSAwSAJSGXNldERvd25VdGlsaXphdGlvbl'
    'BlcmNlbnSIAQFCGwoZX3NldF9zdGFiaWxpemF0aW9uX3dpbmRvd0IdChtfc2V0X3VwX3V0aWxp'
    'emF0aW9uX3BlcmNlbnRCHwodX3NldF9kb3duX3V0aWxpemF0aW9uX3BlcmNlbnQ=');

@$core.Deprecated('Use createTopicRequestDescriptor instead')
const CreateTopicRequest$json = {
  '1': 'CreateTopicRequest',
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
      '1': 'partitioning_settings',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.PartitioningSettings',
      '10': 'partitioningSettings'
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
      '1': 'retention_storage_mb',
      '3': 5,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'retentionStorageMb'
    },
    {
      '1': 'supported_codecs',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.SupportedCodecs',
      '10': 'supportedCodecs'
    },
    {
      '1': 'partition_write_speed_bytes_per_second',
      '3': 8,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'partitionWriteSpeedBytesPerSecond'
    },
    {
      '1': 'partition_write_burst_bytes',
      '3': 9,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'partitionWriteBurstBytes'
    },
    {
      '1': 'attributes',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.CreateTopicRequest.AttributesEntry',
      '10': 'attributes'
    },
    {
      '1': 'consumers',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.Consumer',
      '8': {},
      '10': 'consumers'
    },
    {
      '1': 'metering_mode',
      '3': 12,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Topic.MeteringMode',
      '10': 'meteringMode'
    },
  ],
  '3': [CreateTopicRequest_AttributesEntry$json],
  '9': [
    {'1': 6, '2': 7},
  ],
};

@$core.Deprecated('Use createTopicRequestDescriptor instead')
const CreateTopicRequest_AttributesEntry$json = {
  '1': 'AttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CreateTopicRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTopicRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVUb3BpY1JlcXVlc3QSSgoQb3BlcmF0aW9uX3BhcmFtcxgBIAEoCzIfLllkYi5PcG'
    'VyYXRpb25zLk9wZXJhdGlvblBhcmFtc1IPb3BlcmF0aW9uUGFyYW1zEhIKBHBhdGgYAiABKAlS'
    'BHBhdGgSVAoVcGFydGl0aW9uaW5nX3NldHRpbmdzGAMgASgLMh8uWWRiLlRvcGljLlBhcnRpdG'
    'lvbmluZ1NldHRpbmdzUhRwYXJ0aXRpb25pbmdTZXR0aW5ncxJEChByZXRlbnRpb25fcGVyaW9k'
    'GAQgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUg9yZXRlbnRpb25QZXJpb2QSOgoUcm'
    'V0ZW50aW9uX3N0b3JhZ2VfbWIYBSABKANCCLLmKgQ+PSAwUhJyZXRlbnRpb25TdG9yYWdlTWIS'
    'RQoQc3VwcG9ydGVkX2NvZGVjcxgHIAEoCzIaLllkYi5Ub3BpYy5TdXBwb3J0ZWRDb2RlY3NSD3'
    'N1cHBvcnRlZENvZGVjcxJbCiZwYXJ0aXRpb25fd3JpdGVfc3BlZWRfYnl0ZXNfcGVyX3NlY29u'
    'ZBgIIAEoA0IIsuYqBD49IDBSIXBhcnRpdGlvbldyaXRlU3BlZWRCeXRlc1BlclNlY29uZBJHCh'
    'twYXJ0aXRpb25fd3JpdGVfYnVyc3RfYnl0ZXMYCSABKANCCLLmKgQ+PSAwUhhwYXJ0aXRpb25X'
    'cml0ZUJ1cnN0Qnl0ZXMSTQoKYXR0cmlidXRlcxgKIAMoCzItLllkYi5Ub3BpYy5DcmVhdGVUb3'
    'BpY1JlcXVlc3QuQXR0cmlidXRlc0VudHJ5UgphdHRyaWJ1dGVzEjoKCWNvbnN1bWVycxgLIAMo'
    'CzITLllkYi5Ub3BpYy5Db25zdW1lckIHmuYqAxi4F1IJY29uc3VtZXJzEjwKDW1ldGVyaW5nX2'
    '1vZGUYDCABKA4yFy5ZZGIuVG9waWMuTWV0ZXJpbmdNb2RlUgxtZXRlcmluZ01vZGUaPQoPQXR0'
    'cmlidXRlc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOA'
    'FKBAgGEAc=');

@$core.Deprecated('Use createTopicResponseDescriptor instead')
const CreateTopicResponse$json = {
  '1': 'CreateTopicResponse',
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

/// Descriptor for `CreateTopicResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTopicResponseDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVUb3BpY1Jlc3BvbnNlEjcKCW9wZXJhdGlvbhgBIAEoCzIZLllkYi5PcGVyYXRpb2'
    '5zLk9wZXJhdGlvblIJb3BlcmF0aW9u');

@$core.Deprecated('Use createTopicResultDescriptor instead')
const CreateTopicResult$json = {
  '1': 'CreateTopicResult',
};

/// Descriptor for `CreateTopicResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTopicResultDescriptor =
    $convert.base64Decode('ChFDcmVhdGVUb3BpY1Jlc3VsdA==');

@$core.Deprecated('Use partitionLocationDescriptor instead')
const PartitionLocation$json = {
  '1': 'PartitionLocation',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 5, '10': 'nodeId'},
    {'1': 'generation', '3': 2, '4': 1, '5': 3, '10': 'generation'},
  ],
};

/// Descriptor for `PartitionLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitionLocationDescriptor = $convert.base64Decode(
    'ChFQYXJ0aXRpb25Mb2NhdGlvbhIXCgdub2RlX2lkGAEgASgFUgZub2RlSWQSHgoKZ2VuZXJhdG'
    'lvbhgCIAEoA1IKZ2VuZXJhdGlvbg==');

@$core.Deprecated('Use describeTopicRequestDescriptor instead')
const DescribeTopicRequest$json = {
  '1': 'DescribeTopicRequest',
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
    {'1': 'include_stats', '3': 3, '4': 1, '5': 8, '10': 'includeStats'},
    {'1': 'include_location', '3': 4, '4': 1, '5': 8, '10': 'includeLocation'},
  ],
};

/// Descriptor for `DescribeTopicRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeTopicRequestDescriptor = $convert.base64Decode(
    'ChREZXNjcmliZVRvcGljUmVxdWVzdBJKChBvcGVyYXRpb25fcGFyYW1zGAEgASgLMh8uWWRiLk'
    '9wZXJhdGlvbnMuT3BlcmF0aW9uUGFyYW1zUg9vcGVyYXRpb25QYXJhbXMSEgoEcGF0aBgCIAEo'
    'CVIEcGF0aBIjCg1pbmNsdWRlX3N0YXRzGAMgASgIUgxpbmNsdWRlU3RhdHMSKQoQaW5jbHVkZV'
    '9sb2NhdGlvbhgEIAEoCFIPaW5jbHVkZUxvY2F0aW9u');

@$core.Deprecated('Use describeTopicResponseDescriptor instead')
const DescribeTopicResponse$json = {
  '1': 'DescribeTopicResponse',
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

/// Descriptor for `DescribeTopicResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeTopicResponseDescriptor = $convert.base64Decode(
    'ChVEZXNjcmliZVRvcGljUmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZXJhdG'
    'lvbnMuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use partitionKeyRangeDescriptor instead')
const PartitionKeyRange$json = {
  '1': 'PartitionKeyRange',
  '2': [
    {
      '1': 'from_bound',
      '3': 1,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'fromBound',
      '17': true
    },
    {
      '1': 'to_bound',
      '3': 2,
      '4': 1,
      '5': 12,
      '9': 1,
      '10': 'toBound',
      '17': true
    },
  ],
  '8': [
    {'1': '_from_bound'},
    {'1': '_to_bound'},
  ],
};

/// Descriptor for `PartitionKeyRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitionKeyRangeDescriptor = $convert.base64Decode(
    'ChFQYXJ0aXRpb25LZXlSYW5nZRIiCgpmcm9tX2JvdW5kGAEgASgMSABSCWZyb21Cb3VuZIgBAR'
    'IeCgh0b19ib3VuZBgCIAEoDEgBUgd0b0JvdW5kiAEBQg0KC19mcm9tX2JvdW5kQgsKCV90b19i'
    'b3VuZA==');

@$core.Deprecated('Use describeTopicResultDescriptor instead')
const DescribeTopicResult$json = {
  '1': 'DescribeTopicResult',
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
      '1': 'partitioning_settings',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.PartitioningSettings',
      '10': 'partitioningSettings'
    },
    {
      '1': 'partitions',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.DescribeTopicResult.PartitionInfo',
      '10': 'partitions'
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
      '1': 'retention_storage_mb',
      '3': 5,
      '4': 1,
      '5': 3,
      '10': 'retentionStorageMb'
    },
    {
      '1': 'supported_codecs',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.SupportedCodecs',
      '10': 'supportedCodecs'
    },
    {
      '1': 'partition_write_speed_bytes_per_second',
      '3': 8,
      '4': 1,
      '5': 3,
      '10': 'partitionWriteSpeedBytesPerSecond'
    },
    {
      '1': 'partition_total_read_speed_bytes_per_second',
      '3': 14,
      '4': 1,
      '5': 3,
      '10': 'partitionTotalReadSpeedBytesPerSecond'
    },
    {
      '1': 'partition_consumer_read_speed_bytes_per_second',
      '3': 15,
      '4': 1,
      '5': 3,
      '10': 'partitionConsumerReadSpeedBytesPerSecond'
    },
    {
      '1': 'partition_write_burst_bytes',
      '3': 9,
      '4': 1,
      '5': 3,
      '10': 'partitionWriteBurstBytes'
    },
    {
      '1': 'attributes',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.DescribeTopicResult.AttributesEntry',
      '10': 'attributes'
    },
    {
      '1': 'consumers',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.Consumer',
      '10': 'consumers'
    },
    {
      '1': 'metering_mode',
      '3': 12,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Topic.MeteringMode',
      '10': 'meteringMode'
    },
    {
      '1': 'topic_stats',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.DescribeTopicResult.TopicStats',
      '10': 'topicStats'
    },
  ],
  '3': [
    DescribeTopicResult_AttributesEntry$json,
    DescribeTopicResult_PartitionInfo$json,
    DescribeTopicResult_TopicStats$json
  ],
  '9': [
    {'1': 6, '2': 7},
  ],
};

@$core.Deprecated('Use describeTopicResultDescriptor instead')
const DescribeTopicResult_AttributesEntry$json = {
  '1': 'AttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use describeTopicResultDescriptor instead')
const DescribeTopicResult_PartitionInfo$json = {
  '1': 'PartitionInfo',
  '2': [
    {'1': 'partition_id', '3': 1, '4': 1, '5': 3, '10': 'partitionId'},
    {'1': 'active', '3': 2, '4': 1, '5': 8, '10': 'active'},
    {
      '1': 'child_partition_ids',
      '3': 3,
      '4': 3,
      '5': 3,
      '10': 'childPartitionIds'
    },
    {
      '1': 'parent_partition_ids',
      '3': 4,
      '4': 3,
      '5': 3,
      '10': 'parentPartitionIds'
    },
    {
      '1': 'partition_stats',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.PartitionStats',
      '10': 'partitionStats'
    },
    {
      '1': 'partition_location',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.PartitionLocation',
      '10': 'partitionLocation'
    },
    {
      '1': 'key_range',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.PartitionKeyRange',
      '10': 'keyRange'
    },
  ],
};

@$core.Deprecated('Use describeTopicResultDescriptor instead')
const DescribeTopicResult_TopicStats$json = {
  '1': 'TopicStats',
  '2': [
    {'1': 'store_size_bytes', '3': 1, '4': 1, '5': 3, '10': 'storeSizeBytes'},
    {
      '1': 'min_last_write_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'minLastWriteTime'
    },
    {
      '1': 'max_write_time_lag',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'maxWriteTimeLag'
    },
    {
      '1': 'bytes_written',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.MultipleWindowsStat',
      '10': 'bytesWritten'
    },
  ],
};

/// Descriptor for `DescribeTopicResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeTopicResultDescriptor = $convert.base64Decode(
    'ChNEZXNjcmliZVRvcGljUmVzdWx0EiUKBHNlbGYYASABKAsyES5ZZGIuU2NoZW1lLkVudHJ5Ug'
    'RzZWxmElQKFXBhcnRpdGlvbmluZ19zZXR0aW5ncxgCIAEoCzIfLllkYi5Ub3BpYy5QYXJ0aXRp'
    'b25pbmdTZXR0aW5nc1IUcGFydGl0aW9uaW5nU2V0dGluZ3MSTAoKcGFydGl0aW9ucxgDIAMoCz'
    'IsLllkYi5Ub3BpYy5EZXNjcmliZVRvcGljUmVzdWx0LlBhcnRpdGlvbkluZm9SCnBhcnRpdGlv'
    'bnMSRAoQcmV0ZW50aW9uX3BlcmlvZBgEIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvbl'
    'IPcmV0ZW50aW9uUGVyaW9kEjAKFHJldGVudGlvbl9zdG9yYWdlX21iGAUgASgDUhJyZXRlbnRp'
    'b25TdG9yYWdlTWISRQoQc3VwcG9ydGVkX2NvZGVjcxgHIAEoCzIaLllkYi5Ub3BpYy5TdXBwb3'
    'J0ZWRDb2RlY3NSD3N1cHBvcnRlZENvZGVjcxJRCiZwYXJ0aXRpb25fd3JpdGVfc3BlZWRfYnl0'
    'ZXNfcGVyX3NlY29uZBgIIAEoA1IhcGFydGl0aW9uV3JpdGVTcGVlZEJ5dGVzUGVyU2Vjb25kEl'
    'oKK3BhcnRpdGlvbl90b3RhbF9yZWFkX3NwZWVkX2J5dGVzX3Blcl9zZWNvbmQYDiABKANSJXBh'
    'cnRpdGlvblRvdGFsUmVhZFNwZWVkQnl0ZXNQZXJTZWNvbmQSYAoucGFydGl0aW9uX2NvbnN1bW'
    'VyX3JlYWRfc3BlZWRfYnl0ZXNfcGVyX3NlY29uZBgPIAEoA1IocGFydGl0aW9uQ29uc3VtZXJS'
    'ZWFkU3BlZWRCeXRlc1BlclNlY29uZBI9ChtwYXJ0aXRpb25fd3JpdGVfYnVyc3RfYnl0ZXMYCS'
    'ABKANSGHBhcnRpdGlvbldyaXRlQnVyc3RCeXRlcxJOCgphdHRyaWJ1dGVzGAogAygLMi4uWWRi'
    'LlRvcGljLkRlc2NyaWJlVG9waWNSZXN1bHQuQXR0cmlidXRlc0VudHJ5UgphdHRyaWJ1dGVzEj'
    'EKCWNvbnN1bWVycxgLIAMoCzITLllkYi5Ub3BpYy5Db25zdW1lclIJY29uc3VtZXJzEjwKDW1l'
    'dGVyaW5nX21vZGUYDCABKA4yFy5ZZGIuVG9waWMuTWV0ZXJpbmdNb2RlUgxtZXRlcmluZ01vZG'
    'USSgoLdG9waWNfc3RhdHMYDSABKAsyKS5ZZGIuVG9waWMuRGVzY3JpYmVUb3BpY1Jlc3VsdC5U'
    'b3BpY1N0YXRzUgp0b3BpY1N0YXRzGj0KD0F0dHJpYnV0ZXNFbnRyeRIQCgNrZXkYASABKAlSA2'
    'tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGvgCCg1QYXJ0aXRpb25JbmZvEiEKDHBhcnRp'
    'dGlvbl9pZBgBIAEoA1ILcGFydGl0aW9uSWQSFgoGYWN0aXZlGAIgASgIUgZhY3RpdmUSLgoTY2'
    'hpbGRfcGFydGl0aW9uX2lkcxgDIAMoA1IRY2hpbGRQYXJ0aXRpb25JZHMSMAoUcGFyZW50X3Bh'
    'cnRpdGlvbl9pZHMYBCADKANSEnBhcmVudFBhcnRpdGlvbklkcxJCCg9wYXJ0aXRpb25fc3RhdH'
    'MYBSABKAsyGS5ZZGIuVG9waWMuUGFydGl0aW9uU3RhdHNSDnBhcnRpdGlvblN0YXRzEksKEnBh'
    'cnRpdGlvbl9sb2NhdGlvbhgGIAEoCzIcLllkYi5Ub3BpYy5QYXJ0aXRpb25Mb2NhdGlvblIRcG'
    'FydGl0aW9uTG9jYXRpb24SOQoJa2V5X3JhbmdlGAcgASgLMhwuWWRiLlRvcGljLlBhcnRpdGlv'
    'bktleVJhbmdlUghrZXlSYW5nZRqOAgoKVG9waWNTdGF0cxIoChBzdG9yZV9zaXplX2J5dGVzGA'
    'EgASgDUg5zdG9yZVNpemVCeXRlcxJJChNtaW5fbGFzdF93cml0ZV90aW1lGAIgASgLMhouZ29v'
    'Z2xlLnByb3RvYnVmLlRpbWVzdGFtcFIQbWluTGFzdFdyaXRlVGltZRJGChJtYXhfd3JpdGVfdG'
    'ltZV9sYWcYAyABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SD21heFdyaXRlVGltZUxh'
    'ZxJDCg1ieXRlc193cml0dGVuGAQgASgLMh4uWWRiLlRvcGljLk11bHRpcGxlV2luZG93c1N0YX'
    'RSDGJ5dGVzV3JpdHRlbkoECAYQBw==');

@$core.Deprecated('Use describePartitionRequestDescriptor instead')
const DescribePartitionRequest$json = {
  '1': 'DescribePartitionRequest',
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
    {'1': 'partition_id', '3': 3, '4': 1, '5': 3, '10': 'partitionId'},
    {'1': 'include_stats', '3': 4, '4': 1, '5': 8, '10': 'includeStats'},
    {'1': 'include_location', '3': 5, '4': 1, '5': 8, '10': 'includeLocation'},
  ],
};

/// Descriptor for `DescribePartitionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describePartitionRequestDescriptor = $convert.base64Decode(
    'ChhEZXNjcmliZVBhcnRpdGlvblJlcXVlc3QSSgoQb3BlcmF0aW9uX3BhcmFtcxgBIAEoCzIfLl'
    'lkYi5PcGVyYXRpb25zLk9wZXJhdGlvblBhcmFtc1IPb3BlcmF0aW9uUGFyYW1zEhIKBHBhdGgY'
    'AiABKAlSBHBhdGgSIQoMcGFydGl0aW9uX2lkGAMgASgDUgtwYXJ0aXRpb25JZBIjCg1pbmNsdW'
    'RlX3N0YXRzGAQgASgIUgxpbmNsdWRlU3RhdHMSKQoQaW5jbHVkZV9sb2NhdGlvbhgFIAEoCFIP'
    'aW5jbHVkZUxvY2F0aW9u');

@$core.Deprecated('Use describePartitionResponseDescriptor instead')
const DescribePartitionResponse$json = {
  '1': 'DescribePartitionResponse',
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

/// Descriptor for `DescribePartitionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describePartitionResponseDescriptor =
    $convert.base64Decode(
        'ChlEZXNjcmliZVBhcnRpdGlvblJlc3BvbnNlEjcKCW9wZXJhdGlvbhgBIAEoCzIZLllkYi5PcG'
        'VyYXRpb25zLk9wZXJhdGlvblIJb3BlcmF0aW9u');

@$core.Deprecated('Use describePartitionResultDescriptor instead')
const DescribePartitionResult$json = {
  '1': 'DescribePartitionResult',
  '2': [
    {
      '1': 'partition',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.DescribeTopicResult.PartitionInfo',
      '10': 'partition'
    },
  ],
};

/// Descriptor for `DescribePartitionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describePartitionResultDescriptor =
    $convert.base64Decode(
        'ChdEZXNjcmliZVBhcnRpdGlvblJlc3VsdBJKCglwYXJ0aXRpb24YASABKAsyLC5ZZGIuVG9waW'
        'MuRGVzY3JpYmVUb3BpY1Jlc3VsdC5QYXJ0aXRpb25JbmZvUglwYXJ0aXRpb24=');

@$core.Deprecated('Use describeConsumerRequestDescriptor instead')
const DescribeConsumerRequest$json = {
  '1': 'DescribeConsumerRequest',
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
    {'1': 'consumer', '3': 3, '4': 1, '5': 9, '10': 'consumer'},
    {'1': 'include_stats', '3': 4, '4': 1, '5': 8, '10': 'includeStats'},
    {'1': 'include_location', '3': 5, '4': 1, '5': 8, '10': 'includeLocation'},
  ],
};

/// Descriptor for `DescribeConsumerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeConsumerRequestDescriptor = $convert.base64Decode(
    'ChdEZXNjcmliZUNvbnN1bWVyUmVxdWVzdBJKChBvcGVyYXRpb25fcGFyYW1zGAEgASgLMh8uWW'
    'RiLk9wZXJhdGlvbnMuT3BlcmF0aW9uUGFyYW1zUg9vcGVyYXRpb25QYXJhbXMSEgoEcGF0aBgC'
    'IAEoCVIEcGF0aBIaCghjb25zdW1lchgDIAEoCVIIY29uc3VtZXISIwoNaW5jbHVkZV9zdGF0cx'
    'gEIAEoCFIMaW5jbHVkZVN0YXRzEikKEGluY2x1ZGVfbG9jYXRpb24YBSABKAhSD2luY2x1ZGVM'
    'b2NhdGlvbg==');

@$core.Deprecated('Use describeConsumerResponseDescriptor instead')
const DescribeConsumerResponse$json = {
  '1': 'DescribeConsumerResponse',
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

/// Descriptor for `DescribeConsumerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeConsumerResponseDescriptor =
    $convert.base64Decode(
        'ChhEZXNjcmliZUNvbnN1bWVyUmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZX'
        'JhdGlvbnMuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use describeConsumerResultDescriptor instead')
const DescribeConsumerResult$json = {
  '1': 'DescribeConsumerResult',
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
      '1': 'consumer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.Consumer',
      '10': 'consumer'
    },
    {
      '1': 'partitions',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.DescribeConsumerResult.PartitionInfo',
      '10': 'partitions'
    },
  ],
  '3': [
    DescribeConsumerResult_PartitionInfo$json,
    DescribeConsumerResult_PartitionConsumerStats$json
  ],
};

@$core.Deprecated('Use describeConsumerResultDescriptor instead')
const DescribeConsumerResult_PartitionInfo$json = {
  '1': 'PartitionInfo',
  '2': [
    {'1': 'partition_id', '3': 1, '4': 1, '5': 3, '10': 'partitionId'},
    {'1': 'active', '3': 2, '4': 1, '5': 8, '10': 'active'},
    {
      '1': 'child_partition_ids',
      '3': 3,
      '4': 3,
      '5': 3,
      '10': 'childPartitionIds'
    },
    {
      '1': 'parent_partition_ids',
      '3': 4,
      '4': 3,
      '5': 3,
      '10': 'parentPartitionIds'
    },
    {
      '1': 'partition_stats',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.PartitionStats',
      '10': 'partitionStats'
    },
    {
      '1': 'partition_consumer_stats',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.DescribeConsumerResult.PartitionConsumerStats',
      '10': 'partitionConsumerStats'
    },
    {
      '1': 'partition_location',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.PartitionLocation',
      '10': 'partitionLocation'
    },
  ],
};

@$core.Deprecated('Use describeConsumerResultDescriptor instead')
const DescribeConsumerResult_PartitionConsumerStats$json = {
  '1': 'PartitionConsumerStats',
  '2': [
    {'1': 'last_read_offset', '3': 1, '4': 1, '5': 3, '10': 'lastReadOffset'},
    {'1': 'committed_offset', '3': 2, '4': 1, '5': 3, '10': 'committedOffset'},
    {'1': 'read_session_id', '3': 3, '4': 1, '5': 9, '10': 'readSessionId'},
    {
      '1': 'partition_read_session_create_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'partitionReadSessionCreateTime'
    },
    {
      '1': 'last_read_time',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'lastReadTime'
    },
    {
      '1': 'max_read_time_lag',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'maxReadTimeLag'
    },
    {
      '1': 'max_write_time_lag',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'maxWriteTimeLag'
    },
    {
      '1': 'max_committed_time_lag',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'maxCommittedTimeLag'
    },
    {
      '1': 'bytes_read',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.MultipleWindowsStat',
      '10': 'bytesRead'
    },
    {'1': 'reader_name', '3': 11, '4': 1, '5': 9, '10': 'readerName'},
    {
      '1': 'connection_node_id',
      '3': 12,
      '4': 1,
      '5': 5,
      '10': 'connectionNodeId'
    },
  ],
};

/// Descriptor for `DescribeConsumerResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeConsumerResultDescriptor = $convert.base64Decode(
    'ChZEZXNjcmliZUNvbnN1bWVyUmVzdWx0EiUKBHNlbGYYASABKAsyES5ZZGIuU2NoZW1lLkVudH'
    'J5UgRzZWxmEi8KCGNvbnN1bWVyGAIgASgLMhMuWWRiLlRvcGljLkNvbnN1bWVyUghjb25zdW1l'
    'chJPCgpwYXJ0aXRpb25zGAMgAygLMi8uWWRiLlRvcGljLkRlc2NyaWJlQ29uc3VtZXJSZXN1bH'
    'QuUGFydGl0aW9uSW5mb1IKcGFydGl0aW9ucxqxAwoNUGFydGl0aW9uSW5mbxIhCgxwYXJ0aXRp'
    'b25faWQYASABKANSC3BhcnRpdGlvbklkEhYKBmFjdGl2ZRgCIAEoCFIGYWN0aXZlEi4KE2NoaW'
    'xkX3BhcnRpdGlvbl9pZHMYAyADKANSEWNoaWxkUGFydGl0aW9uSWRzEjAKFHBhcmVudF9wYXJ0'
    'aXRpb25faWRzGAQgAygDUhJwYXJlbnRQYXJ0aXRpb25JZHMSQgoPcGFydGl0aW9uX3N0YXRzGA'
    'UgASgLMhkuWWRiLlRvcGljLlBhcnRpdGlvblN0YXRzUg5wYXJ0aXRpb25TdGF0cxJyChhwYXJ0'
    'aXRpb25fY29uc3VtZXJfc3RhdHMYBiABKAsyOC5ZZGIuVG9waWMuRGVzY3JpYmVDb25zdW1lcl'
    'Jlc3VsdC5QYXJ0aXRpb25Db25zdW1lclN0YXRzUhZwYXJ0aXRpb25Db25zdW1lclN0YXRzEksK'
    'EnBhcnRpdGlvbl9sb2NhdGlvbhgHIAEoCzIcLllkYi5Ub3BpYy5QYXJ0aXRpb25Mb2NhdGlvbl'
    'IRcGFydGl0aW9uTG9jYXRpb24aqwUKFlBhcnRpdGlvbkNvbnN1bWVyU3RhdHMSKAoQbGFzdF9y'
    'ZWFkX29mZnNldBgBIAEoA1IObGFzdFJlYWRPZmZzZXQSKQoQY29tbWl0dGVkX29mZnNldBgCIA'
    'EoA1IPY29tbWl0dGVkT2Zmc2V0EiYKD3JlYWRfc2Vzc2lvbl9pZBgDIAEoCVINcmVhZFNlc3Np'
    'b25JZBJmCiJwYXJ0aXRpb25fcmVhZF9zZXNzaW9uX2NyZWF0ZV90aW1lGAQgASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcFIecGFydGl0aW9uUmVhZFNlc3Npb25DcmVhdGVUaW1lEkAK'
    'Dmxhc3RfcmVhZF90aW1lGAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIMbGFzdF'
    'JlYWRUaW1lEkQKEW1heF9yZWFkX3RpbWVfbGFnGAYgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1'
    'cmF0aW9uUg5tYXhSZWFkVGltZUxhZxJGChJtYXhfd3JpdGVfdGltZV9sYWcYByABKAsyGS5nb2'
    '9nbGUucHJvdG9idWYuRHVyYXRpb25SD21heFdyaXRlVGltZUxhZxJOChZtYXhfY29tbWl0dGVk'
    'X3RpbWVfbGFnGA0gASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUhNtYXhDb21taXR0ZW'
    'RUaW1lTGFnEj0KCmJ5dGVzX3JlYWQYCCABKAsyHi5ZZGIuVG9waWMuTXVsdGlwbGVXaW5kb3dz'
    'U3RhdFIJYnl0ZXNSZWFkEh8KC3JlYWRlcl9uYW1lGAsgASgJUgpyZWFkZXJOYW1lEiwKEmNvbm'
    '5lY3Rpb25fbm9kZV9pZBgMIAEoBVIQY29ubmVjdGlvbk5vZGVJZA==');

@$core.Deprecated('Use partitionStatsDescriptor instead')
const PartitionStats$json = {
  '1': 'PartitionStats',
  '2': [
    {
      '1': 'partition_offsets',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.OffsetsRange',
      '10': 'partitionOffsets'
    },
    {'1': 'store_size_bytes', '3': 2, '4': 1, '5': 3, '10': 'storeSizeBytes'},
    {
      '1': 'last_write_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'lastWriteTime'
    },
    {
      '1': 'max_write_time_lag',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'maxWriteTimeLag'
    },
    {
      '1': 'bytes_written',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.MultipleWindowsStat',
      '10': 'bytesWritten'
    },
    {
      '1': 'partition_node_id',
      '3': 8,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'partitionNodeId',
    },
  ],
};

/// Descriptor for `PartitionStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitionStatsDescriptor = $convert.base64Decode(
    'Cg5QYXJ0aXRpb25TdGF0cxJEChFwYXJ0aXRpb25fb2Zmc2V0cxgBIAEoCzIXLllkYi5Ub3BpYy'
    '5PZmZzZXRzUmFuZ2VSEHBhcnRpdGlvbk9mZnNldHMSKAoQc3RvcmVfc2l6ZV9ieXRlcxgCIAEo'
    'A1IOc3RvcmVTaXplQnl0ZXMSQgoPbGFzdF93cml0ZV90aW1lGAMgASgLMhouZ29vZ2xlLnByb3'
    'RvYnVmLlRpbWVzdGFtcFINbGFzdFdyaXRlVGltZRJGChJtYXhfd3JpdGVfdGltZV9sYWcYBCAB'
    'KAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SD21heFdyaXRlVGltZUxhZxJDCg1ieXRlc1'
    '93cml0dGVuGAUgASgLMh4uWWRiLlRvcGljLk11bHRpcGxlV2luZG93c1N0YXRSDGJ5dGVzV3Jp'
    'dHRlbhIuChFwYXJ0aXRpb25fbm9kZV9pZBgIIAEoBUICGAFSD3BhcnRpdGlvbk5vZGVJZA==');

@$core.Deprecated('Use alterTopicRequestDescriptor instead')
const AlterTopicRequest$json = {
  '1': 'AlterTopicRequest',
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
      '1': 'alter_partitioning_settings',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.AlterPartitioningSettings',
      '10': 'alterPartitioningSettings'
    },
    {
      '1': 'set_retention_period',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'setRetentionPeriod'
    },
    {
      '1': 'set_retention_storage_mb',
      '3': 5,
      '4': 1,
      '5': 3,
      '8': {},
      '9': 0,
      '10': 'setRetentionStorageMb',
      '17': true
    },
    {
      '1': 'set_supported_codecs',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Topic.SupportedCodecs',
      '10': 'setSupportedCodecs'
    },
    {
      '1': 'set_partition_write_speed_bytes_per_second',
      '3': 8,
      '4': 1,
      '5': 3,
      '8': {},
      '9': 1,
      '10': 'setPartitionWriteSpeedBytesPerSecond',
      '17': true
    },
    {
      '1': 'set_partition_write_burst_bytes',
      '3': 9,
      '4': 1,
      '5': 3,
      '8': {},
      '9': 2,
      '10': 'setPartitionWriteBurstBytes',
      '17': true
    },
    {
      '1': 'alter_attributes',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.AlterTopicRequest.AlterAttributesEntry',
      '10': 'alterAttributes'
    },
    {
      '1': 'add_consumers',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.Consumer',
      '8': {},
      '10': 'addConsumers'
    },
    {
      '1': 'drop_consumers',
      '3': 12,
      '4': 3,
      '5': 9,
      '8': {},
      '10': 'dropConsumers'
    },
    {
      '1': 'alter_consumers',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Topic.AlterConsumer',
      '8': {},
      '10': 'alterConsumers'
    },
    {
      '1': 'set_metering_mode',
      '3': 14,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Topic.MeteringMode',
      '10': 'setMeteringMode'
    },
  ],
  '3': [AlterTopicRequest_AlterAttributesEntry$json],
  '8': [
    {'1': '_set_retention_storage_mb'},
    {'1': '_set_partition_write_speed_bytes_per_second'},
    {'1': '_set_partition_write_burst_bytes'},
  ],
  '9': [
    {'1': 6, '2': 7},
  ],
};

@$core.Deprecated('Use alterTopicRequestDescriptor instead')
const AlterTopicRequest_AlterAttributesEntry$json = {
  '1': 'AlterAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `AlterTopicRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alterTopicRequestDescriptor = $convert.base64Decode(
    'ChFBbHRlclRvcGljUmVxdWVzdBJKChBvcGVyYXRpb25fcGFyYW1zGAEgASgLMh8uWWRiLk9wZX'
    'JhdGlvbnMuT3BlcmF0aW9uUGFyYW1zUg9vcGVyYXRpb25QYXJhbXMSEgoEcGF0aBgCIAEoCVIE'
    'cGF0aBJkChthbHRlcl9wYXJ0aXRpb25pbmdfc2V0dGluZ3MYAyABKAsyJC5ZZGIuVG9waWMuQW'
    'x0ZXJQYXJ0aXRpb25pbmdTZXR0aW5nc1IZYWx0ZXJQYXJ0aXRpb25pbmdTZXR0aW5ncxJLChRz'
    'ZXRfcmV0ZW50aW9uX3BlcmlvZBgEIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblISc2'
    'V0UmV0ZW50aW9uUGVyaW9kEkYKGHNldF9yZXRlbnRpb25fc3RvcmFnZV9tYhgFIAEoA0IIsuYq'
    'BD49IDBIAFIVc2V0UmV0ZW50aW9uU3RvcmFnZU1iiAEBEkwKFHNldF9zdXBwb3J0ZWRfY29kZW'
    'NzGAcgASgLMhouWWRiLlRvcGljLlN1cHBvcnRlZENvZGVjc1ISc2V0U3VwcG9ydGVkQ29kZWNz'
    'EmcKKnNldF9wYXJ0aXRpb25fd3JpdGVfc3BlZWRfYnl0ZXNfcGVyX3NlY29uZBgIIAEoA0IIsu'
    'YqBD49IDBIAVIkc2V0UGFydGl0aW9uV3JpdGVTcGVlZEJ5dGVzUGVyU2Vjb25kiAEBElMKH3Nl'
    'dF9wYXJ0aXRpb25fd3JpdGVfYnVyc3RfYnl0ZXMYCSABKANCCLLmKgQ+PSAwSAJSG3NldFBhcn'
    'RpdGlvbldyaXRlQnVyc3RCeXRlc4gBARJcChBhbHRlcl9hdHRyaWJ1dGVzGAogAygLMjEuWWRi'
    'LlRvcGljLkFsdGVyVG9waWNSZXF1ZXN0LkFsdGVyQXR0cmlidXRlc0VudHJ5Ug9hbHRlckF0dH'
    'JpYnV0ZXMSQQoNYWRkX2NvbnN1bWVycxgLIAMoCzITLllkYi5Ub3BpYy5Db25zdW1lckIHmuYq'
    'Axi4F1IMYWRkQ29uc3VtZXJzEi4KDmRyb3BfY29uc3VtZXJzGAwgAygJQgea5ioDGLgXUg1kcm'
    '9wQ29uc3VtZXJzEkoKD2FsdGVyX2NvbnN1bWVycxgNIAMoCzIYLllkYi5Ub3BpYy5BbHRlckNv'
    'bnN1bWVyQgea5ioDGLgXUg5hbHRlckNvbnN1bWVycxJDChFzZXRfbWV0ZXJpbmdfbW9kZRgOIA'
    'EoDjIXLllkYi5Ub3BpYy5NZXRlcmluZ01vZGVSD3NldE1ldGVyaW5nTW9kZRpCChRBbHRlckF0'
    'dHJpYnV0ZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6Aj'
    'gBQhsKGV9zZXRfcmV0ZW50aW9uX3N0b3JhZ2VfbWJCLQorX3NldF9wYXJ0aXRpb25fd3JpdGVf'
    'c3BlZWRfYnl0ZXNfcGVyX3NlY29uZEIiCiBfc2V0X3BhcnRpdGlvbl93cml0ZV9idXJzdF9ieX'
    'Rlc0oECAYQBw==');

@$core.Deprecated('Use alterTopicResponseDescriptor instead')
const AlterTopicResponse$json = {
  '1': 'AlterTopicResponse',
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

/// Descriptor for `AlterTopicResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alterTopicResponseDescriptor = $convert.base64Decode(
    'ChJBbHRlclRvcGljUmVzcG9uc2USNwoJb3BlcmF0aW9uGAEgASgLMhkuWWRiLk9wZXJhdGlvbn'
    'MuT3BlcmF0aW9uUglvcGVyYXRpb24=');

@$core.Deprecated('Use alterTopicResultDescriptor instead')
const AlterTopicResult$json = {
  '1': 'AlterTopicResult',
};

/// Descriptor for `AlterTopicResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alterTopicResultDescriptor =
    $convert.base64Decode('ChBBbHRlclRvcGljUmVzdWx0');

@$core.Deprecated('Use dropTopicRequestDescriptor instead')
const DropTopicRequest$json = {
  '1': 'DropTopicRequest',
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

/// Descriptor for `DropTopicRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dropTopicRequestDescriptor = $convert.base64Decode(
    'ChBEcm9wVG9waWNSZXF1ZXN0EkoKEG9wZXJhdGlvbl9wYXJhbXMYASABKAsyHy5ZZGIuT3Blcm'
    'F0aW9ucy5PcGVyYXRpb25QYXJhbXNSD29wZXJhdGlvblBhcmFtcxISCgRwYXRoGAIgASgJUgRw'
    'YXRo');

@$core.Deprecated('Use dropTopicResponseDescriptor instead')
const DropTopicResponse$json = {
  '1': 'DropTopicResponse',
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

/// Descriptor for `DropTopicResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dropTopicResponseDescriptor = $convert.base64Decode(
    'ChFEcm9wVG9waWNSZXNwb25zZRI3CglvcGVyYXRpb24YASABKAsyGS5ZZGIuT3BlcmF0aW9ucy'
    '5PcGVyYXRpb25SCW9wZXJhdGlvbg==');

@$core.Deprecated('Use dropTopicResultDescriptor instead')
const DropTopicResult$json = {
  '1': 'DropTopicResult',
};

/// Descriptor for `DropTopicResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dropTopicResultDescriptor =
    $convert.base64Decode('Cg9Ecm9wVG9waWNSZXN1bHQ=');

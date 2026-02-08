// This is a generated file - do not edit.
//
// Generated from ydb_operation.proto.

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

@$core.Deprecated('Use operationParamsDescriptor instead')
const OperationParams$json = {
  '1': 'OperationParams',
  '2': [
    {
      '1': 'operation_mode',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Operations.OperationParams.OperationMode',
      '10': 'operationMode'
    },
    {
      '1': 'operation_timeout',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'operationTimeout'
    },
    {
      '1': 'cancel_after',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'cancelAfter'
    },
    {
      '1': 'labels',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Operations.OperationParams.LabelsEntry',
      '8': {},
      '10': 'labels'
    },
    {
      '1': 'report_cost_info',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.Ydb.FeatureFlag.Status',
      '10': 'reportCostInfo'
    },
  ],
  '3': [OperationParams_LabelsEntry$json],
  '4': [OperationParams_OperationMode$json],
};

@$core.Deprecated('Use operationParamsDescriptor instead')
const OperationParams_LabelsEntry$json = {
  '1': 'LabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use operationParamsDescriptor instead')
const OperationParams_OperationMode$json = {
  '1': 'OperationMode',
  '2': [
    {'1': 'OPERATION_MODE_UNSPECIFIED', '2': 0},
    {'1': 'SYNC', '2': 1},
    {'1': 'ASYNC', '2': 2},
  ],
};

/// Descriptor for `OperationParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operationParamsDescriptor = $convert.base64Decode(
    'Cg9PcGVyYXRpb25QYXJhbXMSVAoOb3BlcmF0aW9uX21vZGUYASABKA4yLS5ZZGIuT3BlcmF0aW'
    '9ucy5PcGVyYXRpb25QYXJhbXMuT3BlcmF0aW9uTW9kZVINb3BlcmF0aW9uTW9kZRJGChFvcGVy'
    'YXRpb25fdGltZW91dBgCIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIQb3BlcmF0aW'
    '9uVGltZW91dBI8CgxjYW5jZWxfYWZ0ZXIYAyABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRp'
    'b25SC2NhbmNlbEFmdGVyElUKBmxhYmVscxgEIAMoCzIrLllkYi5PcGVyYXRpb25zLk9wZXJhdG'
    'lvblBhcmFtcy5MYWJlbHNFbnRyeUIQouYqAxiAAarmKgUKAxiAAVIGbGFiZWxzEkEKEHJlcG9y'
    'dF9jb3N0X2luZm8YBSABKA4yFy5ZZGIuRmVhdHVyZUZsYWcuU3RhdHVzUg5yZXBvcnRDb3N0SW'
    '5mbxo5CgtMYWJlbHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFs'
    'dWU6AjgBIkQKDU9wZXJhdGlvbk1vZGUSHgoaT1BFUkFUSU9OX01PREVfVU5TUEVDSUZJRUQQAB'
    'IICgRTWU5DEAESCQoFQVNZTkMQAg==');

@$core.Deprecated('Use getOperationRequestDescriptor instead')
const GetOperationRequest$json = {
  '1': 'GetOperationRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `GetOperationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOperationRequestDescriptor =
    $convert.base64Decode(
        'ChNHZXRPcGVyYXRpb25SZXF1ZXN0EhQKAmlkGAEgASgJQgSQ5ioBUgJpZA==');

@$core.Deprecated('Use getOperationResponseDescriptor instead')
const GetOperationResponse$json = {
  '1': 'GetOperationResponse',
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

/// Descriptor for `GetOperationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOperationResponseDescriptor = $convert.base64Decode(
    'ChRHZXRPcGVyYXRpb25SZXNwb25zZRI3CglvcGVyYXRpb24YASABKAsyGS5ZZGIuT3BlcmF0aW'
    '9ucy5PcGVyYXRpb25SCW9wZXJhdGlvbg==');

@$core.Deprecated('Use cancelOperationRequestDescriptor instead')
const CancelOperationRequest$json = {
  '1': 'CancelOperationRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `CancelOperationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelOperationRequestDescriptor =
    $convert.base64Decode(
        'ChZDYW5jZWxPcGVyYXRpb25SZXF1ZXN0EhQKAmlkGAEgASgJQgSQ5ioBUgJpZA==');

@$core.Deprecated('Use cancelOperationResponseDescriptor instead')
const CancelOperationResponse$json = {
  '1': 'CancelOperationResponse',
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

/// Descriptor for `CancelOperationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelOperationResponseDescriptor = $convert.base64Decode(
    'ChdDYW5jZWxPcGVyYXRpb25SZXNwb25zZRIxCgZzdGF0dXMYASABKA4yGS5ZZGIuU3RhdHVzSW'
    'RzLlN0YXR1c0NvZGVSBnN0YXR1cxIvCgZpc3N1ZXMYAiADKAsyFy5ZZGIuSXNzdWUuSXNzdWVN'
    'ZXNzYWdlUgZpc3N1ZXM=');

@$core.Deprecated('Use forgetOperationRequestDescriptor instead')
const ForgetOperationRequest$json = {
  '1': 'ForgetOperationRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `ForgetOperationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgetOperationRequestDescriptor =
    $convert.base64Decode(
        'ChZGb3JnZXRPcGVyYXRpb25SZXF1ZXN0EhQKAmlkGAEgASgJQgSQ5ioBUgJpZA==');

@$core.Deprecated('Use forgetOperationResponseDescriptor instead')
const ForgetOperationResponse$json = {
  '1': 'ForgetOperationResponse',
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

/// Descriptor for `ForgetOperationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgetOperationResponseDescriptor = $convert.base64Decode(
    'ChdGb3JnZXRPcGVyYXRpb25SZXNwb25zZRIxCgZzdGF0dXMYASABKA4yGS5ZZGIuU3RhdHVzSW'
    'RzLlN0YXR1c0NvZGVSBnN0YXR1cxIvCgZpc3N1ZXMYAiADKAsyFy5ZZGIuSXNzdWUuSXNzdWVN'
    'ZXNzYWdlUgZpc3N1ZXM=');

@$core.Deprecated('Use listOperationsRequestDescriptor instead')
const ListOperationsRequest$json = {
  '1': 'ListOperationsRequest',
  '2': [
    {'1': 'kind', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'kind'},
    {'1': 'page_size', '3': 2, '4': 1, '5': 4, '10': 'pageSize'},
    {'1': 'page_token', '3': 3, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListOperationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOperationsRequestDescriptor = $convert.base64Decode(
    'ChVMaXN0T3BlcmF0aW9uc1JlcXVlc3QSGAoEa2luZBgBIAEoCUIEkOYqAVIEa2luZBIbCglwYW'
    'dlX3NpemUYAiABKARSCHBhZ2VTaXplEh0KCnBhZ2VfdG9rZW4YAyABKAlSCXBhZ2VUb2tlbg==');

@$core.Deprecated('Use listOperationsResponseDescriptor instead')
const ListOperationsResponse$json = {
  '1': 'ListOperationsResponse',
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
      '1': 'operations',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Operations.Operation',
      '10': 'operations'
    },
    {'1': 'next_page_token', '3': 4, '4': 1, '5': 9, '10': 'nextPageToken'},
  ],
};

/// Descriptor for `ListOperationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOperationsResponseDescriptor = $convert.base64Decode(
    'ChZMaXN0T3BlcmF0aW9uc1Jlc3BvbnNlEjEKBnN0YXR1cxgBIAEoDjIZLllkYi5TdGF0dXNJZH'
    'MuU3RhdHVzQ29kZVIGc3RhdHVzEi8KBmlzc3VlcxgCIAMoCzIXLllkYi5Jc3N1ZS5Jc3N1ZU1l'
    'c3NhZ2VSBmlzc3VlcxI5CgpvcGVyYXRpb25zGAMgAygLMhkuWWRiLk9wZXJhdGlvbnMuT3Blcm'
    'F0aW9uUgpvcGVyYXRpb25zEiYKD25leHRfcGFnZV90b2tlbhgEIAEoCVINbmV4dFBhZ2VUb2tl'
    'bg==');

@$core.Deprecated('Use operationDescriptor instead')
const Operation$json = {
  '1': 'Operation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'ready', '3': 2, '4': 1, '5': 8, '10': 'ready'},
    {
      '1': 'status',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.Ydb.StatusIds.StatusCode',
      '10': 'status'
    },
    {
      '1': 'issues',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Issue.IssueMessage',
      '10': 'issues'
    },
    {
      '1': 'result',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'result'
    },
    {
      '1': 'metadata',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'metadata'
    },
    {
      '1': 'cost_info',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.Ydb.CostInfo',
      '10': 'costInfo'
    },
  ],
};

/// Descriptor for `Operation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operationDescriptor = $convert.base64Decode(
    'CglPcGVyYXRpb24SDgoCaWQYASABKAlSAmlkEhQKBXJlYWR5GAIgASgIUgVyZWFkeRIxCgZzdG'
    'F0dXMYAyABKA4yGS5ZZGIuU3RhdHVzSWRzLlN0YXR1c0NvZGVSBnN0YXR1cxIvCgZpc3N1ZXMY'
    'BCADKAsyFy5ZZGIuSXNzdWUuSXNzdWVNZXNzYWdlUgZpc3N1ZXMSLAoGcmVzdWx0GAUgASgLMh'
    'QuZ29vZ2xlLnByb3RvYnVmLkFueVIGcmVzdWx0EjAKCG1ldGFkYXRhGAYgASgLMhQuZ29vZ2xl'
    'LnByb3RvYnVmLkFueVIIbWV0YWRhdGESKgoJY29zdF9pbmZvGAcgASgLMg0uWWRiLkNvc3RJbm'
    'ZvUghjb3N0SW5mbw==');

// This is a generated file - do not edit.
//
// Generated from ydb_common.proto.

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

@$core.Deprecated('Use featureFlagDescriptor instead')
const FeatureFlag$json = {
  '1': 'FeatureFlag',
  '4': [FeatureFlag_Status$json],
};

@$core.Deprecated('Use featureFlagDescriptor instead')
const FeatureFlag_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'STATUS_UNSPECIFIED', '2': 0},
    {'1': 'ENABLED', '2': 1},
    {'1': 'DISABLED', '2': 2},
  ],
};

/// Descriptor for `FeatureFlag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureFlagDescriptor = $convert.base64Decode(
    'CgtGZWF0dXJlRmxhZyI7CgZTdGF0dXMSFgoSU1RBVFVTX1VOU1BFQ0lGSUVEEAASCwoHRU5BQk'
    'xFRBABEgwKCERJU0FCTEVEEAI=');

@$core.Deprecated('Use costInfoDescriptor instead')
const CostInfo$json = {
  '1': 'CostInfo',
  '2': [
    {'1': 'consumed_units', '3': 1, '4': 1, '5': 1, '10': 'consumedUnits'},
  ],
};

/// Descriptor for `CostInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List costInfoDescriptor = $convert.base64Decode(
    'CghDb3N0SW5mbxIlCg5jb25zdW1lZF91bml0cxgBIAEoAVINY29uc3VtZWRVbml0cw==');

@$core.Deprecated('Use quotaExceededDescriptor instead')
const QuotaExceeded$json = {
  '1': 'QuotaExceeded',
  '2': [
    {'1': 'disk', '3': 1, '4': 1, '5': 8, '10': 'disk'},
  ],
};

/// Descriptor for `QuotaExceeded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quotaExceededDescriptor =
    $convert.base64Decode('Cg1RdW90YUV4Y2VlZGVkEhIKBGRpc2sYASABKAhSBGRpc2s=');

@$core.Deprecated('Use virtualTimestampDescriptor instead')
const VirtualTimestamp$json = {
  '1': 'VirtualTimestamp',
  '2': [
    {'1': 'plan_step', '3': 1, '4': 1, '5': 4, '10': 'planStep'},
    {'1': 'tx_id', '3': 2, '4': 1, '5': 4, '10': 'txId'},
  ],
};

/// Descriptor for `VirtualTimestamp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List virtualTimestampDescriptor = $convert.base64Decode(
    'ChBWaXJ0dWFsVGltZXN0YW1wEhsKCXBsYW5fc3RlcBgBIAEoBFIIcGxhblN0ZXASEwoFdHhfaW'
    'QYAiABKARSBHR4SWQ=');

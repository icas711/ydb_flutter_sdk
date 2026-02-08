// This is a generated file - do not edit.
//
// Generated from annotations/validation.proto.

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

@$core.Deprecated('Use limitDescriptor instead')
const Limit$json = {
  '1': 'Limit',
  '2': [
    {
      '1': 'range',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Limit.Range',
      '9': 0,
      '10': 'range'
    },
    {'1': 'lt', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'lt'},
    {'1': 'le', '3': 3, '4': 1, '5': 13, '9': 0, '10': 'le'},
    {'1': 'eq', '3': 4, '4': 1, '5': 13, '9': 0, '10': 'eq'},
    {'1': 'ge', '3': 5, '4': 1, '5': 13, '9': 0, '10': 'ge'},
    {'1': 'gt', '3': 6, '4': 1, '5': 13, '9': 0, '10': 'gt'},
  ],
  '3': [Limit_Range$json],
  '8': [
    {'1': 'kind'},
  ],
};

@$core.Deprecated('Use limitDescriptor instead')
const Limit_Range$json = {
  '1': 'Range',
  '2': [
    {'1': 'min', '3': 1, '4': 1, '5': 13, '10': 'min'},
    {'1': 'max', '3': 2, '4': 1, '5': 13, '10': 'max'},
  ],
};

/// Descriptor for `Limit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List limitDescriptor = $convert.base64Decode(
    'CgVMaW1pdBIoCgVyYW5nZRgBIAEoCzIQLllkYi5MaW1pdC5SYW5nZUgAUgVyYW5nZRIQCgJsdB'
    'gCIAEoDUgAUgJsdBIQCgJsZRgDIAEoDUgAUgJsZRIQCgJlcRgEIAEoDUgAUgJlcRIQCgJnZRgF'
    'IAEoDUgAUgJnZRIQCgJndBgGIAEoDUgAUgJndBorCgVSYW5nZRIQCgNtaW4YASABKA1SA21pbh'
    'IQCgNtYXgYAiABKA1SA21heEIGCgRraW5k');

@$core.Deprecated('Use mapKeyDescriptor instead')
const MapKey$json = {
  '1': 'MapKey',
  '2': [
    {'1': 'length', '3': 1, '4': 1, '5': 11, '6': '.Ydb.Limit', '10': 'length'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `MapKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapKeyDescriptor = $convert.base64Decode(
    'CgZNYXBLZXkSIgoGbGVuZ3RoGAEgASgLMgouWWRiLkxpbWl0UgZsZW5ndGgSFAoFdmFsdWUYAi'
    'ABKAlSBXZhbHVl');

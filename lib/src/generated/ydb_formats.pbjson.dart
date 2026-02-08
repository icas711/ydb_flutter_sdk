// This is a generated file - do not edit.
//
// Generated from ydb_formats.proto.

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

@$core.Deprecated('Use arrowBatchSettingsDescriptor instead')
const ArrowBatchSettings$json = {
  '1': 'ArrowBatchSettings',
  '2': [
    {'1': 'schema', '3': 1, '4': 1, '5': 12, '10': 'schema'},
  ],
};

/// Descriptor for `ArrowBatchSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arrowBatchSettingsDescriptor =
    $convert.base64Decode(
        'ChJBcnJvd0JhdGNoU2V0dGluZ3MSFgoGc2NoZW1hGAEgASgMUgZzY2hlbWE=');

@$core.Deprecated('Use csvSettingsDescriptor instead')
const CsvSettings$json = {
  '1': 'CsvSettings',
  '2': [
    {'1': 'skip_rows', '3': 1, '4': 1, '5': 13, '10': 'skipRows'},
    {'1': 'delimiter', '3': 2, '4': 1, '5': 12, '10': 'delimiter'},
    {'1': 'null_value', '3': 3, '4': 1, '5': 12, '10': 'nullValue'},
    {'1': 'header', '3': 4, '4': 1, '5': 8, '10': 'header'},
    {
      '1': 'quoting',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Formats.CsvSettings.Quoting',
      '10': 'quoting'
    },
  ],
  '3': [CsvSettings_Quoting$json],
};

@$core.Deprecated('Use csvSettingsDescriptor instead')
const CsvSettings_Quoting$json = {
  '1': 'Quoting',
  '2': [
    {'1': 'disabled', '3': 1, '4': 1, '5': 8, '10': 'disabled'},
    {'1': 'quote_char', '3': 2, '4': 1, '5': 12, '10': 'quoteChar'},
    {
      '1': 'double_quote_disabled',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'doubleQuoteDisabled'
    },
  ],
};

/// Descriptor for `CsvSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List csvSettingsDescriptor = $convert.base64Decode(
    'CgtDc3ZTZXR0aW5ncxIbCglza2lwX3Jvd3MYASABKA1SCHNraXBSb3dzEhwKCWRlbGltaXRlch'
    'gCIAEoDFIJZGVsaW1pdGVyEh0KCm51bGxfdmFsdWUYAyABKAxSCW51bGxWYWx1ZRIWCgZoZWFk'
    'ZXIYBCABKAhSBmhlYWRlchI6CgdxdW90aW5nGAUgASgLMiAuWWRiLkZvcm1hdHMuQ3N2U2V0dG'
    'luZ3MuUXVvdGluZ1IHcXVvdGluZxp4CgdRdW90aW5nEhoKCGRpc2FibGVkGAEgASgIUghkaXNh'
    'YmxlZBIdCgpxdW90ZV9jaGFyGAIgASgMUglxdW90ZUNoYXISMgoVZG91YmxlX3F1b3RlX2Rpc2'
    'FibGVkGAMgASgIUhNkb3VibGVRdW90ZURpc2FibGVk');

@$core.Deprecated('Use arrowFormatSettingsDescriptor instead')
const ArrowFormatSettings$json = {
  '1': 'ArrowFormatSettings',
  '2': [
    {
      '1': 'compression_codec',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Formats.ArrowFormatSettings.CompressionCodec',
      '10': 'compressionCodec'
    },
  ],
  '3': [ArrowFormatSettings_CompressionCodec$json],
};

@$core.Deprecated('Use arrowFormatSettingsDescriptor instead')
const ArrowFormatSettings_CompressionCodec$json = {
  '1': 'CompressionCodec',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Formats.ArrowFormatSettings.CompressionCodec.Type',
      '10': 'type'
    },
    {'1': 'level', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'level', '17': true},
  ],
  '4': [ArrowFormatSettings_CompressionCodec_Type$json],
  '8': [
    {'1': '_level'},
  ],
};

@$core.Deprecated('Use arrowFormatSettingsDescriptor instead')
const ArrowFormatSettings_CompressionCodec_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'TYPE_UNSPECIFIED', '2': 0},
    {'1': 'TYPE_NONE', '2': 1},
    {'1': 'TYPE_ZSTD', '2': 2},
    {'1': 'TYPE_LZ4_FRAME', '2': 3},
  ],
};

/// Descriptor for `ArrowFormatSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arrowFormatSettingsDescriptor = $convert.base64Decode(
    'ChNBcnJvd0Zvcm1hdFNldHRpbmdzEl4KEWNvbXByZXNzaW9uX2NvZGVjGAEgASgLMjEuWWRiLk'
    'Zvcm1hdHMuQXJyb3dGb3JtYXRTZXR0aW5ncy5Db21wcmVzc2lvbkNvZGVjUhBjb21wcmVzc2lv'
    'bkNvZGVjGtMBChBDb21wcmVzc2lvbkNvZGVjEkoKBHR5cGUYASABKA4yNi5ZZGIuRm9ybWF0cy'
    '5BcnJvd0Zvcm1hdFNldHRpbmdzLkNvbXByZXNzaW9uQ29kZWMuVHlwZVIEdHlwZRIZCgVsZXZl'
    'bBgCIAEoBUgAUgVsZXZlbIgBASJOCgRUeXBlEhQKEFRZUEVfVU5TUEVDSUZJRUQQABINCglUWV'
    'BFX05PTkUQARINCglUWVBFX1pTVEQQAhISCg5UWVBFX0xaNF9GUkFNRRADQggKBl9sZXZlbA==');

@$core.Deprecated('Use arrowFormatMetaDescriptor instead')
const ArrowFormatMeta$json = {
  '1': 'ArrowFormatMeta',
  '2': [
    {'1': 'schema', '3': 1, '4': 1, '5': 12, '10': 'schema'},
  ],
};

/// Descriptor for `ArrowFormatMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arrowFormatMetaDescriptor = $convert
    .base64Decode('Cg9BcnJvd0Zvcm1hdE1ldGESFgoGc2NoZW1hGAEgASgMUgZzY2hlbWE=');

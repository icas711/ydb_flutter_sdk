// This is a generated file - do not edit.
//
// Generated from ydb_value.proto.

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

@$core.Deprecated('Use decimalTypeDescriptor instead')
const DecimalType$json = {
  '1': 'DecimalType',
  '2': [
    {'1': 'precision', '3': 1, '4': 1, '5': 13, '10': 'precision'},
    {'1': 'scale', '3': 2, '4': 1, '5': 13, '10': 'scale'},
  ],
};

/// Descriptor for `DecimalType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decimalTypeDescriptor = $convert.base64Decode(
    'CgtEZWNpbWFsVHlwZRIcCglwcmVjaXNpb24YASABKA1SCXByZWNpc2lvbhIUCgVzY2FsZRgCIA'
    'EoDVIFc2NhbGU=');

@$core.Deprecated('Use optionalTypeDescriptor instead')
const OptionalType$json = {
  '1': 'OptionalType',
  '2': [
    {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.Ydb.Type', '10': 'item'},
  ],
};

/// Descriptor for `OptionalType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionalTypeDescriptor = $convert.base64Decode(
    'CgxPcHRpb25hbFR5cGUSHQoEaXRlbRgBIAEoCzIJLllkYi5UeXBlUgRpdGVt');

@$core.Deprecated('Use listTypeDescriptor instead')
const ListType$json = {
  '1': 'ListType',
  '2': [
    {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.Ydb.Type', '10': 'item'},
  ],
};

/// Descriptor for `ListType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTypeDescriptor = $convert
    .base64Decode('CghMaXN0VHlwZRIdCgRpdGVtGAEgASgLMgkuWWRiLlR5cGVSBGl0ZW0=');

@$core.Deprecated('Use variantTypeDescriptor instead')
const VariantType$json = {
  '1': 'VariantType',
  '2': [
    {
      '1': 'tuple_items',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TupleType',
      '9': 0,
      '10': 'tupleItems'
    },
    {
      '1': 'struct_items',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.StructType',
      '9': 0,
      '10': 'structItems'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `VariantType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variantTypeDescriptor = $convert.base64Decode(
    'CgtWYXJpYW50VHlwZRIxCgt0dXBsZV9pdGVtcxgBIAEoCzIOLllkYi5UdXBsZVR5cGVIAFIKdH'
    'VwbGVJdGVtcxI0CgxzdHJ1Y3RfaXRlbXMYAiABKAsyDy5ZZGIuU3RydWN0VHlwZUgAUgtzdHJ1'
    'Y3RJdGVtc0IGCgR0eXBl');

@$core.Deprecated('Use tupleTypeDescriptor instead')
const TupleType$json = {
  '1': 'TupleType',
  '2': [
    {
      '1': 'elements',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Type',
      '10': 'elements'
    },
  ],
};

/// Descriptor for `TupleType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tupleTypeDescriptor = $convert.base64Decode(
    'CglUdXBsZVR5cGUSJQoIZWxlbWVudHMYASADKAsyCS5ZZGIuVHlwZVIIZWxlbWVudHM=');

@$core.Deprecated('Use structMemberDescriptor instead')
const StructMember$json = {
  '1': 'StructMember',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 11, '6': '.Ydb.Type', '10': 'type'},
  ],
};

/// Descriptor for `StructMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List structMemberDescriptor = $convert.base64Decode(
    'CgxTdHJ1Y3RNZW1iZXISEgoEbmFtZRgBIAEoCVIEbmFtZRIdCgR0eXBlGAIgASgLMgkuWWRiLl'
    'R5cGVSBHR5cGU=');

@$core.Deprecated('Use structTypeDescriptor instead')
const StructType$json = {
  '1': 'StructType',
  '2': [
    {
      '1': 'members',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.StructMember',
      '10': 'members'
    },
  ],
};

/// Descriptor for `StructType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List structTypeDescriptor = $convert.base64Decode(
    'CgpTdHJ1Y3RUeXBlEisKB21lbWJlcnMYASADKAsyES5ZZGIuU3RydWN0TWVtYmVyUgdtZW1iZX'
    'Jz');

@$core.Deprecated('Use dictTypeDescriptor instead')
const DictType$json = {
  '1': 'DictType',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.Ydb.Type', '10': 'key'},
    {
      '1': 'payload',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Type',
      '10': 'payload'
    },
  ],
};

/// Descriptor for `DictType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictTypeDescriptor = $convert.base64Decode(
    'CghEaWN0VHlwZRIbCgNrZXkYASABKAsyCS5ZZGIuVHlwZVIDa2V5EiMKB3BheWxvYWQYAiABKA'
    'syCS5ZZGIuVHlwZVIHcGF5bG9hZA==');

@$core.Deprecated('Use taggedTypeDescriptor instead')
const TaggedType$json = {
  '1': 'TaggedType',
  '2': [
    {'1': 'tag', '3': 1, '4': 1, '5': 9, '10': 'tag'},
    {'1': 'type', '3': 2, '4': 1, '5': 11, '6': '.Ydb.Type', '10': 'type'},
  ],
};

/// Descriptor for `TaggedType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taggedTypeDescriptor = $convert.base64Decode(
    'CgpUYWdnZWRUeXBlEhAKA3RhZxgBIAEoCVIDdGFnEh0KBHR5cGUYAiABKAsyCS5ZZGIuVHlwZV'
    'IEdHlwZQ==');

@$core.Deprecated('Use pgTypeDescriptor instead')
const PgType$json = {
  '1': 'PgType',
  '2': [
    {'1': 'type_name', '3': 10, '4': 1, '5': 9, '10': 'typeName'},
    {'1': 'type_modifier', '3': 11, '4': 1, '5': 9, '10': 'typeModifier'},
    {'1': 'oid', '3': 1, '4': 1, '5': 13, '10': 'oid'},
    {'1': 'typlen', '3': 2, '4': 1, '5': 5, '10': 'typlen'},
    {'1': 'typmod', '3': 3, '4': 1, '5': 5, '10': 'typmod'},
  ],
};

/// Descriptor for `PgType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pgTypeDescriptor = $convert.base64Decode(
    'CgZQZ1R5cGUSGwoJdHlwZV9uYW1lGAogASgJUgh0eXBlTmFtZRIjCg10eXBlX21vZGlmaWVyGA'
    'sgASgJUgx0eXBlTW9kaWZpZXISEAoDb2lkGAEgASgNUgNvaWQSFgoGdHlwbGVuGAIgASgFUgZ0'
    'eXBsZW4SFgoGdHlwbW9kGAMgASgFUgZ0eXBtb2Q=');

@$core.Deprecated('Use typeDescriptor instead')
const Type$json = {
  '1': 'Type',
  '2': [
    {
      '1': 'type_id',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.Ydb.Type.PrimitiveTypeId',
      '9': 0,
      '10': 'typeId'
    },
    {
      '1': 'decimal_type',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.DecimalType',
      '9': 0,
      '10': 'decimalType'
    },
    {
      '1': 'optional_type',
      '3': 101,
      '4': 1,
      '5': 11,
      '6': '.Ydb.OptionalType',
      '9': 0,
      '10': 'optionalType'
    },
    {
      '1': 'list_type',
      '3': 102,
      '4': 1,
      '5': 11,
      '6': '.Ydb.ListType',
      '9': 0,
      '10': 'listType'
    },
    {
      '1': 'tuple_type',
      '3': 103,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TupleType',
      '9': 0,
      '10': 'tupleType'
    },
    {
      '1': 'struct_type',
      '3': 104,
      '4': 1,
      '5': 11,
      '6': '.Ydb.StructType',
      '9': 0,
      '10': 'structType'
    },
    {
      '1': 'dict_type',
      '3': 105,
      '4': 1,
      '5': 11,
      '6': '.Ydb.DictType',
      '9': 0,
      '10': 'dictType'
    },
    {
      '1': 'variant_type',
      '3': 106,
      '4': 1,
      '5': 11,
      '6': '.Ydb.VariantType',
      '9': 0,
      '10': 'variantType'
    },
    {
      '1': 'tagged_type',
      '3': 107,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TaggedType',
      '9': 0,
      '10': 'taggedType'
    },
    {
      '1': 'void_type',
      '3': 201,
      '4': 1,
      '5': 14,
      '6': '.google.protobuf.NullValue',
      '9': 0,
      '10': 'voidType'
    },
    {
      '1': 'null_type',
      '3': 202,
      '4': 1,
      '5': 14,
      '6': '.google.protobuf.NullValue',
      '9': 0,
      '10': 'nullType'
    },
    {
      '1': 'empty_list_type',
      '3': 203,
      '4': 1,
      '5': 14,
      '6': '.google.protobuf.NullValue',
      '9': 0,
      '10': 'emptyListType'
    },
    {
      '1': 'empty_dict_type',
      '3': 204,
      '4': 1,
      '5': 14,
      '6': '.google.protobuf.NullValue',
      '9': 0,
      '10': 'emptyDictType'
    },
    {
      '1': 'pg_type',
      '3': 205,
      '4': 1,
      '5': 11,
      '6': '.Ydb.PgType',
      '9': 0,
      '10': 'pgType'
    },
  ],
  '4': [Type_PrimitiveTypeId$json],
  '8': [
    {'1': 'type'},
  ],
};

@$core.Deprecated('Use typeDescriptor instead')
const Type_PrimitiveTypeId$json = {
  '1': 'PrimitiveTypeId',
  '2': [
    {'1': 'PRIMITIVE_TYPE_ID_UNSPECIFIED', '2': 0},
    {'1': 'BOOL', '2': 6},
    {'1': 'INT8', '2': 7},
    {'1': 'UINT8', '2': 5},
    {'1': 'INT16', '2': 8},
    {'1': 'UINT16', '2': 9},
    {'1': 'INT32', '2': 1},
    {'1': 'UINT32', '2': 2},
    {'1': 'INT64', '2': 3},
    {'1': 'UINT64', '2': 4},
    {'1': 'FLOAT', '2': 33},
    {'1': 'DOUBLE', '2': 32},
    {'1': 'DATE', '2': 48},
    {'1': 'DATETIME', '2': 49},
    {'1': 'TIMESTAMP', '2': 50},
    {'1': 'INTERVAL', '2': 51},
    {'1': 'TZ_DATE', '2': 52},
    {'1': 'TZ_DATETIME', '2': 53},
    {'1': 'TZ_TIMESTAMP', '2': 54},
    {'1': 'DATE32', '2': 64},
    {'1': 'DATETIME64', '2': 65},
    {'1': 'TIMESTAMP64', '2': 66},
    {'1': 'INTERVAL64', '2': 67},
    {'1': 'STRING', '2': 4097},
    {'1': 'UTF8', '2': 4608},
    {'1': 'YSON', '2': 4609},
    {'1': 'JSON', '2': 4610},
    {'1': 'UUID', '2': 4611},
    {'1': 'JSON_DOCUMENT', '2': 4612},
    {'1': 'DYNUMBER', '2': 4866},
  ],
};

/// Descriptor for `Type`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typeDescriptor = $convert.base64Decode(
    'CgRUeXBlEjQKB3R5cGVfaWQYASABKA4yGS5ZZGIuVHlwZS5QcmltaXRpdmVUeXBlSWRIAFIGdH'
    'lwZUlkEjUKDGRlY2ltYWxfdHlwZRgCIAEoCzIQLllkYi5EZWNpbWFsVHlwZUgAUgtkZWNpbWFs'
    'VHlwZRI4Cg1vcHRpb25hbF90eXBlGGUgASgLMhEuWWRiLk9wdGlvbmFsVHlwZUgAUgxvcHRpb2'
    '5hbFR5cGUSLAoJbGlzdF90eXBlGGYgASgLMg0uWWRiLkxpc3RUeXBlSABSCGxpc3RUeXBlEi8K'
    'CnR1cGxlX3R5cGUYZyABKAsyDi5ZZGIuVHVwbGVUeXBlSABSCXR1cGxlVHlwZRIyCgtzdHJ1Y3'
    'RfdHlwZRhoIAEoCzIPLllkYi5TdHJ1Y3RUeXBlSABSCnN0cnVjdFR5cGUSLAoJZGljdF90eXBl'
    'GGkgASgLMg0uWWRiLkRpY3RUeXBlSABSCGRpY3RUeXBlEjUKDHZhcmlhbnRfdHlwZRhqIAEoCz'
    'IQLllkYi5WYXJpYW50VHlwZUgAUgt2YXJpYW50VHlwZRIyCgt0YWdnZWRfdHlwZRhrIAEoCzIP'
    'LllkYi5UYWdnZWRUeXBlSABSCnRhZ2dlZFR5cGUSOgoJdm9pZF90eXBlGMkBIAEoDjIaLmdvb2'
    'dsZS5wcm90b2J1Zi5OdWxsVmFsdWVIAFIIdm9pZFR5cGUSOgoJbnVsbF90eXBlGMoBIAEoDjIa'
    'Lmdvb2dsZS5wcm90b2J1Zi5OdWxsVmFsdWVIAFIIbnVsbFR5cGUSRQoPZW1wdHlfbGlzdF90eX'
    'BlGMsBIAEoDjIaLmdvb2dsZS5wcm90b2J1Zi5OdWxsVmFsdWVIAFINZW1wdHlMaXN0VHlwZRJF'
    'Cg9lbXB0eV9kaWN0X3R5cGUYzAEgASgOMhouZ29vZ2xlLnByb3RvYnVmLk51bGxWYWx1ZUgAUg'
    '1lbXB0eURpY3RUeXBlEicKB3BnX3R5cGUYzQEgASgLMgsuWWRiLlBnVHlwZUgAUgZwZ1R5cGUi'
    'rQMKD1ByaW1pdGl2ZVR5cGVJZBIhCh1QUklNSVRJVkVfVFlQRV9JRF9VTlNQRUNJRklFRBAAEg'
    'gKBEJPT0wQBhIICgRJTlQ4EAcSCQoFVUlOVDgQBRIJCgVJTlQxNhAIEgoKBlVJTlQxNhAJEgkK'
    'BUlOVDMyEAESCgoGVUlOVDMyEAISCQoFSU5UNjQQAxIKCgZVSU5UNjQQBBIJCgVGTE9BVBAhEg'
    'oKBkRPVUJMRRAgEggKBERBVEUQMBIMCghEQVRFVElNRRAxEg0KCVRJTUVTVEFNUBAyEgwKCElO'
    'VEVSVkFMEDMSCwoHVFpfREFURRA0Eg8KC1RaX0RBVEVUSU1FEDUSEAoMVFpfVElNRVNUQU1QED'
    'YSCgoGREFURTMyEEASDgoKREFURVRJTUU2NBBBEg8KC1RJTUVTVEFNUDY0EEISDgoKSU5URVJW'
    'QUw2NBBDEgsKBlNUUklORxCBIBIJCgRVVEY4EIAkEgkKBFlTT04QgSQSCQoESlNPThCCJBIJCg'
    'RVVUlEEIMkEhIKDUpTT05fRE9DVU1FTlQQhCQSDQoIRFlOVU1CRVIQgiZCBgoEdHlwZQ==');

@$core.Deprecated('Use valuePairDescriptor instead')
const ValuePair$json = {
  '1': 'ValuePair',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.Ydb.Value', '10': 'key'},
    {
      '1': 'payload',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Value',
      '10': 'payload'
    },
  ],
};

/// Descriptor for `ValuePair`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valuePairDescriptor = $convert.base64Decode(
    'CglWYWx1ZVBhaXISHAoDa2V5GAEgASgLMgouWWRiLlZhbHVlUgNrZXkSJAoHcGF5bG9hZBgCIA'
    'EoCzIKLllkYi5WYWx1ZVIHcGF5bG9hZA==');

@$core.Deprecated('Use valueDescriptor instead')
const Value$json = {
  '1': 'Value',
  '2': [
    {'1': 'bool_value', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'int32_value', '3': 2, '4': 1, '5': 15, '9': 0, '10': 'int32Value'},
    {'1': 'uint32_value', '3': 3, '4': 1, '5': 7, '9': 0, '10': 'uint32Value'},
    {'1': 'int64_value', '3': 4, '4': 1, '5': 16, '9': 0, '10': 'int64Value'},
    {'1': 'uint64_value', '3': 5, '4': 1, '5': 6, '9': 0, '10': 'uint64Value'},
    {'1': 'float_value', '3': 6, '4': 1, '5': 2, '9': 0, '10': 'floatValue'},
    {'1': 'double_value', '3': 7, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    {'1': 'bytes_value', '3': 8, '4': 1, '5': 12, '9': 0, '10': 'bytesValue'},
    {'1': 'text_value', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'textValue'},
    {
      '1': 'null_flag_value',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.google.protobuf.NullValue',
      '9': 0,
      '10': 'nullFlagValue'
    },
    {
      '1': 'nested_value',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Value',
      '9': 0,
      '10': 'nestedValue'
    },
    {'1': 'low_128', '3': 15, '4': 1, '5': 6, '9': 0, '10': 'low128'},
    {'1': 'items', '3': 12, '4': 3, '5': 11, '6': '.Ydb.Value', '10': 'items'},
    {
      '1': 'pairs',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.Ydb.ValuePair',
      '10': 'pairs'
    },
    {'1': 'variant_index', '3': 14, '4': 1, '5': 13, '10': 'variantIndex'},
    {'1': 'high_128', '3': 16, '4': 1, '5': 6, '10': 'high128'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueDescriptor = $convert.base64Decode(
    'CgVWYWx1ZRIfCgpib29sX3ZhbHVlGAEgASgISABSCWJvb2xWYWx1ZRIhCgtpbnQzMl92YWx1ZR'
    'gCIAEoD0gAUgppbnQzMlZhbHVlEiMKDHVpbnQzMl92YWx1ZRgDIAEoB0gAUgt1aW50MzJWYWx1'
    'ZRIhCgtpbnQ2NF92YWx1ZRgEIAEoEEgAUgppbnQ2NFZhbHVlEiMKDHVpbnQ2NF92YWx1ZRgFIA'
    'EoBkgAUgt1aW50NjRWYWx1ZRIhCgtmbG9hdF92YWx1ZRgGIAEoAkgAUgpmbG9hdFZhbHVlEiMK'
    'DGRvdWJsZV92YWx1ZRgHIAEoAUgAUgtkb3VibGVWYWx1ZRIhCgtieXRlc192YWx1ZRgIIAEoDE'
    'gAUgpieXRlc1ZhbHVlEh8KCnRleHRfdmFsdWUYCSABKAlIAFIJdGV4dFZhbHVlEkQKD251bGxf'
    'ZmxhZ192YWx1ZRgKIAEoDjIaLmdvb2dsZS5wcm90b2J1Zi5OdWxsVmFsdWVIAFINbnVsbEZsYW'
    'dWYWx1ZRIvCgxuZXN0ZWRfdmFsdWUYCyABKAsyCi5ZZGIuVmFsdWVIAFILbmVzdGVkVmFsdWUS'
    'GQoHbG93XzEyOBgPIAEoBkgAUgZsb3cxMjgSIAoFaXRlbXMYDCADKAsyCi5ZZGIuVmFsdWVSBW'
    'l0ZW1zEiQKBXBhaXJzGA0gAygLMg4uWWRiLlZhbHVlUGFpclIFcGFpcnMSIwoNdmFyaWFudF9p'
    'bmRleBgOIAEoDVIMdmFyaWFudEluZGV4EhkKCGhpZ2hfMTI4GBAgASgGUgdoaWdoMTI4QgcKBX'
    'ZhbHVl');

@$core.Deprecated('Use typedValueDescriptor instead')
const TypedValue$json = {
  '1': 'TypedValue',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 11, '6': '.Ydb.Type', '10': 'type'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Ydb.Value', '10': 'value'},
  ],
};

/// Descriptor for `TypedValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typedValueDescriptor = $convert.base64Decode(
    'CgpUeXBlZFZhbHVlEh0KBHR5cGUYASABKAsyCS5ZZGIuVHlwZVIEdHlwZRIgCgV2YWx1ZRgCIA'
    'EoCzIKLllkYi5WYWx1ZVIFdmFsdWU=');

@$core.Deprecated('Use columnDescriptor instead')
const Column$json = {
  '1': 'Column',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 11, '6': '.Ydb.Type', '10': 'type'},
  ],
};

/// Descriptor for `Column`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List columnDescriptor = $convert.base64Decode(
    'CgZDb2x1bW4SEgoEbmFtZRgBIAEoCVIEbmFtZRIdCgR0eXBlGAIgASgLMgkuWWRiLlR5cGVSBH'
    'R5cGU=');

@$core.Deprecated('Use resultSetDescriptor instead')
const ResultSet$json = {
  '1': 'ResultSet',
  '2': [
    {
      '1': 'columns',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Column',
      '10': 'columns'
    },
    {'1': 'rows', '3': 2, '4': 3, '5': 11, '6': '.Ydb.Value', '10': 'rows'},
    {'1': 'truncated', '3': 3, '4': 1, '5': 8, '10': 'truncated'},
    {
      '1': 'format',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.Ydb.ResultSet.Format',
      '10': 'format'
    },
    {
      '1': 'arrow_format_meta',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Formats.ArrowFormatMeta',
      '10': 'arrowFormatMeta'
    },
    {'1': 'data', '3': 15, '4': 1, '5': 12, '10': 'data'},
  ],
  '4': [ResultSet_Format$json],
};

@$core.Deprecated('Use resultSetDescriptor instead')
const ResultSet_Format$json = {
  '1': 'Format',
  '2': [
    {'1': 'FORMAT_UNSPECIFIED', '2': 0},
    {'1': 'FORMAT_VALUE', '2': 1},
    {'1': 'FORMAT_ARROW', '2': 2},
  ],
};

/// Descriptor for `ResultSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultSetDescriptor = $convert.base64Decode(
    'CglSZXN1bHRTZXQSJQoHY29sdW1ucxgBIAMoCzILLllkYi5Db2x1bW5SB2NvbHVtbnMSHgoEcm'
    '93cxgCIAMoCzIKLllkYi5WYWx1ZVIEcm93cxIcCgl0cnVuY2F0ZWQYAyABKAhSCXRydW5jYXRl'
    'ZBItCgZmb3JtYXQYBCABKA4yFS5ZZGIuUmVzdWx0U2V0LkZvcm1hdFIGZm9ybWF0EkgKEWFycm'
    '93X2Zvcm1hdF9tZXRhGAUgASgLMhwuWWRiLkZvcm1hdHMuQXJyb3dGb3JtYXRNZXRhUg9hcnJv'
    'd0Zvcm1hdE1ldGESEgoEZGF0YRgPIAEoDFIEZGF0YSJECgZGb3JtYXQSFgoSRk9STUFUX1VOU1'
    'BFQ0lGSUVEEAASEAoMRk9STUFUX1ZBTFVFEAESEAoMRk9STUFUX0FSUk9XEAI=');

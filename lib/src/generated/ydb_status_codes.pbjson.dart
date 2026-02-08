// This is a generated file - do not edit.
//
// Generated from ydb_status_codes.proto.

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

@$core.Deprecated('Use statusIdsDescriptor instead')
const StatusIds$json = {
  '1': 'StatusIds',
  '4': [StatusIds_StatusCode$json],
};

@$core.Deprecated('Use statusIdsDescriptor instead')
const StatusIds_StatusCode$json = {
  '1': 'StatusCode',
  '2': [
    {'1': 'STATUS_CODE_UNSPECIFIED', '2': 0},
    {'1': 'SUCCESS', '2': 400000},
    {'1': 'BAD_REQUEST', '2': 400010},
    {'1': 'UNAUTHORIZED', '2': 400020},
    {'1': 'INTERNAL_ERROR', '2': 400030},
    {'1': 'ABORTED', '2': 400040},
    {'1': 'UNAVAILABLE', '2': 400050},
    {'1': 'OVERLOADED', '2': 400060},
    {'1': 'SCHEME_ERROR', '2': 400070},
    {'1': 'GENERIC_ERROR', '2': 400080},
    {'1': 'TIMEOUT', '2': 400090},
    {'1': 'BAD_SESSION', '2': 400100},
    {'1': 'PRECONDITION_FAILED', '2': 400120},
    {'1': 'ALREADY_EXISTS', '2': 400130},
    {'1': 'NOT_FOUND', '2': 400140},
    {'1': 'SESSION_EXPIRED', '2': 400150},
    {'1': 'CANCELLED', '2': 400160},
    {'1': 'UNDETERMINED', '2': 400170},
    {'1': 'UNSUPPORTED', '2': 400180},
    {'1': 'SESSION_BUSY', '2': 400190},
    {'1': 'EXTERNAL_ERROR', '2': 400200},
  ],
};

/// Descriptor for `StatusIds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusIdsDescriptor = $convert.base64Decode(
    'CglTdGF0dXNJZHMirwMKClN0YXR1c0NvZGUSGwoXU1RBVFVTX0NPREVfVU5TUEVDSUZJRUQQAB'
    'INCgdTVUNDRVNTEIC1GBIRCgtCQURfUkVRVUVTVBCKtRgSEgoMVU5BVVRIT1JJWkVEEJS1GBIU'
    'Cg5JTlRFUk5BTF9FUlJPUhCetRgSDQoHQUJPUlRFRBCotRgSEQoLVU5BVkFJTEFCTEUQsrUYEh'
    'AKCk9WRVJMT0FERUQQvLUYEhIKDFNDSEVNRV9FUlJPUhDGtRgSEwoNR0VORVJJQ19FUlJPUhDQ'
    'tRgSDQoHVElNRU9VVBDatRgSEQoLQkFEX1NFU1NJT04Q5LUYEhkKE1BSRUNPTkRJVElPTl9GQU'
    'lMRUQQ+LUYEhQKDkFMUkVBRFlfRVhJU1RTEIK2GBIPCglOT1RfRk9VTkQQjLYYEhUKD1NFU1NJ'
    'T05fRVhQSVJFRBCWthgSDwoJQ0FOQ0VMTEVEEKC2GBISCgxVTkRFVEVSTUlORUQQqrYYEhEKC1'
    'VOU1VQUE9SVEVEELS2GBISCgxTRVNTSU9OX0JVU1kQvrYYEhQKDkVYVEVSTkFMX0VSUk9SEMi2'
    'GA==');

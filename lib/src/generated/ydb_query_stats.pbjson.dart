// This is a generated file - do not edit.
//
// Generated from ydb_query_stats.proto.

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

@$core.Deprecated('Use operationStatsDescriptor instead')
const OperationStats$json = {
  '1': 'OperationStats',
  '2': [
    {'1': 'rows', '3': 1, '4': 1, '5': 4, '10': 'rows'},
    {'1': 'bytes', '3': 2, '4': 1, '5': 4, '10': 'bytes'},
  ],
};

/// Descriptor for `OperationStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operationStatsDescriptor = $convert.base64Decode(
    'Cg5PcGVyYXRpb25TdGF0cxISCgRyb3dzGAEgASgEUgRyb3dzEhQKBWJ5dGVzGAIgASgEUgVieX'
    'Rlcw==');

@$core.Deprecated('Use tableAccessStatsDescriptor instead')
const TableAccessStats$json = {
  '1': 'TableAccessStats',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'reads',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TableStats.OperationStats',
      '10': 'reads'
    },
    {
      '1': 'updates',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TableStats.OperationStats',
      '10': 'updates'
    },
    {
      '1': 'deletes',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TableStats.OperationStats',
      '10': 'deletes'
    },
    {'1': 'partitions_count', '3': 6, '4': 1, '5': 4, '10': 'partitionsCount'},
  ],
  '9': [
    {'1': 2, '2': 3},
  ],
};

/// Descriptor for `TableAccessStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tableAccessStatsDescriptor = $convert.base64Decode(
    'ChBUYWJsZUFjY2Vzc1N0YXRzEhIKBG5hbWUYASABKAlSBG5hbWUSNAoFcmVhZHMYAyABKAsyHi'
    '5ZZGIuVGFibGVTdGF0cy5PcGVyYXRpb25TdGF0c1IFcmVhZHMSOAoHdXBkYXRlcxgEIAEoCzIe'
    'LllkYi5UYWJsZVN0YXRzLk9wZXJhdGlvblN0YXRzUgd1cGRhdGVzEjgKB2RlbGV0ZXMYBSABKA'
    'syHi5ZZGIuVGFibGVTdGF0cy5PcGVyYXRpb25TdGF0c1IHZGVsZXRlcxIpChBwYXJ0aXRpb25z'
    'X2NvdW50GAYgASgEUg9wYXJ0aXRpb25zQ291bnRKBAgCEAM=');

@$core.Deprecated('Use queryPhaseStatsDescriptor instead')
const QueryPhaseStats$json = {
  '1': 'QueryPhaseStats',
  '2': [
    {'1': 'duration_us', '3': 1, '4': 1, '5': 4, '10': 'durationUs'},
    {
      '1': 'table_access',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.Ydb.TableStats.TableAccessStats',
      '10': 'tableAccess'
    },
    {'1': 'cpu_time_us', '3': 3, '4': 1, '5': 4, '10': 'cpuTimeUs'},
    {'1': 'affected_shards', '3': 4, '4': 1, '5': 4, '10': 'affectedShards'},
    {'1': 'literal_phase', '3': 5, '4': 1, '5': 8, '10': 'literalPhase'},
  ],
};

/// Descriptor for `QueryPhaseStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPhaseStatsDescriptor = $convert.base64Decode(
    'Cg9RdWVyeVBoYXNlU3RhdHMSHwoLZHVyYXRpb25fdXMYASABKARSCmR1cmF0aW9uVXMSQwoMdG'
    'FibGVfYWNjZXNzGAIgAygLMiAuWWRiLlRhYmxlU3RhdHMuVGFibGVBY2Nlc3NTdGF0c1ILdGFi'
    'bGVBY2Nlc3MSHgoLY3B1X3RpbWVfdXMYAyABKARSCWNwdVRpbWVVcxInCg9hZmZlY3RlZF9zaG'
    'FyZHMYBCABKARSDmFmZmVjdGVkU2hhcmRzEiMKDWxpdGVyYWxfcGhhc2UYBSABKAhSDGxpdGVy'
    'YWxQaGFzZQ==');

@$core.Deprecated('Use compilationStatsDescriptor instead')
const CompilationStats$json = {
  '1': 'CompilationStats',
  '2': [
    {'1': 'from_cache', '3': 1, '4': 1, '5': 8, '10': 'fromCache'},
    {'1': 'duration_us', '3': 2, '4': 1, '5': 4, '10': 'durationUs'},
    {'1': 'cpu_time_us', '3': 3, '4': 1, '5': 4, '10': 'cpuTimeUs'},
  ],
};

/// Descriptor for `CompilationStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compilationStatsDescriptor = $convert.base64Decode(
    'ChBDb21waWxhdGlvblN0YXRzEh0KCmZyb21fY2FjaGUYASABKAhSCWZyb21DYWNoZRIfCgtkdX'
    'JhdGlvbl91cxgCIAEoBFIKZHVyYXRpb25VcxIeCgtjcHVfdGltZV91cxgDIAEoBFIJY3B1VGlt'
    'ZVVz');

@$core.Deprecated('Use queryStatsDescriptor instead')
const QueryStats$json = {
  '1': 'QueryStats',
  '2': [
    {
      '1': 'query_phases',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.Ydb.TableStats.QueryPhaseStats',
      '10': 'queryPhases'
    },
    {
      '1': 'compilation',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Ydb.TableStats.CompilationStats',
      '10': 'compilation'
    },
    {
      '1': 'process_cpu_time_us',
      '3': 3,
      '4': 1,
      '5': 4,
      '10': 'processCpuTimeUs'
    },
    {'1': 'query_plan', '3': 4, '4': 1, '5': 9, '10': 'queryPlan'},
    {'1': 'query_ast', '3': 5, '4': 1, '5': 9, '10': 'queryAst'},
    {'1': 'total_duration_us', '3': 6, '4': 1, '5': 4, '10': 'totalDurationUs'},
    {'1': 'total_cpu_time_us', '3': 7, '4': 1, '5': 4, '10': 'totalCpuTimeUs'},
  ],
};

/// Descriptor for `QueryStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryStatsDescriptor = $convert.base64Decode(
    'CgpRdWVyeVN0YXRzEkIKDHF1ZXJ5X3BoYXNlcxgBIAMoCzIfLllkYi5UYWJsZVN0YXRzLlF1ZX'
    'J5UGhhc2VTdGF0c1ILcXVlcnlQaGFzZXMSQgoLY29tcGlsYXRpb24YAiABKAsyIC5ZZGIuVGFi'
    'bGVTdGF0cy5Db21waWxhdGlvblN0YXRzUgtjb21waWxhdGlvbhItChNwcm9jZXNzX2NwdV90aW'
    '1lX3VzGAMgASgEUhBwcm9jZXNzQ3B1VGltZVVzEh0KCnF1ZXJ5X3BsYW4YBCABKAlSCXF1ZXJ5'
    'UGxhbhIbCglxdWVyeV9hc3QYBSABKAlSCHF1ZXJ5QXN0EioKEXRvdGFsX2R1cmF0aW9uX3VzGA'
    'YgASgEUg90b3RhbER1cmF0aW9uVXMSKQoRdG90YWxfY3B1X3RpbWVfdXMYByABKARSDnRvdGFs'
    'Q3B1VGltZVVz');

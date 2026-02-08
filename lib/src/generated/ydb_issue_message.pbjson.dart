// This is a generated file - do not edit.
//
// Generated from ydb_issue_message.proto.

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

@$core.Deprecated('Use issueMessageDescriptor instead')
const IssueMessage$json = {
  '1': 'IssueMessage',
  '2': [
    {
      '1': 'position',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Issue.IssueMessage.Position',
      '10': 'position'
    },
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {
      '1': 'end_position',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.Ydb.Issue.IssueMessage.Position',
      '10': 'endPosition'
    },
    {'1': 'issue_code', '3': 4, '4': 1, '5': 13, '10': 'issueCode'},
    {'1': 'severity', '3': 5, '4': 1, '5': 13, '10': 'severity'},
    {
      '1': 'issues',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.Ydb.Issue.IssueMessage',
      '10': 'issues'
    },
  ],
  '3': [IssueMessage_Position$json],
};

@$core.Deprecated('Use issueMessageDescriptor instead')
const IssueMessage_Position$json = {
  '1': 'Position',
  '2': [
    {'1': 'row', '3': 1, '4': 1, '5': 13, '10': 'row'},
    {'1': 'column', '3': 2, '4': 1, '5': 13, '10': 'column'},
    {'1': 'file', '3': 3, '4': 1, '5': 9, '10': 'file'},
  ],
};

/// Descriptor for `IssueMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueMessageDescriptor = $convert.base64Decode(
    'CgxJc3N1ZU1lc3NhZ2USPAoIcG9zaXRpb24YASABKAsyIC5ZZGIuSXNzdWUuSXNzdWVNZXNzYW'
    'dlLlBvc2l0aW9uUghwb3NpdGlvbhIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdlEkMKDGVuZF9w'
    'b3NpdGlvbhgDIAEoCzIgLllkYi5Jc3N1ZS5Jc3N1ZU1lc3NhZ2UuUG9zaXRpb25SC2VuZFBvc2'
    'l0aW9uEh0KCmlzc3VlX2NvZGUYBCABKA1SCWlzc3VlQ29kZRIaCghzZXZlcml0eRgFIAEoDVII'
    'c2V2ZXJpdHkSLwoGaXNzdWVzGAYgAygLMhcuWWRiLklzc3VlLklzc3VlTWVzc2FnZVIGaXNzdW'
    'VzGkgKCFBvc2l0aW9uEhAKA3JvdxgBIAEoDVIDcm93EhYKBmNvbHVtbhgCIAEoDVIGY29sdW1u'
    'EhIKBGZpbGUYAyABKAlSBGZpbGU=');

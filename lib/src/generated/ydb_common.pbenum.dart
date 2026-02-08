// This is a generated file - do not edit.
//
// Generated from ydb_common.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FeatureFlag_Status extends $pb.ProtobufEnum {
  static const FeatureFlag_Status STATUS_UNSPECIFIED =
      FeatureFlag_Status._(0, _omitEnumNames ? '' : 'STATUS_UNSPECIFIED');
  static const FeatureFlag_Status ENABLED =
      FeatureFlag_Status._(1, _omitEnumNames ? '' : 'ENABLED');
  static const FeatureFlag_Status DISABLED =
      FeatureFlag_Status._(2, _omitEnumNames ? '' : 'DISABLED');

  static const $core.List<FeatureFlag_Status> values = <FeatureFlag_Status>[
    STATUS_UNSPECIFIED,
    ENABLED,
    DISABLED,
  ];

  static final $core.List<FeatureFlag_Status?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static FeatureFlag_Status? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FeatureFlag_Status._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');

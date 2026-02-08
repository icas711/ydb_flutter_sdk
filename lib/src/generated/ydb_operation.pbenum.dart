// This is a generated file - do not edit.
//
// Generated from ydb_operation.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class OperationParams_OperationMode extends $pb.ProtobufEnum {
  static const OperationParams_OperationMode OPERATION_MODE_UNSPECIFIED =
      OperationParams_OperationMode._(
          0, _omitEnumNames ? '' : 'OPERATION_MODE_UNSPECIFIED');

  /// Server will only reply once operation is finished (ready=true), and operation object won't be
  /// accessible after the reply. This is a basic request-response mode.
  static const OperationParams_OperationMode SYNC =
      OperationParams_OperationMode._(1, _omitEnumNames ? '' : 'SYNC');
  static const OperationParams_OperationMode ASYNC =
      OperationParams_OperationMode._(2, _omitEnumNames ? '' : 'ASYNC');

  static const $core.List<OperationParams_OperationMode> values =
      <OperationParams_OperationMode>[
    OPERATION_MODE_UNSPECIFIED,
    SYNC,
    ASYNC,
  ];

  static final $core.List<OperationParams_OperationMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static OperationParams_OperationMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const OperationParams_OperationMode._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');

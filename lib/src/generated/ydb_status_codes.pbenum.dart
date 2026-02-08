// This is a generated file - do not edit.
//
// Generated from ydb_status_codes.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// reserved range [400000, 400999]
class StatusIds_StatusCode extends $pb.ProtobufEnum {
  static const StatusIds_StatusCode STATUS_CODE_UNSPECIFIED =
      StatusIds_StatusCode._(
          0, _omitEnumNames ? '' : 'STATUS_CODE_UNSPECIFIED');
  static const StatusIds_StatusCode SUCCESS =
      StatusIds_StatusCode._(400000, _omitEnumNames ? '' : 'SUCCESS');
  static const StatusIds_StatusCode BAD_REQUEST =
      StatusIds_StatusCode._(400010, _omitEnumNames ? '' : 'BAD_REQUEST');
  static const StatusIds_StatusCode UNAUTHORIZED =
      StatusIds_StatusCode._(400020, _omitEnumNames ? '' : 'UNAUTHORIZED');
  static const StatusIds_StatusCode INTERNAL_ERROR =
      StatusIds_StatusCode._(400030, _omitEnumNames ? '' : 'INTERNAL_ERROR');
  static const StatusIds_StatusCode ABORTED =
      StatusIds_StatusCode._(400040, _omitEnumNames ? '' : 'ABORTED');
  static const StatusIds_StatusCode UNAVAILABLE =
      StatusIds_StatusCode._(400050, _omitEnumNames ? '' : 'UNAVAILABLE');
  static const StatusIds_StatusCode OVERLOADED =
      StatusIds_StatusCode._(400060, _omitEnumNames ? '' : 'OVERLOADED');
  static const StatusIds_StatusCode SCHEME_ERROR =
      StatusIds_StatusCode._(400070, _omitEnumNames ? '' : 'SCHEME_ERROR');
  static const StatusIds_StatusCode GENERIC_ERROR =
      StatusIds_StatusCode._(400080, _omitEnumNames ? '' : 'GENERIC_ERROR');
  static const StatusIds_StatusCode TIMEOUT =
      StatusIds_StatusCode._(400090, _omitEnumNames ? '' : 'TIMEOUT');
  static const StatusIds_StatusCode BAD_SESSION =
      StatusIds_StatusCode._(400100, _omitEnumNames ? '' : 'BAD_SESSION');
  static const StatusIds_StatusCode PRECONDITION_FAILED =
      StatusIds_StatusCode._(
          400120, _omitEnumNames ? '' : 'PRECONDITION_FAILED');
  static const StatusIds_StatusCode ALREADY_EXISTS =
      StatusIds_StatusCode._(400130, _omitEnumNames ? '' : 'ALREADY_EXISTS');
  static const StatusIds_StatusCode NOT_FOUND =
      StatusIds_StatusCode._(400140, _omitEnumNames ? '' : 'NOT_FOUND');
  static const StatusIds_StatusCode SESSION_EXPIRED =
      StatusIds_StatusCode._(400150, _omitEnumNames ? '' : 'SESSION_EXPIRED');
  static const StatusIds_StatusCode CANCELLED =
      StatusIds_StatusCode._(400160, _omitEnumNames ? '' : 'CANCELLED');
  static const StatusIds_StatusCode UNDETERMINED =
      StatusIds_StatusCode._(400170, _omitEnumNames ? '' : 'UNDETERMINED');
  static const StatusIds_StatusCode UNSUPPORTED =
      StatusIds_StatusCode._(400180, _omitEnumNames ? '' : 'UNSUPPORTED');
  static const StatusIds_StatusCode SESSION_BUSY =
      StatusIds_StatusCode._(400190, _omitEnumNames ? '' : 'SESSION_BUSY');
  static const StatusIds_StatusCode EXTERNAL_ERROR =
      StatusIds_StatusCode._(400200, _omitEnumNames ? '' : 'EXTERNAL_ERROR');

  static const $core.List<StatusIds_StatusCode> values = <StatusIds_StatusCode>[
    STATUS_CODE_UNSPECIFIED,
    SUCCESS,
    BAD_REQUEST,
    UNAUTHORIZED,
    INTERNAL_ERROR,
    ABORTED,
    UNAVAILABLE,
    OVERLOADED,
    SCHEME_ERROR,
    GENERIC_ERROR,
    TIMEOUT,
    BAD_SESSION,
    PRECONDITION_FAILED,
    ALREADY_EXISTS,
    NOT_FOUND,
    SESSION_EXPIRED,
    CANCELLED,
    UNDETERMINED,
    UNSUPPORTED,
    SESSION_BUSY,
    EXTERNAL_ERROR,
  ];

  static final $core.Map<$core.int, StatusIds_StatusCode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static StatusIds_StatusCode? valueOf($core.int value) => _byValue[value];

  const StatusIds_StatusCode._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');

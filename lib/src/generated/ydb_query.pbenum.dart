// This is a generated file - do not edit.
//
// Generated from ydb_query.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Syntax extends $pb.ProtobufEnum {
  static const Syntax SYNTAX_UNSPECIFIED =
      Syntax._(0, _omitEnumNames ? '' : 'SYNTAX_UNSPECIFIED');
  static const Syntax SYNTAX_YQL_V1 =
      Syntax._(1, _omitEnumNames ? '' : 'SYNTAX_YQL_V1');
  static const Syntax SYNTAX_PG =
      Syntax._(2, _omitEnumNames ? '' : 'SYNTAX_PG');

  static const $core.List<Syntax> values = <Syntax>[
    SYNTAX_UNSPECIFIED,
    SYNTAX_YQL_V1,
    SYNTAX_PG,
  ];

  static final $core.List<Syntax?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Syntax? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Syntax._(super.value, super.name);
}

class ExecMode extends $pb.ProtobufEnum {
  static const ExecMode EXEC_MODE_UNSPECIFIED =
      ExecMode._(0, _omitEnumNames ? '' : 'EXEC_MODE_UNSPECIFIED');
  static const ExecMode EXEC_MODE_PARSE =
      ExecMode._(10, _omitEnumNames ? '' : 'EXEC_MODE_PARSE');
  static const ExecMode EXEC_MODE_VALIDATE =
      ExecMode._(20, _omitEnumNames ? '' : 'EXEC_MODE_VALIDATE');
  static const ExecMode EXEC_MODE_EXPLAIN =
      ExecMode._(30, _omitEnumNames ? '' : 'EXEC_MODE_EXPLAIN');
  static const ExecMode EXEC_MODE_EXECUTE =
      ExecMode._(50, _omitEnumNames ? '' : 'EXEC_MODE_EXECUTE');

  static const $core.List<ExecMode> values = <ExecMode>[
    EXEC_MODE_UNSPECIFIED,
    EXEC_MODE_PARSE,
    EXEC_MODE_VALIDATE,
    EXEC_MODE_EXPLAIN,
    EXEC_MODE_EXECUTE,
  ];

  static final $core.Map<$core.int, ExecMode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ExecMode? valueOf($core.int value) => _byValue[value];

  const ExecMode._(super.value, super.name);
}

class StatsMode extends $pb.ProtobufEnum {
  static const StatsMode STATS_MODE_UNSPECIFIED =
      StatsMode._(0, _omitEnumNames ? '' : 'STATS_MODE_UNSPECIFIED');
  static const StatsMode STATS_MODE_NONE =
      StatsMode._(10, _omitEnumNames ? '' : 'STATS_MODE_NONE');
  static const StatsMode STATS_MODE_BASIC =
      StatsMode._(20, _omitEnumNames ? '' : 'STATS_MODE_BASIC');
  static const StatsMode STATS_MODE_FULL =
      StatsMode._(30, _omitEnumNames ? '' : 'STATS_MODE_FULL');
  static const StatsMode STATS_MODE_PROFILE =
      StatsMode._(40, _omitEnumNames ? '' : 'STATS_MODE_PROFILE');

  static const $core.List<StatsMode> values = <StatsMode>[
    STATS_MODE_UNSPECIFIED,
    STATS_MODE_NONE,
    STATS_MODE_BASIC,
    STATS_MODE_FULL,
    STATS_MODE_PROFILE,
  ];

  static final $core.Map<$core.int, StatsMode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static StatsMode? valueOf($core.int value) => _byValue[value];

  const StatsMode._(super.value, super.name);
}

class SchemaInclusionMode extends $pb.ProtobufEnum {
  /// Unspecified mode, corresponds to SCHEMA_INCLUSION_MODE_ALWAYS.
  static const SchemaInclusionMode SCHEMA_INCLUSION_MODE_UNSPECIFIED =
      SchemaInclusionMode._(
          0, _omitEnumNames ? '' : 'SCHEMA_INCLUSION_MODE_UNSPECIFIED');

  /// Always include schema in every Ydb.ResultSet in the response stream.
  static const SchemaInclusionMode SCHEMA_INCLUSION_MODE_ALWAYS =
      SchemaInclusionMode._(
          1, _omitEnumNames ? '' : 'SCHEMA_INCLUSION_MODE_ALWAYS');

  /// Include schema only in the first Ydb.ResultSet per result_set_index of the response stream.
  static const SchemaInclusionMode SCHEMA_INCLUSION_MODE_FIRST_ONLY =
      SchemaInclusionMode._(
          2, _omitEnumNames ? '' : 'SCHEMA_INCLUSION_MODE_FIRST_ONLY');

  static const $core.List<SchemaInclusionMode> values = <SchemaInclusionMode>[
    SCHEMA_INCLUSION_MODE_UNSPECIFIED,
    SCHEMA_INCLUSION_MODE_ALWAYS,
    SCHEMA_INCLUSION_MODE_FIRST_ONLY,
  ];

  static final $core.List<SchemaInclusionMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static SchemaInclusionMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SchemaInclusionMode._(super.value, super.name);
}

class ExecStatus extends $pb.ProtobufEnum {
  static const ExecStatus EXEC_STATUS_UNSPECIFIED =
      ExecStatus._(0, _omitEnumNames ? '' : 'EXEC_STATUS_UNSPECIFIED');
  static const ExecStatus EXEC_STATUS_STARTING =
      ExecStatus._(10, _omitEnumNames ? '' : 'EXEC_STATUS_STARTING');
  static const ExecStatus EXEC_STATUS_ABORTED =
      ExecStatus._(20, _omitEnumNames ? '' : 'EXEC_STATUS_ABORTED');
  static const ExecStatus EXEC_STATUS_CANCELLED =
      ExecStatus._(30, _omitEnumNames ? '' : 'EXEC_STATUS_CANCELLED');
  static const ExecStatus EXEC_STATUS_COMPLETED =
      ExecStatus._(40, _omitEnumNames ? '' : 'EXEC_STATUS_COMPLETED');
  static const ExecStatus EXEC_STATUS_FAILED =
      ExecStatus._(50, _omitEnumNames ? '' : 'EXEC_STATUS_FAILED');

  static const $core.List<ExecStatus> values = <ExecStatus>[
    EXEC_STATUS_UNSPECIFIED,
    EXEC_STATUS_STARTING,
    EXEC_STATUS_ABORTED,
    EXEC_STATUS_CANCELLED,
    EXEC_STATUS_COMPLETED,
    EXEC_STATUS_FAILED,
  ];

  static final $core.Map<$core.int, ExecStatus> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ExecStatus? valueOf($core.int value) => _byValue[value];

  const ExecStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');

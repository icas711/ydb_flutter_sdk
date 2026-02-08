// This is a generated file - do not edit.
//
// Generated from ydb_scheme.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Entry_Type extends $pb.ProtobufEnum {
  static const Entry_Type TYPE_UNSPECIFIED =
      Entry_Type._(0, _omitEnumNames ? '' : 'TYPE_UNSPECIFIED');
  static const Entry_Type DIRECTORY =
      Entry_Type._(1, _omitEnumNames ? '' : 'DIRECTORY');
  static const Entry_Type TABLE =
      Entry_Type._(2, _omitEnumNames ? '' : 'TABLE');
  static const Entry_Type PERS_QUEUE_GROUP =
      Entry_Type._(3, _omitEnumNames ? '' : 'PERS_QUEUE_GROUP');
  static const Entry_Type DATABASE =
      Entry_Type._(4, _omitEnumNames ? '' : 'DATABASE');
  static const Entry_Type RTMR_VOLUME =
      Entry_Type._(5, _omitEnumNames ? '' : 'RTMR_VOLUME');
  static const Entry_Type BLOCK_STORE_VOLUME =
      Entry_Type._(6, _omitEnumNames ? '' : 'BLOCK_STORE_VOLUME');
  static const Entry_Type COORDINATION_NODE =
      Entry_Type._(7, _omitEnumNames ? '' : 'COORDINATION_NODE');
  static const Entry_Type COLUMN_STORE =
      Entry_Type._(12, _omitEnumNames ? '' : 'COLUMN_STORE');
  static const Entry_Type COLUMN_TABLE =
      Entry_Type._(13, _omitEnumNames ? '' : 'COLUMN_TABLE');
  static const Entry_Type SEQUENCE =
      Entry_Type._(15, _omitEnumNames ? '' : 'SEQUENCE');
  static const Entry_Type REPLICATION =
      Entry_Type._(16, _omitEnumNames ? '' : 'REPLICATION');
  static const Entry_Type TOPIC =
      Entry_Type._(17, _omitEnumNames ? '' : 'TOPIC');
  static const Entry_Type EXTERNAL_TABLE =
      Entry_Type._(18, _omitEnumNames ? '' : 'EXTERNAL_TABLE');
  static const Entry_Type EXTERNAL_DATA_SOURCE =
      Entry_Type._(19, _omitEnumNames ? '' : 'EXTERNAL_DATA_SOURCE');
  static const Entry_Type VIEW = Entry_Type._(20, _omitEnumNames ? '' : 'VIEW');
  static const Entry_Type RESOURCE_POOL =
      Entry_Type._(21, _omitEnumNames ? '' : 'RESOURCE_POOL');
  static const Entry_Type TRANSFER =
      Entry_Type._(23, _omitEnumNames ? '' : 'TRANSFER');
  static const Entry_Type SYS_VIEW =
      Entry_Type._(24, _omitEnumNames ? '' : 'SYS_VIEW');

  static const $core.List<Entry_Type> values = <Entry_Type>[
    TYPE_UNSPECIFIED,
    DIRECTORY,
    TABLE,
    PERS_QUEUE_GROUP,
    DATABASE,
    RTMR_VOLUME,
    BLOCK_STORE_VOLUME,
    COORDINATION_NODE,
    COLUMN_STORE,
    COLUMN_TABLE,
    SEQUENCE,
    REPLICATION,
    TOPIC,
    EXTERNAL_TABLE,
    EXTERNAL_DATA_SOURCE,
    VIEW,
    RESOURCE_POOL,
    TRANSFER,
    SYS_VIEW,
  ];

  static final $core.List<Entry_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 24);
  static Entry_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Entry_Type._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');

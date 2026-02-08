// This is a generated file - do not edit.
//
// Generated from ydb_value.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Type_PrimitiveTypeId extends $pb.ProtobufEnum {
  static const Type_PrimitiveTypeId PRIMITIVE_TYPE_ID_UNSPECIFIED =
      Type_PrimitiveTypeId._(
          0, _omitEnumNames ? '' : 'PRIMITIVE_TYPE_ID_UNSPECIFIED');
  static const Type_PrimitiveTypeId BOOL =
      Type_PrimitiveTypeId._(6, _omitEnumNames ? '' : 'BOOL');
  static const Type_PrimitiveTypeId INT8 =
      Type_PrimitiveTypeId._(7, _omitEnumNames ? '' : 'INT8');
  static const Type_PrimitiveTypeId UINT8 =
      Type_PrimitiveTypeId._(5, _omitEnumNames ? '' : 'UINT8');
  static const Type_PrimitiveTypeId INT16 =
      Type_PrimitiveTypeId._(8, _omitEnumNames ? '' : 'INT16');
  static const Type_PrimitiveTypeId UINT16 =
      Type_PrimitiveTypeId._(9, _omitEnumNames ? '' : 'UINT16');
  static const Type_PrimitiveTypeId INT32 =
      Type_PrimitiveTypeId._(1, _omitEnumNames ? '' : 'INT32');
  static const Type_PrimitiveTypeId UINT32 =
      Type_PrimitiveTypeId._(2, _omitEnumNames ? '' : 'UINT32');
  static const Type_PrimitiveTypeId INT64 =
      Type_PrimitiveTypeId._(3, _omitEnumNames ? '' : 'INT64');
  static const Type_PrimitiveTypeId UINT64 =
      Type_PrimitiveTypeId._(4, _omitEnumNames ? '' : 'UINT64');
  static const Type_PrimitiveTypeId FLOAT =
      Type_PrimitiveTypeId._(33, _omitEnumNames ? '' : 'FLOAT');
  static const Type_PrimitiveTypeId DOUBLE =
      Type_PrimitiveTypeId._(32, _omitEnumNames ? '' : 'DOUBLE');
  static const Type_PrimitiveTypeId DATE =
      Type_PrimitiveTypeId._(48, _omitEnumNames ? '' : 'DATE');
  static const Type_PrimitiveTypeId DATETIME =
      Type_PrimitiveTypeId._(49, _omitEnumNames ? '' : 'DATETIME');
  static const Type_PrimitiveTypeId TIMESTAMP =
      Type_PrimitiveTypeId._(50, _omitEnumNames ? '' : 'TIMESTAMP');
  static const Type_PrimitiveTypeId INTERVAL =
      Type_PrimitiveTypeId._(51, _omitEnumNames ? '' : 'INTERVAL');
  static const Type_PrimitiveTypeId TZ_DATE =
      Type_PrimitiveTypeId._(52, _omitEnumNames ? '' : 'TZ_DATE');
  static const Type_PrimitiveTypeId TZ_DATETIME =
      Type_PrimitiveTypeId._(53, _omitEnumNames ? '' : 'TZ_DATETIME');
  static const Type_PrimitiveTypeId TZ_TIMESTAMP =
      Type_PrimitiveTypeId._(54, _omitEnumNames ? '' : 'TZ_TIMESTAMP');
  static const Type_PrimitiveTypeId DATE32 =
      Type_PrimitiveTypeId._(64, _omitEnumNames ? '' : 'DATE32');
  static const Type_PrimitiveTypeId DATETIME64 =
      Type_PrimitiveTypeId._(65, _omitEnumNames ? '' : 'DATETIME64');
  static const Type_PrimitiveTypeId TIMESTAMP64 =
      Type_PrimitiveTypeId._(66, _omitEnumNames ? '' : 'TIMESTAMP64');
  static const Type_PrimitiveTypeId INTERVAL64 =
      Type_PrimitiveTypeId._(67, _omitEnumNames ? '' : 'INTERVAL64');
  static const Type_PrimitiveTypeId STRING =
      Type_PrimitiveTypeId._(4097, _omitEnumNames ? '' : 'STRING');
  static const Type_PrimitiveTypeId UTF8 =
      Type_PrimitiveTypeId._(4608, _omitEnumNames ? '' : 'UTF8');
  static const Type_PrimitiveTypeId YSON =
      Type_PrimitiveTypeId._(4609, _omitEnumNames ? '' : 'YSON');
  static const Type_PrimitiveTypeId JSON =
      Type_PrimitiveTypeId._(4610, _omitEnumNames ? '' : 'JSON');
  static const Type_PrimitiveTypeId UUID =
      Type_PrimitiveTypeId._(4611, _omitEnumNames ? '' : 'UUID');
  static const Type_PrimitiveTypeId JSON_DOCUMENT =
      Type_PrimitiveTypeId._(4612, _omitEnumNames ? '' : 'JSON_DOCUMENT');
  static const Type_PrimitiveTypeId DYNUMBER =
      Type_PrimitiveTypeId._(4866, _omitEnumNames ? '' : 'DYNUMBER');

  static const $core.List<Type_PrimitiveTypeId> values = <Type_PrimitiveTypeId>[
    PRIMITIVE_TYPE_ID_UNSPECIFIED,
    BOOL,
    INT8,
    UINT8,
    INT16,
    UINT16,
    INT32,
    UINT32,
    INT64,
    UINT64,
    FLOAT,
    DOUBLE,
    DATE,
    DATETIME,
    TIMESTAMP,
    INTERVAL,
    TZ_DATE,
    TZ_DATETIME,
    TZ_TIMESTAMP,
    DATE32,
    DATETIME64,
    TIMESTAMP64,
    INTERVAL64,
    STRING,
    UTF8,
    YSON,
    JSON,
    UUID,
    JSON_DOCUMENT,
    DYNUMBER,
  ];

  static final $core.Map<$core.int, Type_PrimitiveTypeId> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Type_PrimitiveTypeId? valueOf($core.int value) => _byValue[value];

  const Type_PrimitiveTypeId._(super.value, super.name);
}

class ResultSet_Format extends $pb.ProtobufEnum {
  /// Unspecified, corresponds to FORMAT_VALUE
  static const ResultSet_Format FORMAT_UNSPECIFIED =
      ResultSet_Format._(0, _omitEnumNames ? '' : 'FORMAT_UNSPECIFIED');

  /// Used to get Ydb.Value as a result in Ydb.ResultSet.rows field
  static const ResultSet_Format FORMAT_VALUE =
      ResultSet_Format._(1, _omitEnumNames ? '' : 'FORMAT_VALUE');

  /// Used to get Arrow record batch as a result in Ydb.ResultSet.data field
  static const ResultSet_Format FORMAT_ARROW =
      ResultSet_Format._(2, _omitEnumNames ? '' : 'FORMAT_ARROW');

  static const $core.List<ResultSet_Format> values = <ResultSet_Format>[
    FORMAT_UNSPECIFIED,
    FORMAT_VALUE,
    FORMAT_ARROW,
  ];

  static final $core.List<ResultSet_Format?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ResultSet_Format? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ResultSet_Format._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');

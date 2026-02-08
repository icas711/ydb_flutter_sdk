// This is a generated file - do not edit.
//
// Generated from ydb_formats.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ArrowFormatSettings_CompressionCodec_Type extends $pb.ProtobufEnum {
  /// Unspecified mode, corresponds to TYPE_NONE
  static const ArrowFormatSettings_CompressionCodec_Type TYPE_UNSPECIFIED =
      ArrowFormatSettings_CompressionCodec_Type._(
          0, _omitEnumNames ? '' : 'TYPE_UNSPECIFIED');

  /// Binary data without compression
  static const ArrowFormatSettings_CompressionCodec_Type TYPE_NONE =
      ArrowFormatSettings_CompressionCodec_Type._(
          1, _omitEnumNames ? '' : 'TYPE_NONE');

  /// Zstandard compression
  static const ArrowFormatSettings_CompressionCodec_Type TYPE_ZSTD =
      ArrowFormatSettings_CompressionCodec_Type._(
          2, _omitEnumNames ? '' : 'TYPE_ZSTD');

  /// LZ4 frame compression
  static const ArrowFormatSettings_CompressionCodec_Type TYPE_LZ4_FRAME =
      ArrowFormatSettings_CompressionCodec_Type._(
          3, _omitEnumNames ? '' : 'TYPE_LZ4_FRAME');

  static const $core.List<ArrowFormatSettings_CompressionCodec_Type> values =
      <ArrowFormatSettings_CompressionCodec_Type>[
    TYPE_UNSPECIFIED,
    TYPE_NONE,
    TYPE_ZSTD,
    TYPE_LZ4_FRAME,
  ];

  static final $core.List<ArrowFormatSettings_CompressionCodec_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ArrowFormatSettings_CompressionCodec_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ArrowFormatSettings_CompressionCodec_Type._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');

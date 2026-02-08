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

import 'ydb_formats.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ydb_formats.pbenum.dart';

class ArrowBatchSettings extends $pb.GeneratedMessage {
  factory ArrowBatchSettings({
    $core.List<$core.int>? schema,
  }) {
    final result = create();
    if (schema != null) result.schema = schema;
    return result;
  }

  ArrowBatchSettings._();

  factory ArrowBatchSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ArrowBatchSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ArrowBatchSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Formats'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'schema', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArrowBatchSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArrowBatchSettings copyWith(void Function(ArrowBatchSettings) updates) =>
      super.copyWith((message) => updates(message as ArrowBatchSettings))
          as ArrowBatchSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArrowBatchSettings create() => ArrowBatchSettings._();
  @$core.override
  ArrowBatchSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ArrowBatchSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ArrowBatchSettings>(create);
  static ArrowBatchSettings? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get schema => $_getN(0);
  @$pb.TagNumber(1)
  set schema($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSchema() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchema() => $_clearField(1);
}

class CsvSettings_Quoting extends $pb.GeneratedMessage {
  factory CsvSettings_Quoting({
    $core.bool? disabled,
    $core.List<$core.int>? quoteChar,
    $core.bool? doubleQuoteDisabled,
  }) {
    final result = create();
    if (disabled != null) result.disabled = disabled;
    if (quoteChar != null) result.quoteChar = quoteChar;
    if (doubleQuoteDisabled != null)
      result.doubleQuoteDisabled = doubleQuoteDisabled;
    return result;
  }

  CsvSettings_Quoting._();

  factory CsvSettings_Quoting.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CsvSettings_Quoting.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CsvSettings.Quoting',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Formats'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'disabled')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'quoteChar', $pb.PbFieldType.OY)
    ..aOB(3, _omitFieldNames ? '' : 'doubleQuoteDisabled')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CsvSettings_Quoting clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CsvSettings_Quoting copyWith(void Function(CsvSettings_Quoting) updates) =>
      super.copyWith((message) => updates(message as CsvSettings_Quoting))
          as CsvSettings_Quoting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CsvSettings_Quoting create() => CsvSettings_Quoting._();
  @$core.override
  CsvSettings_Quoting createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CsvSettings_Quoting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CsvSettings_Quoting>(create);
  static CsvSettings_Quoting? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get disabled => $_getBF(0);
  @$pb.TagNumber(1)
  set disabled($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDisabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisabled() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get quoteChar => $_getN(1);
  @$pb.TagNumber(2)
  set quoteChar($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQuoteChar() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuoteChar() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get doubleQuoteDisabled => $_getBF(2);
  @$pb.TagNumber(3)
  set doubleQuoteDisabled($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDoubleQuoteDisabled() => $_has(2);
  @$pb.TagNumber(3)
  void clearDoubleQuoteDisabled() => $_clearField(3);
}

class CsvSettings extends $pb.GeneratedMessage {
  factory CsvSettings({
    $core.int? skipRows,
    $core.List<$core.int>? delimiter,
    $core.List<$core.int>? nullValue,
    $core.bool? header,
    CsvSettings_Quoting? quoting,
  }) {
    final result = create();
    if (skipRows != null) result.skipRows = skipRows;
    if (delimiter != null) result.delimiter = delimiter;
    if (nullValue != null) result.nullValue = nullValue;
    if (header != null) result.header = header;
    if (quoting != null) result.quoting = quoting;
    return result;
  }

  CsvSettings._();

  factory CsvSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CsvSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CsvSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Formats'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'skipRows', fieldType: $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'delimiter', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'nullValue', $pb.PbFieldType.OY)
    ..aOB(4, _omitFieldNames ? '' : 'header')
    ..aOM<CsvSettings_Quoting>(5, _omitFieldNames ? '' : 'quoting',
        subBuilder: CsvSettings_Quoting.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CsvSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CsvSettings copyWith(void Function(CsvSettings) updates) =>
      super.copyWith((message) => updates(message as CsvSettings))
          as CsvSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CsvSettings create() => CsvSettings._();
  @$core.override
  CsvSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CsvSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CsvSettings>(create);
  static CsvSettings? _defaultInstance;

  /// Number of rows to skip before CSV data. It should be present only in the first upsert of CSV file.
  @$pb.TagNumber(1)
  $core.int get skipRows => $_getIZ(0);
  @$pb.TagNumber(1)
  set skipRows($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSkipRows() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkipRows() => $_clearField(1);

  /// Fields delimiter in CSV file. It's "," if not set.
  @$pb.TagNumber(2)
  $core.List<$core.int> get delimiter => $_getN(1);
  @$pb.TagNumber(2)
  set delimiter($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDelimiter() => $_has(1);
  @$pb.TagNumber(2)
  void clearDelimiter() => $_clearField(2);

  /// String value that would be interpreted as NULL.
  @$pb.TagNumber(3)
  $core.List<$core.int> get nullValue => $_getN(2);
  @$pb.TagNumber(3)
  set nullValue($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNullValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearNullValue() => $_clearField(3);

  /// First not skipped line is a CSV header (list of column names).
  @$pb.TagNumber(4)
  $core.bool get header => $_getBF(3);
  @$pb.TagNumber(4)
  set header($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHeader() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeader() => $_clearField(4);

  @$pb.TagNumber(5)
  CsvSettings_Quoting get quoting => $_getN(4);
  @$pb.TagNumber(5)
  set quoting(CsvSettings_Quoting value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasQuoting() => $_has(4);
  @$pb.TagNumber(5)
  void clearQuoting() => $_clearField(5);
  @$pb.TagNumber(5)
  CsvSettings_Quoting ensureQuoting() => $_ensure(4);
}

class ArrowFormatSettings_CompressionCodec extends $pb.GeneratedMessage {
  factory ArrowFormatSettings_CompressionCodec({
    ArrowFormatSettings_CompressionCodec_Type? type,
    $core.int? level,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (level != null) result.level = level;
    return result;
  }

  ArrowFormatSettings_CompressionCodec._();

  factory ArrowFormatSettings_CompressionCodec.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ArrowFormatSettings_CompressionCodec.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ArrowFormatSettings.CompressionCodec',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Formats'),
      createEmptyInstance: create)
    ..aE<ArrowFormatSettings_CompressionCodec_Type>(
        1, _omitFieldNames ? '' : 'type',
        enumValues: ArrowFormatSettings_CompressionCodec_Type.values)
    ..aI(2, _omitFieldNames ? '' : 'level')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArrowFormatSettings_CompressionCodec clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArrowFormatSettings_CompressionCodec copyWith(
          void Function(ArrowFormatSettings_CompressionCodec) updates) =>
      super.copyWith((message) =>
              updates(message as ArrowFormatSettings_CompressionCodec))
          as ArrowFormatSettings_CompressionCodec;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArrowFormatSettings_CompressionCodec create() =>
      ArrowFormatSettings_CompressionCodec._();
  @$core.override
  ArrowFormatSettings_CompressionCodec createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ArrowFormatSettings_CompressionCodec getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ArrowFormatSettings_CompressionCodec>(create);
  static ArrowFormatSettings_CompressionCodec? _defaultInstance;

  /// Type of the compression codec
  @$pb.TagNumber(1)
  ArrowFormatSettings_CompressionCodec_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ArrowFormatSettings_CompressionCodec_Type value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// Compression level for the codec.
  /// If is not specified, the default level of the codec type is used.
  @$pb.TagNumber(2)
  $core.int get level => $_getIZ(1);
  @$pb.TagNumber(2)
  set level($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevel() => $_clearField(2);
}

/// *
///  ArrowFormatSettings is settings for Ydb.ResultSet.Format.FORMAT_ARROW in Ydb.Query.ExecuteQueryRequest.
///  It is used to configure compression for record batches in Ydb.ResultSet.data field.
class ArrowFormatSettings extends $pb.GeneratedMessage {
  factory ArrowFormatSettings({
    ArrowFormatSettings_CompressionCodec? compressionCodec,
  }) {
    final result = create();
    if (compressionCodec != null) result.compressionCodec = compressionCodec;
    return result;
  }

  ArrowFormatSettings._();

  factory ArrowFormatSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ArrowFormatSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ArrowFormatSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Formats'),
      createEmptyInstance: create)
    ..aOM<ArrowFormatSettings_CompressionCodec>(
        1, _omitFieldNames ? '' : 'compressionCodec',
        subBuilder: ArrowFormatSettings_CompressionCodec.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArrowFormatSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArrowFormatSettings copyWith(void Function(ArrowFormatSettings) updates) =>
      super.copyWith((message) => updates(message as ArrowFormatSettings))
          as ArrowFormatSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArrowFormatSettings create() => ArrowFormatSettings._();
  @$core.override
  ArrowFormatSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ArrowFormatSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ArrowFormatSettings>(create);
  static ArrowFormatSettings? _defaultInstance;

  /// Codec for compressing binary data in Ydb.ResultSet.data field
  @$pb.TagNumber(1)
  ArrowFormatSettings_CompressionCodec get compressionCodec => $_getN(0);
  @$pb.TagNumber(1)
  set compressionCodec(ArrowFormatSettings_CompressionCodec value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCompressionCodec() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompressionCodec() => $_clearField(1);
  @$pb.TagNumber(1)
  ArrowFormatSettings_CompressionCodec ensureCompressionCodec() => $_ensure(0);
}

/// *
///  ArrowFormatMeta is a metadata for Ydb.ResultSet.Format.FORMAT_ARROW in Ydb.ResultSet.
///  It is used to get the schema of the Arrow record batch.
class ArrowFormatMeta extends $pb.GeneratedMessage {
  factory ArrowFormatMeta({
    $core.List<$core.int>? schema,
  }) {
    final result = create();
    if (schema != null) result.schema = schema;
    return result;
  }

  ArrowFormatMeta._();

  factory ArrowFormatMeta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ArrowFormatMeta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ArrowFormatMeta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Formats'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'schema', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArrowFormatMeta clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArrowFormatMeta copyWith(void Function(ArrowFormatMeta) updates) =>
      super.copyWith((message) => updates(message as ArrowFormatMeta))
          as ArrowFormatMeta;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArrowFormatMeta create() => ArrowFormatMeta._();
  @$core.override
  ArrowFormatMeta createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ArrowFormatMeta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ArrowFormatMeta>(create);
  static ArrowFormatMeta? _defaultInstance;

  /// Schema of the arrow batch of the result.
  /// May be empty for custom Ydb.Query.SchemaInclusionMode
  @$pb.TagNumber(1)
  $core.List<$core.int> get schema => $_getN(0);
  @$pb.TagNumber(1)
  set schema($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSchema() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchema() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

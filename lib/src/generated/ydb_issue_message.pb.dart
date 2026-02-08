// This is a generated file - do not edit.
//
// Generated from ydb_issue_message.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class IssueMessage_Position extends $pb.GeneratedMessage {
  factory IssueMessage_Position({
    $core.int? row,
    $core.int? column,
    $core.String? file,
  }) {
    final result = create();
    if (row != null) result.row = row;
    if (column != null) result.column = column;
    if (file != null) result.file = file;
    return result;
  }

  IssueMessage_Position._();

  factory IssueMessage_Position.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IssueMessage_Position.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IssueMessage.Position',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Issue'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'row', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'column', fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'file')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IssueMessage_Position clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IssueMessage_Position copyWith(
          void Function(IssueMessage_Position) updates) =>
      super.copyWith((message) => updates(message as IssueMessage_Position))
          as IssueMessage_Position;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IssueMessage_Position create() => IssueMessage_Position._();
  @$core.override
  IssueMessage_Position createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IssueMessage_Position getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IssueMessage_Position>(create);
  static IssueMessage_Position? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get row => $_getIZ(0);
  @$pb.TagNumber(1)
  set row($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRow() => $_has(0);
  @$pb.TagNumber(1)
  void clearRow() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get column => $_getIZ(1);
  @$pb.TagNumber(2)
  set column($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasColumn() => $_has(1);
  @$pb.TagNumber(2)
  void clearColumn() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get file => $_getSZ(2);
  @$pb.TagNumber(3)
  set file($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFile() => $_has(2);
  @$pb.TagNumber(3)
  void clearFile() => $_clearField(3);
}

/// IssueMessage is a transport format for ydb/library/yql/public/issue library
class IssueMessage extends $pb.GeneratedMessage {
  factory IssueMessage({
    IssueMessage_Position? position,
    $core.String? message,
    IssueMessage_Position? endPosition,
    $core.int? issueCode,
    $core.int? severity,
    $core.Iterable<IssueMessage>? issues,
  }) {
    final result = create();
    if (position != null) result.position = position;
    if (message != null) result.message = message;
    if (endPosition != null) result.endPosition = endPosition;
    if (issueCode != null) result.issueCode = issueCode;
    if (severity != null) result.severity = severity;
    if (issues != null) result.issues.addAll(issues);
    return result;
  }

  IssueMessage._();

  factory IssueMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IssueMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IssueMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Issue'),
      createEmptyInstance: create)
    ..aOM<IssueMessage_Position>(1, _omitFieldNames ? '' : 'position',
        subBuilder: IssueMessage_Position.create)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOM<IssueMessage_Position>(3, _omitFieldNames ? '' : 'endPosition',
        subBuilder: IssueMessage_Position.create)
    ..aI(4, _omitFieldNames ? '' : 'issueCode', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'severity', fieldType: $pb.PbFieldType.OU3)
    ..pPM<IssueMessage>(6, _omitFieldNames ? '' : 'issues',
        subBuilder: IssueMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IssueMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IssueMessage copyWith(void Function(IssueMessage) updates) =>
      super.copyWith((message) => updates(message as IssueMessage))
          as IssueMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IssueMessage create() => IssueMessage._();
  @$core.override
  IssueMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IssueMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IssueMessage>(create);
  static IssueMessage? _defaultInstance;

  @$pb.TagNumber(1)
  IssueMessage_Position get position => $_getN(0);
  @$pb.TagNumber(1)
  set position(IssueMessage_Position value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPosition() => $_has(0);
  @$pb.TagNumber(1)
  void clearPosition() => $_clearField(1);
  @$pb.TagNumber(1)
  IssueMessage_Position ensurePosition() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  @$pb.TagNumber(3)
  IssueMessage_Position get endPosition => $_getN(2);
  @$pb.TagNumber(3)
  set endPosition(IssueMessage_Position value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEndPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndPosition() => $_clearField(3);
  @$pb.TagNumber(3)
  IssueMessage_Position ensureEndPosition() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get issueCode => $_getIZ(3);
  @$pb.TagNumber(4)
  set issueCode($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIssueCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearIssueCode() => $_clearField(4);

  /// Severity values from ydb/library/yql/public/issue/protos/issue_severity.proto
  /// FATAL = 0;
  /// ERROR = 1;
  /// WARNING = 2;
  /// INFO = 3;
  @$pb.TagNumber(5)
  $core.int get severity => $_getIZ(4);
  @$pb.TagNumber(5)
  set severity($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSeverity() => $_has(4);
  @$pb.TagNumber(5)
  void clearSeverity() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<IssueMessage> get issues => $_getList(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

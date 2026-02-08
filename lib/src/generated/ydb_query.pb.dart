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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/duration.pb.dart'
    as $5;

import 'ydb_formats.pb.dart' as $1;
import 'ydb_issue_message.pb.dart' as $0;
import 'ydb_operation.pb.dart' as $4;
import 'ydb_query.pbenum.dart';
import 'ydb_query_stats.pb.dart' as $3;
import 'ydb_status_codes.pbenum.dart' as $6;
import 'ydb_value.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ydb_query.pbenum.dart';

class CreateSessionRequest extends $pb.GeneratedMessage {
  factory CreateSessionRequest() => create();

  CreateSessionRequest._();

  factory CreateSessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateSessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSessionRequest copyWith(void Function(CreateSessionRequest) updates) =>
      super.copyWith((message) => updates(message as CreateSessionRequest))
          as CreateSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionRequest create() => CreateSessionRequest._();
  @$core.override
  CreateSessionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSessionRequest>(create);
  static CreateSessionRequest? _defaultInstance;
}

class CreateSessionResponse extends $pb.GeneratedMessage {
  factory CreateSessionResponse({
    $6.StatusIds_StatusCode? status,
    $core.Iterable<$0.IssueMessage>? issues,
    $core.String? sessionId,
    $fixnum.Int64? nodeId,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    if (sessionId != null) result.sessionId = sessionId;
    if (nodeId != null) result.nodeId = nodeId;
    return result;
  }

  CreateSessionResponse._();

  factory CreateSessionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateSessionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateSessionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aE<$6.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $6.StatusIds_StatusCode.values)
    ..pPM<$0.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $0.IssueMessage.create)
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(4, _omitFieldNames ? '' : 'nodeId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSessionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSessionResponse copyWith(
          void Function(CreateSessionResponse) updates) =>
      super.copyWith((message) => updates(message as CreateSessionResponse))
          as CreateSessionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionResponse create() => CreateSessionResponse._();
  @$core.override
  CreateSessionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateSessionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSessionResponse>(create);
  static CreateSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($6.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.IssueMessage> get issues => $_getList(1);

  /// Identifier of created session
  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  /// Identifier node where session was created
  @$pb.TagNumber(4)
  $fixnum.Int64 get nodeId => $_getI64(3);
  @$pb.TagNumber(4)
  set nodeId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNodeId() => $_has(3);
  @$pb.TagNumber(4)
  void clearNodeId() => $_clearField(4);
}

class DeleteSessionRequest extends $pb.GeneratedMessage {
  factory DeleteSessionRequest({
    $core.String? sessionId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  DeleteSessionRequest._();

  factory DeleteSessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteSessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSessionRequest copyWith(void Function(DeleteSessionRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteSessionRequest))
          as DeleteSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionRequest create() => DeleteSessionRequest._();
  @$core.override
  DeleteSessionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteSessionRequest>(create);
  static DeleteSessionRequest? _defaultInstance;

  /// Identifier of session to delete (required)
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
}

class DeleteSessionResponse extends $pb.GeneratedMessage {
  factory DeleteSessionResponse({
    $6.StatusIds_StatusCode? status,
    $core.Iterable<$0.IssueMessage>? issues,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    return result;
  }

  DeleteSessionResponse._();

  factory DeleteSessionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteSessionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteSessionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aE<$6.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $6.StatusIds_StatusCode.values)
    ..pPM<$0.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $0.IssueMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSessionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSessionResponse copyWith(
          void Function(DeleteSessionResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteSessionResponse))
          as DeleteSessionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionResponse create() => DeleteSessionResponse._();
  @$core.override
  DeleteSessionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteSessionResponse>(create);
  static DeleteSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($6.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.IssueMessage> get issues => $_getList(1);
}

class AttachSessionRequest extends $pb.GeneratedMessage {
  factory AttachSessionRequest({
    $core.String? sessionId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  AttachSessionRequest._();

  factory AttachSessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AttachSessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AttachSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttachSessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttachSessionRequest copyWith(void Function(AttachSessionRequest) updates) =>
      super.copyWith((message) => updates(message as AttachSessionRequest))
          as AttachSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttachSessionRequest create() => AttachSessionRequest._();
  @$core.override
  AttachSessionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AttachSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AttachSessionRequest>(create);
  static AttachSessionRequest? _defaultInstance;

  /// Identifier of session to attach (required)
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
}

class SessionState extends $pb.GeneratedMessage {
  factory SessionState({
    $6.StatusIds_StatusCode? status,
    $core.Iterable<$0.IssueMessage>? issues,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    return result;
  }

  SessionState._();

  factory SessionState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SessionState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SessionState',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aE<$6.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $6.StatusIds_StatusCode.values)
    ..pPM<$0.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $0.IssueMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SessionState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SessionState copyWith(void Function(SessionState) updates) =>
      super.copyWith((message) => updates(message as SessionState))
          as SessionState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionState create() => SessionState._();
  @$core.override
  SessionState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SessionState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SessionState>(create);
  static SessionState? _defaultInstance;

  @$pb.TagNumber(1)
  $6.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($6.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.IssueMessage> get issues => $_getList(1);
}

class SerializableModeSettings extends $pb.GeneratedMessage {
  factory SerializableModeSettings() => create();

  SerializableModeSettings._();

  factory SerializableModeSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SerializableModeSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SerializableModeSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SerializableModeSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SerializableModeSettings copyWith(
          void Function(SerializableModeSettings) updates) =>
      super.copyWith((message) => updates(message as SerializableModeSettings))
          as SerializableModeSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SerializableModeSettings create() => SerializableModeSettings._();
  @$core.override
  SerializableModeSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SerializableModeSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SerializableModeSettings>(create);
  static SerializableModeSettings? _defaultInstance;
}

class OnlineModeSettings extends $pb.GeneratedMessage {
  factory OnlineModeSettings({
    $core.bool? allowInconsistentReads,
  }) {
    final result = create();
    if (allowInconsistentReads != null)
      result.allowInconsistentReads = allowInconsistentReads;
    return result;
  }

  OnlineModeSettings._();

  factory OnlineModeSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OnlineModeSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OnlineModeSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'allowInconsistentReads')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OnlineModeSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OnlineModeSettings copyWith(void Function(OnlineModeSettings) updates) =>
      super.copyWith((message) => updates(message as OnlineModeSettings))
          as OnlineModeSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OnlineModeSettings create() => OnlineModeSettings._();
  @$core.override
  OnlineModeSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OnlineModeSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OnlineModeSettings>(create);
  static OnlineModeSettings? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get allowInconsistentReads => $_getBF(0);
  @$pb.TagNumber(1)
  set allowInconsistentReads($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAllowInconsistentReads() => $_has(0);
  @$pb.TagNumber(1)
  void clearAllowInconsistentReads() => $_clearField(1);
}

class StaleModeSettings extends $pb.GeneratedMessage {
  factory StaleModeSettings() => create();

  StaleModeSettings._();

  factory StaleModeSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StaleModeSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StaleModeSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StaleModeSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StaleModeSettings copyWith(void Function(StaleModeSettings) updates) =>
      super.copyWith((message) => updates(message as StaleModeSettings))
          as StaleModeSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StaleModeSettings create() => StaleModeSettings._();
  @$core.override
  StaleModeSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StaleModeSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StaleModeSettings>(create);
  static StaleModeSettings? _defaultInstance;
}

class SnapshotModeSettings extends $pb.GeneratedMessage {
  factory SnapshotModeSettings() => create();

  SnapshotModeSettings._();

  factory SnapshotModeSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SnapshotModeSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SnapshotModeSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SnapshotModeSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SnapshotModeSettings copyWith(void Function(SnapshotModeSettings) updates) =>
      super.copyWith((message) => updates(message as SnapshotModeSettings))
          as SnapshotModeSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SnapshotModeSettings create() => SnapshotModeSettings._();
  @$core.override
  SnapshotModeSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SnapshotModeSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SnapshotModeSettings>(create);
  static SnapshotModeSettings? _defaultInstance;
}

class SnapshotRWModeSettings extends $pb.GeneratedMessage {
  factory SnapshotRWModeSettings() => create();

  SnapshotRWModeSettings._();

  factory SnapshotRWModeSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SnapshotRWModeSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SnapshotRWModeSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SnapshotRWModeSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SnapshotRWModeSettings copyWith(
          void Function(SnapshotRWModeSettings) updates) =>
      super.copyWith((message) => updates(message as SnapshotRWModeSettings))
          as SnapshotRWModeSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SnapshotRWModeSettings create() => SnapshotRWModeSettings._();
  @$core.override
  SnapshotRWModeSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SnapshotRWModeSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SnapshotRWModeSettings>(create);
  static SnapshotRWModeSettings? _defaultInstance;
}

enum TransactionSettings_TxMode {
  serializableReadWrite,
  onlineReadOnly,
  staleReadOnly,
  snapshotReadOnly,
  snapshotReadWrite,
  notSet
}

class TransactionSettings extends $pb.GeneratedMessage {
  factory TransactionSettings({
    SerializableModeSettings? serializableReadWrite,
    OnlineModeSettings? onlineReadOnly,
    StaleModeSettings? staleReadOnly,
    SnapshotModeSettings? snapshotReadOnly,
    SnapshotRWModeSettings? snapshotReadWrite,
  }) {
    final result = create();
    if (serializableReadWrite != null)
      result.serializableReadWrite = serializableReadWrite;
    if (onlineReadOnly != null) result.onlineReadOnly = onlineReadOnly;
    if (staleReadOnly != null) result.staleReadOnly = staleReadOnly;
    if (snapshotReadOnly != null) result.snapshotReadOnly = snapshotReadOnly;
    if (snapshotReadWrite != null) result.snapshotReadWrite = snapshotReadWrite;
    return result;
  }

  TransactionSettings._();

  factory TransactionSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TransactionSettings_TxMode>
      _TransactionSettings_TxModeByTag = {
    1: TransactionSettings_TxMode.serializableReadWrite,
    2: TransactionSettings_TxMode.onlineReadOnly,
    3: TransactionSettings_TxMode.staleReadOnly,
    4: TransactionSettings_TxMode.snapshotReadOnly,
    5: TransactionSettings_TxMode.snapshotReadWrite,
    0: TransactionSettings_TxMode.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<SerializableModeSettings>(
        1, _omitFieldNames ? '' : 'serializableReadWrite',
        subBuilder: SerializableModeSettings.create)
    ..aOM<OnlineModeSettings>(2, _omitFieldNames ? '' : 'onlineReadOnly',
        subBuilder: OnlineModeSettings.create)
    ..aOM<StaleModeSettings>(3, _omitFieldNames ? '' : 'staleReadOnly',
        subBuilder: StaleModeSettings.create)
    ..aOM<SnapshotModeSettings>(4, _omitFieldNames ? '' : 'snapshotReadOnly',
        subBuilder: SnapshotModeSettings.create)
    ..aOM<SnapshotRWModeSettings>(5, _omitFieldNames ? '' : 'snapshotReadWrite',
        subBuilder: SnapshotRWModeSettings.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionSettings copyWith(void Function(TransactionSettings) updates) =>
      super.copyWith((message) => updates(message as TransactionSettings))
          as TransactionSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionSettings create() => TransactionSettings._();
  @$core.override
  TransactionSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionSettings>(create);
  static TransactionSettings? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  TransactionSettings_TxMode whichTxMode() =>
      _TransactionSettings_TxModeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearTxMode() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SerializableModeSettings get serializableReadWrite => $_getN(0);
  @$pb.TagNumber(1)
  set serializableReadWrite(SerializableModeSettings value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSerializableReadWrite() => $_has(0);
  @$pb.TagNumber(1)
  void clearSerializableReadWrite() => $_clearField(1);
  @$pb.TagNumber(1)
  SerializableModeSettings ensureSerializableReadWrite() => $_ensure(0);

  @$pb.TagNumber(2)
  OnlineModeSettings get onlineReadOnly => $_getN(1);
  @$pb.TagNumber(2)
  set onlineReadOnly(OnlineModeSettings value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOnlineReadOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearOnlineReadOnly() => $_clearField(2);
  @$pb.TagNumber(2)
  OnlineModeSettings ensureOnlineReadOnly() => $_ensure(1);

  @$pb.TagNumber(3)
  StaleModeSettings get staleReadOnly => $_getN(2);
  @$pb.TagNumber(3)
  set staleReadOnly(StaleModeSettings value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStaleReadOnly() => $_has(2);
  @$pb.TagNumber(3)
  void clearStaleReadOnly() => $_clearField(3);
  @$pb.TagNumber(3)
  StaleModeSettings ensureStaleReadOnly() => $_ensure(2);

  @$pb.TagNumber(4)
  SnapshotModeSettings get snapshotReadOnly => $_getN(3);
  @$pb.TagNumber(4)
  set snapshotReadOnly(SnapshotModeSettings value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSnapshotReadOnly() => $_has(3);
  @$pb.TagNumber(4)
  void clearSnapshotReadOnly() => $_clearField(4);
  @$pb.TagNumber(4)
  SnapshotModeSettings ensureSnapshotReadOnly() => $_ensure(3);

  @$pb.TagNumber(5)
  SnapshotRWModeSettings get snapshotReadWrite => $_getN(4);
  @$pb.TagNumber(5)
  set snapshotReadWrite(SnapshotRWModeSettings value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSnapshotReadWrite() => $_has(4);
  @$pb.TagNumber(5)
  void clearSnapshotReadWrite() => $_clearField(5);
  @$pb.TagNumber(5)
  SnapshotRWModeSettings ensureSnapshotReadWrite() => $_ensure(4);
}

enum TransactionControl_TxSelector { txId, beginTx, notSet }

class TransactionControl extends $pb.GeneratedMessage {
  factory TransactionControl({
    $core.String? txId,
    TransactionSettings? beginTx,
    $core.bool? commitTx,
  }) {
    final result = create();
    if (txId != null) result.txId = txId;
    if (beginTx != null) result.beginTx = beginTx;
    if (commitTx != null) result.commitTx = commitTx;
    return result;
  }

  TransactionControl._();

  factory TransactionControl.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionControl.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TransactionControl_TxSelector>
      _TransactionControl_TxSelectorByTag = {
    1: TransactionControl_TxSelector.txId,
    2: TransactionControl_TxSelector.beginTx,
    0: TransactionControl_TxSelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionControl',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'txId')
    ..aOM<TransactionSettings>(2, _omitFieldNames ? '' : 'beginTx',
        subBuilder: TransactionSettings.create)
    ..aOB(10, _omitFieldNames ? '' : 'commitTx')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionControl clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionControl copyWith(void Function(TransactionControl) updates) =>
      super.copyWith((message) => updates(message as TransactionControl))
          as TransactionControl;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionControl create() => TransactionControl._();
  @$core.override
  TransactionControl createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionControl getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionControl>(create);
  static TransactionControl? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  TransactionControl_TxSelector whichTxSelector() =>
      _TransactionControl_TxSelectorByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearTxSelector() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get txId => $_getSZ(0);
  @$pb.TagNumber(1)
  set txId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTxId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxId() => $_clearField(1);

  @$pb.TagNumber(2)
  TransactionSettings get beginTx => $_getN(1);
  @$pb.TagNumber(2)
  set beginTx(TransactionSettings value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasBeginTx() => $_has(1);
  @$pb.TagNumber(2)
  void clearBeginTx() => $_clearField(2);
  @$pb.TagNumber(2)
  TransactionSettings ensureBeginTx() => $_ensure(1);

  @$pb.TagNumber(10)
  $core.bool get commitTx => $_getBF(2);
  @$pb.TagNumber(10)
  set commitTx($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(10)
  $core.bool hasCommitTx() => $_has(2);
  @$pb.TagNumber(10)
  void clearCommitTx() => $_clearField(10);
}

class BeginTransactionRequest extends $pb.GeneratedMessage {
  factory BeginTransactionRequest({
    $core.String? sessionId,
    TransactionSettings? txSettings,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (txSettings != null) result.txSettings = txSettings;
    return result;
  }

  BeginTransactionRequest._();

  factory BeginTransactionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BeginTransactionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BeginTransactionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOM<TransactionSettings>(2, _omitFieldNames ? '' : 'txSettings',
        subBuilder: TransactionSettings.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BeginTransactionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BeginTransactionRequest copyWith(
          void Function(BeginTransactionRequest) updates) =>
      super.copyWith((message) => updates(message as BeginTransactionRequest))
          as BeginTransactionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BeginTransactionRequest create() => BeginTransactionRequest._();
  @$core.override
  BeginTransactionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BeginTransactionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BeginTransactionRequest>(create);
  static BeginTransactionRequest? _defaultInstance;

  /// Session identifier (required)
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  TransactionSettings get txSettings => $_getN(1);
  @$pb.TagNumber(2)
  set txSettings(TransactionSettings value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTxSettings() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxSettings() => $_clearField(2);
  @$pb.TagNumber(2)
  TransactionSettings ensureTxSettings() => $_ensure(1);
}

class TransactionMeta extends $pb.GeneratedMessage {
  factory TransactionMeta({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  TransactionMeta._();

  factory TransactionMeta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionMeta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionMeta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionMeta clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionMeta copyWith(void Function(TransactionMeta) updates) =>
      super.copyWith((message) => updates(message as TransactionMeta))
          as TransactionMeta;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionMeta create() => TransactionMeta._();
  @$core.override
  TransactionMeta createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionMeta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionMeta>(create);
  static TransactionMeta? _defaultInstance;

  /// Transaction identifier
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class BeginTransactionResponse extends $pb.GeneratedMessage {
  factory BeginTransactionResponse({
    $6.StatusIds_StatusCode? status,
    $core.Iterable<$0.IssueMessage>? issues,
    TransactionMeta? txMeta,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    if (txMeta != null) result.txMeta = txMeta;
    return result;
  }

  BeginTransactionResponse._();

  factory BeginTransactionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BeginTransactionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BeginTransactionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aE<$6.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $6.StatusIds_StatusCode.values)
    ..pPM<$0.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $0.IssueMessage.create)
    ..aOM<TransactionMeta>(3, _omitFieldNames ? '' : 'txMeta',
        subBuilder: TransactionMeta.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BeginTransactionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BeginTransactionResponse copyWith(
          void Function(BeginTransactionResponse) updates) =>
      super.copyWith((message) => updates(message as BeginTransactionResponse))
          as BeginTransactionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BeginTransactionResponse create() => BeginTransactionResponse._();
  @$core.override
  BeginTransactionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BeginTransactionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BeginTransactionResponse>(create);
  static BeginTransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($6.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.IssueMessage> get issues => $_getList(1);

  @$pb.TagNumber(3)
  TransactionMeta get txMeta => $_getN(2);
  @$pb.TagNumber(3)
  set txMeta(TransactionMeta value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTxMeta() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxMeta() => $_clearField(3);
  @$pb.TagNumber(3)
  TransactionMeta ensureTxMeta() => $_ensure(2);
}

class CommitTransactionRequest extends $pb.GeneratedMessage {
  factory CommitTransactionRequest({
    $core.String? sessionId,
    $core.String? txId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (txId != null) result.txId = txId;
    return result;
  }

  CommitTransactionRequest._();

  factory CommitTransactionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommitTransactionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommitTransactionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'txId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitTransactionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitTransactionRequest copyWith(
          void Function(CommitTransactionRequest) updates) =>
      super.copyWith((message) => updates(message as CommitTransactionRequest))
          as CommitTransactionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommitTransactionRequest create() => CommitTransactionRequest._();
  @$core.override
  CommitTransactionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CommitTransactionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommitTransactionRequest>(create);
  static CommitTransactionRequest? _defaultInstance;

  /// Session identifier (required)
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// Transaction identifier (required)
  @$pb.TagNumber(2)
  $core.String get txId => $_getSZ(1);
  @$pb.TagNumber(2)
  set txId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTxId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxId() => $_clearField(2);
}

class CommitTransactionResponse extends $pb.GeneratedMessage {
  factory CommitTransactionResponse({
    $6.StatusIds_StatusCode? status,
    $core.Iterable<$0.IssueMessage>? issues,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    return result;
  }

  CommitTransactionResponse._();

  factory CommitTransactionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommitTransactionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommitTransactionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aE<$6.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $6.StatusIds_StatusCode.values)
    ..pPM<$0.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $0.IssueMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitTransactionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitTransactionResponse copyWith(
          void Function(CommitTransactionResponse) updates) =>
      super.copyWith((message) => updates(message as CommitTransactionResponse))
          as CommitTransactionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommitTransactionResponse create() => CommitTransactionResponse._();
  @$core.override
  CommitTransactionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CommitTransactionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommitTransactionResponse>(create);
  static CommitTransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($6.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.IssueMessage> get issues => $_getList(1);
}

class RollbackTransactionRequest extends $pb.GeneratedMessage {
  factory RollbackTransactionRequest({
    $core.String? sessionId,
    $core.String? txId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (txId != null) result.txId = txId;
    return result;
  }

  RollbackTransactionRequest._();

  factory RollbackTransactionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RollbackTransactionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RollbackTransactionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'txId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RollbackTransactionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RollbackTransactionRequest copyWith(
          void Function(RollbackTransactionRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RollbackTransactionRequest))
          as RollbackTransactionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RollbackTransactionRequest create() => RollbackTransactionRequest._();
  @$core.override
  RollbackTransactionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RollbackTransactionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RollbackTransactionRequest>(create);
  static RollbackTransactionRequest? _defaultInstance;

  /// Session identifier (required)
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// Transaction identifier (required)
  @$pb.TagNumber(2)
  $core.String get txId => $_getSZ(1);
  @$pb.TagNumber(2)
  set txId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTxId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxId() => $_clearField(2);
}

class RollbackTransactionResponse extends $pb.GeneratedMessage {
  factory RollbackTransactionResponse({
    $6.StatusIds_StatusCode? status,
    $core.Iterable<$0.IssueMessage>? issues,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    return result;
  }

  RollbackTransactionResponse._();

  factory RollbackTransactionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RollbackTransactionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RollbackTransactionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aE<$6.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $6.StatusIds_StatusCode.values)
    ..pPM<$0.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $0.IssueMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RollbackTransactionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RollbackTransactionResponse copyWith(
          void Function(RollbackTransactionResponse) updates) =>
      super.copyWith(
              (message) => updates(message as RollbackTransactionResponse))
          as RollbackTransactionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RollbackTransactionResponse create() =>
      RollbackTransactionResponse._();
  @$core.override
  RollbackTransactionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RollbackTransactionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RollbackTransactionResponse>(create);
  static RollbackTransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($6.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.IssueMessage> get issues => $_getList(1);
}

class QueryContent extends $pb.GeneratedMessage {
  factory QueryContent({
    Syntax? syntax,
    $core.String? text,
  }) {
    final result = create();
    if (syntax != null) result.syntax = syntax;
    if (text != null) result.text = text;
    return result;
  }

  QueryContent._();

  factory QueryContent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QueryContent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueryContent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aE<Syntax>(1, _omitFieldNames ? '' : 'syntax', enumValues: Syntax.values)
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryContent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryContent copyWith(void Function(QueryContent) updates) =>
      super.copyWith((message) => updates(message as QueryContent))
          as QueryContent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryContent create() => QueryContent._();
  @$core.override
  QueryContent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static QueryContent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueryContent>(create);
  static QueryContent? _defaultInstance;

  @$pb.TagNumber(1)
  Syntax get syntax => $_getN(0);
  @$pb.TagNumber(1)
  set syntax(Syntax value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSyntax() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyntax() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);
}

enum ExecuteQueryRequest_Query { queryContent, notSet }

class ExecuteQueryRequest extends $pb.GeneratedMessage {
  factory ExecuteQueryRequest({
    $core.String? sessionId,
    ExecMode? execMode,
    TransactionControl? txControl,
    QueryContent? queryContent,
    $core.Iterable<$core.MapEntry<$core.String, $2.TypedValue>>? parameters,
    StatsMode? statsMode,
    $core.bool? concurrentResultSets,
    $fixnum.Int64? responsePartLimitBytes,
    $core.String? poolId,
    $fixnum.Int64? statsPeriodMs,
    SchemaInclusionMode? schemaInclusionMode,
    $2.ResultSet_Format? resultSetFormat,
    $1.ArrowFormatSettings? arrowFormatSettings,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (execMode != null) result.execMode = execMode;
    if (txControl != null) result.txControl = txControl;
    if (queryContent != null) result.queryContent = queryContent;
    if (parameters != null) result.parameters.addEntries(parameters);
    if (statsMode != null) result.statsMode = statsMode;
    if (concurrentResultSets != null)
      result.concurrentResultSets = concurrentResultSets;
    if (responsePartLimitBytes != null)
      result.responsePartLimitBytes = responsePartLimitBytes;
    if (poolId != null) result.poolId = poolId;
    if (statsPeriodMs != null) result.statsPeriodMs = statsPeriodMs;
    if (schemaInclusionMode != null)
      result.schemaInclusionMode = schemaInclusionMode;
    if (resultSetFormat != null) result.resultSetFormat = resultSetFormat;
    if (arrowFormatSettings != null)
      result.arrowFormatSettings = arrowFormatSettings;
    return result;
  }

  ExecuteQueryRequest._();

  factory ExecuteQueryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteQueryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ExecuteQueryRequest_Query>
      _ExecuteQueryRequest_QueryByTag = {
    4: ExecuteQueryRequest_Query.queryContent,
    0: ExecuteQueryRequest_Query.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteQueryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..oo(0, [4])
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aE<ExecMode>(2, _omitFieldNames ? '' : 'execMode',
        enumValues: ExecMode.values)
    ..aOM<TransactionControl>(3, _omitFieldNames ? '' : 'txControl',
        subBuilder: TransactionControl.create)
    ..aOM<QueryContent>(4, _omitFieldNames ? '' : 'queryContent',
        subBuilder: QueryContent.create)
    ..m<$core.String, $2.TypedValue>(6, _omitFieldNames ? '' : 'parameters',
        entryClassName: 'ExecuteQueryRequest.ParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $2.TypedValue.create,
        valueDefaultOrMaker: $2.TypedValue.getDefault,
        packageName: const $pb.PackageName('Ydb.Query'))
    ..aE<StatsMode>(7, _omitFieldNames ? '' : 'statsMode',
        enumValues: StatsMode.values)
    ..aOB(8, _omitFieldNames ? '' : 'concurrentResultSets')
    ..aInt64(9, _omitFieldNames ? '' : 'responsePartLimitBytes')
    ..aOS(10, _omitFieldNames ? '' : 'poolId')
    ..aInt64(11, _omitFieldNames ? '' : 'statsPeriodMs')
    ..aE<SchemaInclusionMode>(12, _omitFieldNames ? '' : 'schemaInclusionMode',
        enumValues: SchemaInclusionMode.values)
    ..aE<$2.ResultSet_Format>(13, _omitFieldNames ? '' : 'resultSetFormat',
        enumValues: $2.ResultSet_Format.values)
    ..aOM<$1.ArrowFormatSettings>(
        14, _omitFieldNames ? '' : 'arrowFormatSettings',
        subBuilder: $1.ArrowFormatSettings.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteQueryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteQueryRequest copyWith(void Function(ExecuteQueryRequest) updates) =>
      super.copyWith((message) => updates(message as ExecuteQueryRequest))
          as ExecuteQueryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteQueryRequest create() => ExecuteQueryRequest._();
  @$core.override
  ExecuteQueryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteQueryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteQueryRequest>(create);
  static ExecuteQueryRequest? _defaultInstance;

  @$pb.TagNumber(4)
  ExecuteQueryRequest_Query whichQuery() =>
      _ExecuteQueryRequest_QueryByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(4)
  void clearQuery() => $_clearField($_whichOneof(0));

  /// Session identifier (required)
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  ExecMode get execMode => $_getN(1);
  @$pb.TagNumber(2)
  set execMode(ExecMode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExecMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearExecMode() => $_clearField(2);

  @$pb.TagNumber(3)
  TransactionControl get txControl => $_getN(2);
  @$pb.TagNumber(3)
  set txControl(TransactionControl value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTxControl() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxControl() => $_clearField(3);
  @$pb.TagNumber(3)
  TransactionControl ensureTxControl() => $_ensure(2);

  @$pb.TagNumber(4)
  QueryContent get queryContent => $_getN(3);
  @$pb.TagNumber(4)
  set queryContent(QueryContent value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasQueryContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearQueryContent() => $_clearField(4);
  @$pb.TagNumber(4)
  QueryContent ensureQueryContent() => $_ensure(3);

  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $2.TypedValue> get parameters => $_getMap(4);

  @$pb.TagNumber(7)
  StatsMode get statsMode => $_getN(5);
  @$pb.TagNumber(7)
  set statsMode(StatsMode value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasStatsMode() => $_has(5);
  @$pb.TagNumber(7)
  void clearStatsMode() => $_clearField(7);

  /// For queries with multiple result sets, some of them may be computed concurrently.
  /// If true, parts of different results sets may be interleaved in response stream.
  @$pb.TagNumber(8)
  $core.bool get concurrentResultSets => $_getBF(6);
  @$pb.TagNumber(8)
  set concurrentResultSets($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(8)
  $core.bool hasConcurrentResultSets() => $_has(6);
  @$pb.TagNumber(8)
  void clearConcurrentResultSets() => $_clearField(8);

  /// Allows to set size limitation (in bytes) for one result part
  @$pb.TagNumber(9)
  $fixnum.Int64 get responsePartLimitBytes => $_getI64(7);
  @$pb.TagNumber(9)
  set responsePartLimitBytes($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(9)
  $core.bool hasResponsePartLimitBytes() => $_has(7);
  @$pb.TagNumber(9)
  void clearResponsePartLimitBytes() => $_clearField(9);

  /// Workload manager pool id
  @$pb.TagNumber(10)
  $core.String get poolId => $_getSZ(8);
  @$pb.TagNumber(10)
  set poolId($core.String value) => $_setString(8, value);
  @$pb.TagNumber(10)
  $core.bool hasPoolId() => $_has(8);
  @$pb.TagNumber(10)
  void clearPoolId() => $_clearField(10);

  /// Time interval for sending periodical query statistics.
  /// When query statistics are enabled (stats_mode != STATS_MODE_NONE), by default statistics will be sent only once after query execution is finished.
  /// In case when stats_period_ms is specified and is non-zero, query statistics will be additionally sent every stats_period_ms milliseconds beginning from the start of query execution.
  @$pb.TagNumber(11)
  $fixnum.Int64 get statsPeriodMs => $_getI64(9);
  @$pb.TagNumber(11)
  set statsPeriodMs($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(11)
  $core.bool hasStatsPeriodMs() => $_has(9);
  @$pb.TagNumber(11)
  void clearStatsPeriodMs() => $_clearField(11);

  /// Schema inclusion mode for the result sets.
  /// If is not specified, SchemaInclusionMode.SCHEMA_INCLUSION_MODE_ALWAYS is used.
  @$pb.TagNumber(12)
  SchemaInclusionMode get schemaInclusionMode => $_getN(10);
  @$pb.TagNumber(12)
  set schemaInclusionMode(SchemaInclusionMode value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasSchemaInclusionMode() => $_has(10);
  @$pb.TagNumber(12)
  void clearSchemaInclusionMode() => $_clearField(12);

  /// Format of the result sets.
  /// If is not specified, Ydb.ResultSet.Format.FORMAT_VALUE is used.
  @$pb.TagNumber(13)
  $2.ResultSet_Format get resultSetFormat => $_getN(11);
  @$pb.TagNumber(13)
  set resultSetFormat($2.ResultSet_Format value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasResultSetFormat() => $_has(11);
  @$pb.TagNumber(13)
  void clearResultSetFormat() => $_clearField(13);

  /// Format settings, only used for Ydb.ResultSet.Format.FORMAT_ARROW
  @$pb.TagNumber(14)
  $1.ArrowFormatSettings get arrowFormatSettings => $_getN(12);
  @$pb.TagNumber(14)
  set arrowFormatSettings($1.ArrowFormatSettings value) =>
      $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasArrowFormatSettings() => $_has(12);
  @$pb.TagNumber(14)
  void clearArrowFormatSettings() => $_clearField(14);
  @$pb.TagNumber(14)
  $1.ArrowFormatSettings ensureArrowFormatSettings() => $_ensure(12);
}

class ResultSetMeta extends $pb.GeneratedMessage {
  factory ResultSetMeta({
    $core.Iterable<$2.Column>? columns,
  }) {
    final result = create();
    if (columns != null) result.columns.addAll(columns);
    return result;
  }

  ResultSetMeta._();

  factory ResultSetMeta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResultSetMeta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultSetMeta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..pPM<$2.Column>(1, _omitFieldNames ? '' : 'columns',
        subBuilder: $2.Column.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResultSetMeta clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResultSetMeta copyWith(void Function(ResultSetMeta) updates) =>
      super.copyWith((message) => updates(message as ResultSetMeta))
          as ResultSetMeta;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultSetMeta create() => ResultSetMeta._();
  @$core.override
  ResultSetMeta createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResultSetMeta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultSetMeta>(create);
  static ResultSetMeta? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.Column> get columns => $_getList(0);
}

class ExecuteQueryResponsePart extends $pb.GeneratedMessage {
  factory ExecuteQueryResponsePart({
    $6.StatusIds_StatusCode? status,
    $core.Iterable<$0.IssueMessage>? issues,
    $fixnum.Int64? resultSetIndex,
    $2.ResultSet? resultSet,
    $3.QueryStats? execStats,
    TransactionMeta? txMeta,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    if (resultSetIndex != null) result.resultSetIndex = resultSetIndex;
    if (resultSet != null) result.resultSet = resultSet;
    if (execStats != null) result.execStats = execStats;
    if (txMeta != null) result.txMeta = txMeta;
    return result;
  }

  ExecuteQueryResponsePart._();

  factory ExecuteQueryResponsePart.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteQueryResponsePart.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteQueryResponsePart',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aE<$6.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $6.StatusIds_StatusCode.values)
    ..pPM<$0.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $0.IssueMessage.create)
    ..aInt64(3, _omitFieldNames ? '' : 'resultSetIndex')
    ..aOM<$2.ResultSet>(4, _omitFieldNames ? '' : 'resultSet',
        subBuilder: $2.ResultSet.create)
    ..aOM<$3.QueryStats>(5, _omitFieldNames ? '' : 'execStats',
        subBuilder: $3.QueryStats.create)
    ..aOM<TransactionMeta>(6, _omitFieldNames ? '' : 'txMeta',
        subBuilder: TransactionMeta.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteQueryResponsePart clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteQueryResponsePart copyWith(
          void Function(ExecuteQueryResponsePart) updates) =>
      super.copyWith((message) => updates(message as ExecuteQueryResponsePart))
          as ExecuteQueryResponsePart;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteQueryResponsePart create() => ExecuteQueryResponsePart._();
  @$core.override
  ExecuteQueryResponsePart createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteQueryResponsePart getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteQueryResponsePart>(create);
  static ExecuteQueryResponsePart? _defaultInstance;

  @$pb.TagNumber(1)
  $6.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($6.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.IssueMessage> get issues => $_getList(1);

  /// Index of current result set
  @$pb.TagNumber(3)
  $fixnum.Int64 get resultSetIndex => $_getI64(2);
  @$pb.TagNumber(3)
  set resultSetIndex($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasResultSetIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearResultSetIndex() => $_clearField(3);

  /// Result set part
  @$pb.TagNumber(4)
  $2.ResultSet get resultSet => $_getN(3);
  @$pb.TagNumber(4)
  set resultSet($2.ResultSet value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasResultSet() => $_has(3);
  @$pb.TagNumber(4)
  void clearResultSet() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.ResultSet ensureResultSet() => $_ensure(3);

  /// Execution statistics (last part only)
  @$pb.TagNumber(5)
  $3.QueryStats get execStats => $_getN(4);
  @$pb.TagNumber(5)
  set execStats($3.QueryStats value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExecStats() => $_has(4);
  @$pb.TagNumber(5)
  void clearExecStats() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.QueryStats ensureExecStats() => $_ensure(4);

  @$pb.TagNumber(6)
  TransactionMeta get txMeta => $_getN(5);
  @$pb.TagNumber(6)
  set txMeta(TransactionMeta value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTxMeta() => $_has(5);
  @$pb.TagNumber(6)
  void clearTxMeta() => $_clearField(6);
  @$pb.TagNumber(6)
  TransactionMeta ensureTxMeta() => $_ensure(5);
}

class ExecuteScriptRequest extends $pb.GeneratedMessage {
  factory ExecuteScriptRequest({
    $4.OperationParams? operationParams,
    ExecMode? execMode,
    QueryContent? scriptContent,
    $core.Iterable<$core.MapEntry<$core.String, $2.TypedValue>>? parameters,
    StatsMode? statsMode,
    $5.Duration? resultsTtl,
    $core.String? poolId,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (execMode != null) result.execMode = execMode;
    if (scriptContent != null) result.scriptContent = scriptContent;
    if (parameters != null) result.parameters.addEntries(parameters);
    if (statsMode != null) result.statsMode = statsMode;
    if (resultsTtl != null) result.resultsTtl = resultsTtl;
    if (poolId != null) result.poolId = poolId;
    return result;
  }

  ExecuteScriptRequest._();

  factory ExecuteScriptRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteScriptRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteScriptRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aOM<$4.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $4.OperationParams.create)
    ..aE<ExecMode>(2, _omitFieldNames ? '' : 'execMode',
        enumValues: ExecMode.values)
    ..aOM<QueryContent>(3, _omitFieldNames ? '' : 'scriptContent',
        subBuilder: QueryContent.create)
    ..m<$core.String, $2.TypedValue>(4, _omitFieldNames ? '' : 'parameters',
        entryClassName: 'ExecuteScriptRequest.ParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $2.TypedValue.create,
        valueDefaultOrMaker: $2.TypedValue.getDefault,
        packageName: const $pb.PackageName('Ydb.Query'))
    ..aE<StatsMode>(5, _omitFieldNames ? '' : 'statsMode',
        enumValues: StatsMode.values)
    ..aOM<$5.Duration>(6, _omitFieldNames ? '' : 'resultsTtl',
        subBuilder: $5.Duration.create)
    ..aOS(7, _omitFieldNames ? '' : 'poolId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteScriptRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteScriptRequest copyWith(void Function(ExecuteScriptRequest) updates) =>
      super.copyWith((message) => updates(message as ExecuteScriptRequest))
          as ExecuteScriptRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteScriptRequest create() => ExecuteScriptRequest._();
  @$core.override
  ExecuteScriptRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteScriptRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteScriptRequest>(create);
  static ExecuteScriptRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $4.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($4.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $4.OperationParams ensureOperationParams() => $_ensure(0);

  @$pb.TagNumber(2)
  ExecMode get execMode => $_getN(1);
  @$pb.TagNumber(2)
  set execMode(ExecMode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExecMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearExecMode() => $_clearField(2);

  @$pb.TagNumber(3)
  QueryContent get scriptContent => $_getN(2);
  @$pb.TagNumber(3)
  set scriptContent(QueryContent value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasScriptContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearScriptContent() => $_clearField(3);
  @$pb.TagNumber(3)
  QueryContent ensureScriptContent() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $2.TypedValue> get parameters => $_getMap(3);

  @$pb.TagNumber(5)
  StatsMode get statsMode => $_getN(4);
  @$pb.TagNumber(5)
  set statsMode(StatsMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStatsMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatsMode() => $_clearField(5);

  /// After script execution operation finishes, TTL will start counting.
  /// After this TTL the results will be removed from database.
  @$pb.TagNumber(6)
  $5.Duration get resultsTtl => $_getN(5);
  @$pb.TagNumber(6)
  set resultsTtl($5.Duration value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasResultsTtl() => $_has(5);
  @$pb.TagNumber(6)
  void clearResultsTtl() => $_clearField(6);
  @$pb.TagNumber(6)
  $5.Duration ensureResultsTtl() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get poolId => $_getSZ(6);
  @$pb.TagNumber(7)
  set poolId($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPoolId() => $_has(6);
  @$pb.TagNumber(7)
  void clearPoolId() => $_clearField(7);
}

class ExecuteScriptMetadata extends $pb.GeneratedMessage {
  factory ExecuteScriptMetadata({
    $core.String? executionId,
    ExecStatus? execStatus,
    QueryContent? scriptContent,
    $core.Iterable<ResultSetMeta>? resultSetsMeta,
    ExecMode? execMode,
    $3.QueryStats? execStats,
  }) {
    final result = create();
    if (executionId != null) result.executionId = executionId;
    if (execStatus != null) result.execStatus = execStatus;
    if (scriptContent != null) result.scriptContent = scriptContent;
    if (resultSetsMeta != null) result.resultSetsMeta.addAll(resultSetsMeta);
    if (execMode != null) result.execMode = execMode;
    if (execStats != null) result.execStats = execStats;
    return result;
  }

  ExecuteScriptMetadata._();

  factory ExecuteScriptMetadata.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteScriptMetadata.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteScriptMetadata',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'executionId')
    ..aE<ExecStatus>(2, _omitFieldNames ? '' : 'execStatus',
        enumValues: ExecStatus.values)
    ..aOM<QueryContent>(3, _omitFieldNames ? '' : 'scriptContent',
        subBuilder: QueryContent.create)
    ..pPM<ResultSetMeta>(4, _omitFieldNames ? '' : 'resultSetsMeta',
        subBuilder: ResultSetMeta.create)
    ..aE<ExecMode>(5, _omitFieldNames ? '' : 'execMode',
        enumValues: ExecMode.values)
    ..aOM<$3.QueryStats>(6, _omitFieldNames ? '' : 'execStats',
        subBuilder: $3.QueryStats.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteScriptMetadata clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteScriptMetadata copyWith(
          void Function(ExecuteScriptMetadata) updates) =>
      super.copyWith((message) => updates(message as ExecuteScriptMetadata))
          as ExecuteScriptMetadata;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteScriptMetadata create() => ExecuteScriptMetadata._();
  @$core.override
  ExecuteScriptMetadata createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteScriptMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteScriptMetadata>(create);
  static ExecuteScriptMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get executionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set executionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasExecutionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearExecutionId() => $_clearField(1);

  @$pb.TagNumber(2)
  ExecStatus get execStatus => $_getN(1);
  @$pb.TagNumber(2)
  set execStatus(ExecStatus value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExecStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearExecStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  QueryContent get scriptContent => $_getN(2);
  @$pb.TagNumber(3)
  set scriptContent(QueryContent value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasScriptContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearScriptContent() => $_clearField(3);
  @$pb.TagNumber(3)
  QueryContent ensureScriptContent() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbList<ResultSetMeta> get resultSetsMeta => $_getList(3);

  @$pb.TagNumber(5)
  ExecMode get execMode => $_getN(4);
  @$pb.TagNumber(5)
  set execMode(ExecMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExecMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearExecMode() => $_clearField(5);

  /// Execution statistics
  @$pb.TagNumber(6)
  $3.QueryStats get execStats => $_getN(5);
  @$pb.TagNumber(6)
  set execStats($3.QueryStats value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasExecStats() => $_has(5);
  @$pb.TagNumber(6)
  void clearExecStats() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.QueryStats ensureExecStats() => $_ensure(5);
}

class FetchScriptResultsRequest extends $pb.GeneratedMessage {
  factory FetchScriptResultsRequest({
    $core.String? operationId,
    $fixnum.Int64? resultSetIndex,
    $core.String? fetchToken,
    $fixnum.Int64? rowsLimit,
  }) {
    final result = create();
    if (operationId != null) result.operationId = operationId;
    if (resultSetIndex != null) result.resultSetIndex = resultSetIndex;
    if (fetchToken != null) result.fetchToken = fetchToken;
    if (rowsLimit != null) result.rowsLimit = rowsLimit;
    return result;
  }

  FetchScriptResultsRequest._();

  factory FetchScriptResultsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FetchScriptResultsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FetchScriptResultsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'operationId')
    ..aInt64(2, _omitFieldNames ? '' : 'resultSetIndex')
    ..aOS(3, _omitFieldNames ? '' : 'fetchToken')
    ..aInt64(4, _omitFieldNames ? '' : 'rowsLimit')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FetchScriptResultsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FetchScriptResultsRequest copyWith(
          void Function(FetchScriptResultsRequest) updates) =>
      super.copyWith((message) => updates(message as FetchScriptResultsRequest))
          as FetchScriptResultsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchScriptResultsRequest create() => FetchScriptResultsRequest._();
  @$core.override
  FetchScriptResultsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FetchScriptResultsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FetchScriptResultsRequest>(create);
  static FetchScriptResultsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get operationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set operationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get resultSetIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set resultSetIndex($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasResultSetIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearResultSetIndex() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fetchToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set fetchToken($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFetchToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearFetchToken() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get rowsLimit => $_getI64(3);
  @$pb.TagNumber(4)
  set rowsLimit($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRowsLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearRowsLimit() => $_clearField(4);
}

class FetchScriptResultsResponse extends $pb.GeneratedMessage {
  factory FetchScriptResultsResponse({
    $6.StatusIds_StatusCode? status,
    $core.Iterable<$0.IssueMessage>? issues,
    $fixnum.Int64? resultSetIndex,
    $2.ResultSet? resultSet,
    $core.String? nextFetchToken,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    if (resultSetIndex != null) result.resultSetIndex = resultSetIndex;
    if (resultSet != null) result.resultSet = resultSet;
    if (nextFetchToken != null) result.nextFetchToken = nextFetchToken;
    return result;
  }

  FetchScriptResultsResponse._();

  factory FetchScriptResultsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FetchScriptResultsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FetchScriptResultsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aE<$6.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $6.StatusIds_StatusCode.values)
    ..pPM<$0.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $0.IssueMessage.create)
    ..aInt64(3, _omitFieldNames ? '' : 'resultSetIndex')
    ..aOM<$2.ResultSet>(4, _omitFieldNames ? '' : 'resultSet',
        subBuilder: $2.ResultSet.create)
    ..aOS(5, _omitFieldNames ? '' : 'nextFetchToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FetchScriptResultsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FetchScriptResultsResponse copyWith(
          void Function(FetchScriptResultsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as FetchScriptResultsResponse))
          as FetchScriptResultsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchScriptResultsResponse create() => FetchScriptResultsResponse._();
  @$core.override
  FetchScriptResultsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FetchScriptResultsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FetchScriptResultsResponse>(create);
  static FetchScriptResultsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($6.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.IssueMessage> get issues => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get resultSetIndex => $_getI64(2);
  @$pb.TagNumber(3)
  set resultSetIndex($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasResultSetIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearResultSetIndex() => $_clearField(3);

  @$pb.TagNumber(4)
  $2.ResultSet get resultSet => $_getN(3);
  @$pb.TagNumber(4)
  set resultSet($2.ResultSet value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasResultSet() => $_has(3);
  @$pb.TagNumber(4)
  void clearResultSet() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.ResultSet ensureResultSet() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get nextFetchToken => $_getSZ(4);
  @$pb.TagNumber(5)
  set nextFetchToken($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNextFetchToken() => $_has(4);
  @$pb.TagNumber(5)
  void clearNextFetchToken() => $_clearField(5);
}

class Script extends $pb.GeneratedMessage {
  factory Script({
    QueryContent? scriptContent,
  }) {
    final result = create();
    if (scriptContent != null) result.scriptContent = scriptContent;
    return result;
  }

  Script._();

  factory Script.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Script.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Script',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Query'),
      createEmptyInstance: create)
    ..aOM<QueryContent>(1, _omitFieldNames ? '' : 'scriptContent',
        subBuilder: QueryContent.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Script clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Script copyWith(void Function(Script) updates) =>
      super.copyWith((message) => updates(message as Script)) as Script;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Script create() => Script._();
  @$core.override
  Script createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Script getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Script>(create);
  static Script? _defaultInstance;

  @$pb.TagNumber(1)
  QueryContent get scriptContent => $_getN(0);
  @$pb.TagNumber(1)
  set scriptContent(QueryContent value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasScriptContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearScriptContent() => $_clearField(1);
  @$pb.TagNumber(1)
  QueryContent ensureScriptContent() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

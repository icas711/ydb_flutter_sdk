// This is a generated file - do not edit.
//
// Generated from ydb_topic.proto.

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
    as $2;
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as $4;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $1;

import 'ydb_issue_message.pb.dart' as $0;
import 'ydb_operation.pb.dart' as $3;
import 'ydb_scheme.pb.dart' as $5;
import 'ydb_status_codes.pbenum.dart' as $6;
import 'ydb_topic.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ydb_topic.pbenum.dart';

/// Description of supported codecs.
class SupportedCodecs extends $pb.GeneratedMessage {
  factory SupportedCodecs({
    $core.Iterable<$core.int>? codecs,
  }) {
    final result = create();
    if (codecs != null) result.codecs.addAll(codecs);
    return result;
  }

  SupportedCodecs._();

  factory SupportedCodecs.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SupportedCodecs.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SupportedCodecs',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'codecs', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SupportedCodecs clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SupportedCodecs copyWith(void Function(SupportedCodecs) updates) =>
      super.copyWith((message) => updates(message as SupportedCodecs))
          as SupportedCodecs;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupportedCodecs create() => SupportedCodecs._();
  @$core.override
  SupportedCodecs createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SupportedCodecs getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SupportedCodecs>(create);
  static SupportedCodecs? _defaultInstance;

  /// List of supported codecs.
  /// See enum Codec above for values.
  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get codecs => $_getList(0);
}

/// Represents range [start, end).
/// I.e. (end - 1) is the greatest of offsets, included in non-empty range.
class OffsetsRange extends $pb.GeneratedMessage {
  factory OffsetsRange({
    $fixnum.Int64? start,
    $fixnum.Int64? end,
  }) {
    final result = create();
    if (start != null) result.start = start;
    if (end != null) result.end = end;
    return result;
  }

  OffsetsRange._();

  factory OffsetsRange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OffsetsRange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OffsetsRange',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'start')
    ..aInt64(2, _omitFieldNames ? '' : 'end')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OffsetsRange clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OffsetsRange copyWith(void Function(OffsetsRange) updates) =>
      super.copyWith((message) => updates(message as OffsetsRange))
          as OffsetsRange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OffsetsRange create() => OffsetsRange._();
  @$core.override
  OffsetsRange createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OffsetsRange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OffsetsRange>(create);
  static OffsetsRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get start => $_getI64(0);
  @$pb.TagNumber(1)
  set start($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get end => $_getI64(1);
  @$pb.TagNumber(2)
  set end($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnd() => $_clearField(2);
}

/// In-session reauthentication and reauthorization, lets user increase session lifetime.
/// Client should wait for UpdateTokenResponse before sending next UpdateTokenRequest.
class UpdateTokenRequest extends $pb.GeneratedMessage {
  factory UpdateTokenRequest({
    $core.String? token,
  }) {
    final result = create();
    if (token != null) result.token = token;
    return result;
  }

  UpdateTokenRequest._();

  factory UpdateTokenRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateTokenRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateTokenRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateTokenRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateTokenRequest copyWith(void Function(UpdateTokenRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateTokenRequest))
          as UpdateTokenRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTokenRequest create() => UpdateTokenRequest._();
  @$core.override
  UpdateTokenRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateTokenRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateTokenRequest>(create);
  static UpdateTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);
}

class UpdateTokenResponse extends $pb.GeneratedMessage {
  factory UpdateTokenResponse() => create();

  UpdateTokenResponse._();

  factory UpdateTokenResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateTokenResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateTokenResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateTokenResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateTokenResponse copyWith(void Function(UpdateTokenResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateTokenResponse))
          as UpdateTokenResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTokenResponse create() => UpdateTokenResponse._();
  @$core.override
  UpdateTokenResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateTokenResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateTokenResponse>(create);
  static UpdateTokenResponse? _defaultInstance;
}

class PartitionWithGeneration extends $pb.GeneratedMessage {
  factory PartitionWithGeneration({
    $fixnum.Int64? partitionId,
    $fixnum.Int64? generation,
  }) {
    final result = create();
    if (partitionId != null) result.partitionId = partitionId;
    if (generation != null) result.generation = generation;
    return result;
  }

  PartitionWithGeneration._();

  factory PartitionWithGeneration.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PartitionWithGeneration.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PartitionWithGeneration',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionId')
    ..aInt64(2, _omitFieldNames ? '' : 'generation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitionWithGeneration clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitionWithGeneration copyWith(
          void Function(PartitionWithGeneration) updates) =>
      super.copyWith((message) => updates(message as PartitionWithGeneration))
          as PartitionWithGeneration;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartitionWithGeneration create() => PartitionWithGeneration._();
  @$core.override
  PartitionWithGeneration createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PartitionWithGeneration getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PartitionWithGeneration>(create);
  static PartitionWithGeneration? _defaultInstance;

  /// Partition identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionId() => $_clearField(1);

  /// Partition generation.
  @$pb.TagNumber(2)
  $fixnum.Int64 get generation => $_getI64(1);
  @$pb.TagNumber(2)
  set generation($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGeneration() => $_has(1);
  @$pb.TagNumber(2)
  void clearGeneration() => $_clearField(2);
}

class MetadataItem extends $pb.GeneratedMessage {
  factory MetadataItem({
    $core.String? key,
    $core.List<$core.int>? value,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (value != null) result.value = value;
    return result;
  }

  MetadataItem._();

  factory MetadataItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MetadataItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MetadataItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MetadataItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MetadataItem copyWith(void Function(MetadataItem) updates) =>
      super.copyWith((message) => updates(message as MetadataItem))
          as MetadataItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetadataItem create() => MetadataItem._();
  @$core.override
  MetadataItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MetadataItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MetadataItem>(create);
  static MetadataItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

enum StreamWriteMessage_FromClient_ClientMessage {
  initRequest,
  writeRequest,
  updateTokenRequest,
  notSet
}

/// Client-server message for write session. Contains one of:
///     InitRequest - handshake request.
///     WriteRequest - portion of data to be written.
///     UpdateTokenRequest - user credentials if update is needed.
class StreamWriteMessage_FromClient extends $pb.GeneratedMessage {
  factory StreamWriteMessage_FromClient({
    StreamWriteMessage_InitRequest? initRequest,
    StreamWriteMessage_WriteRequest? writeRequest,
    UpdateTokenRequest? updateTokenRequest,
  }) {
    final result = create();
    if (initRequest != null) result.initRequest = initRequest;
    if (writeRequest != null) result.writeRequest = writeRequest;
    if (updateTokenRequest != null)
      result.updateTokenRequest = updateTokenRequest;
    return result;
  }

  StreamWriteMessage_FromClient._();

  factory StreamWriteMessage_FromClient.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage_FromClient.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, StreamWriteMessage_FromClient_ClientMessage>
      _StreamWriteMessage_FromClient_ClientMessageByTag = {
    1: StreamWriteMessage_FromClient_ClientMessage.initRequest,
    2: StreamWriteMessage_FromClient_ClientMessage.writeRequest,
    3: StreamWriteMessage_FromClient_ClientMessage.updateTokenRequest,
    0: StreamWriteMessage_FromClient_ClientMessage.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamWriteMessage.FromClient',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<StreamWriteMessage_InitRequest>(
        1, _omitFieldNames ? '' : 'initRequest',
        subBuilder: StreamWriteMessage_InitRequest.create)
    ..aOM<StreamWriteMessage_WriteRequest>(
        2, _omitFieldNames ? '' : 'writeRequest',
        subBuilder: StreamWriteMessage_WriteRequest.create)
    ..aOM<UpdateTokenRequest>(3, _omitFieldNames ? '' : 'updateTokenRequest',
        subBuilder: UpdateTokenRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_FromClient clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_FromClient copyWith(
          void Function(StreamWriteMessage_FromClient) updates) =>
      super.copyWith(
              (message) => updates(message as StreamWriteMessage_FromClient))
          as StreamWriteMessage_FromClient;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_FromClient create() =>
      StreamWriteMessage_FromClient._();
  @$core.override
  StreamWriteMessage_FromClient createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_FromClient getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamWriteMessage_FromClient>(create);
  static StreamWriteMessage_FromClient? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  StreamWriteMessage_FromClient_ClientMessage whichClientMessage() =>
      _StreamWriteMessage_FromClient_ClientMessageByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearClientMessage() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  StreamWriteMessage_InitRequest get initRequest => $_getN(0);
  @$pb.TagNumber(1)
  set initRequest(StreamWriteMessage_InitRequest value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInitRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearInitRequest() => $_clearField(1);
  @$pb.TagNumber(1)
  StreamWriteMessage_InitRequest ensureInitRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  StreamWriteMessage_WriteRequest get writeRequest => $_getN(1);
  @$pb.TagNumber(2)
  set writeRequest(StreamWriteMessage_WriteRequest value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasWriteRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearWriteRequest() => $_clearField(2);
  @$pb.TagNumber(2)
  StreamWriteMessage_WriteRequest ensureWriteRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  UpdateTokenRequest get updateTokenRequest => $_getN(2);
  @$pb.TagNumber(3)
  set updateTokenRequest(UpdateTokenRequest value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUpdateTokenRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateTokenRequest() => $_clearField(3);
  @$pb.TagNumber(3)
  UpdateTokenRequest ensureUpdateTokenRequest() => $_ensure(2);
}

enum StreamWriteMessage_FromServer_ServerMessage {
  initResponse,
  writeResponse,
  updateTokenResponse,
  notSet
}

/// Server-client message for write session. Contains either non-success status, or one of:
///     InitResponse - correct handshake response.
///     WriteResponse - acknowledgment of storing client messages.
///     UpdateTokenResponse - acknowledgment of reauthentication and reauthorization.
class StreamWriteMessage_FromServer extends $pb.GeneratedMessage {
  factory StreamWriteMessage_FromServer({
    $6.StatusIds_StatusCode? status,
    $core.Iterable<$0.IssueMessage>? issues,
    StreamWriteMessage_InitResponse? initResponse,
    StreamWriteMessage_WriteResponse? writeResponse,
    UpdateTokenResponse? updateTokenResponse,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    if (initResponse != null) result.initResponse = initResponse;
    if (writeResponse != null) result.writeResponse = writeResponse;
    if (updateTokenResponse != null)
      result.updateTokenResponse = updateTokenResponse;
    return result;
  }

  StreamWriteMessage_FromServer._();

  factory StreamWriteMessage_FromServer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage_FromServer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, StreamWriteMessage_FromServer_ServerMessage>
      _StreamWriteMessage_FromServer_ServerMessageByTag = {
    3: StreamWriteMessage_FromServer_ServerMessage.initResponse,
    4: StreamWriteMessage_FromServer_ServerMessage.writeResponse,
    5: StreamWriteMessage_FromServer_ServerMessage.updateTokenResponse,
    0: StreamWriteMessage_FromServer_ServerMessage.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamWriteMessage.FromServer',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5])
    ..aE<$6.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $6.StatusIds_StatusCode.values)
    ..pPM<$0.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $0.IssueMessage.create)
    ..aOM<StreamWriteMessage_InitResponse>(
        3, _omitFieldNames ? '' : 'initResponse',
        subBuilder: StreamWriteMessage_InitResponse.create)
    ..aOM<StreamWriteMessage_WriteResponse>(
        4, _omitFieldNames ? '' : 'writeResponse',
        subBuilder: StreamWriteMessage_WriteResponse.create)
    ..aOM<UpdateTokenResponse>(5, _omitFieldNames ? '' : 'updateTokenResponse',
        subBuilder: UpdateTokenResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_FromServer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_FromServer copyWith(
          void Function(StreamWriteMessage_FromServer) updates) =>
      super.copyWith(
              (message) => updates(message as StreamWriteMessage_FromServer))
          as StreamWriteMessage_FromServer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_FromServer create() =>
      StreamWriteMessage_FromServer._();
  @$core.override
  StreamWriteMessage_FromServer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_FromServer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamWriteMessage_FromServer>(create);
  static StreamWriteMessage_FromServer? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  StreamWriteMessage_FromServer_ServerMessage whichServerMessage() =>
      _StreamWriteMessage_FromServer_ServerMessageByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearServerMessage() => $_clearField($_whichOneof(0));

  /// Server status of response.
  @$pb.TagNumber(1)
  $6.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($6.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  /// Issues if any.
  @$pb.TagNumber(2)
  $pb.PbList<$0.IssueMessage> get issues => $_getList(1);

  @$pb.TagNumber(3)
  StreamWriteMessage_InitResponse get initResponse => $_getN(2);
  @$pb.TagNumber(3)
  set initResponse(StreamWriteMessage_InitResponse value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasInitResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearInitResponse() => $_clearField(3);
  @$pb.TagNumber(3)
  StreamWriteMessage_InitResponse ensureInitResponse() => $_ensure(2);

  @$pb.TagNumber(4)
  StreamWriteMessage_WriteResponse get writeResponse => $_getN(3);
  @$pb.TagNumber(4)
  set writeResponse(StreamWriteMessage_WriteResponse value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasWriteResponse() => $_has(3);
  @$pb.TagNumber(4)
  void clearWriteResponse() => $_clearField(4);
  @$pb.TagNumber(4)
  StreamWriteMessage_WriteResponse ensureWriteResponse() => $_ensure(3);

  @$pb.TagNumber(5)
  UpdateTokenResponse get updateTokenResponse => $_getN(4);
  @$pb.TagNumber(5)
  set updateTokenResponse(UpdateTokenResponse value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasUpdateTokenResponse() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdateTokenResponse() => $_clearField(5);
  @$pb.TagNumber(5)
  UpdateTokenResponse ensureUpdateTokenResponse() => $_ensure(4);
}

enum StreamWriteMessage_InitRequest_Partitioning {
  messageGroupId,
  partitionId,
  partitionWithGeneration,
  notSet
}

/// Handshake request that must be sent to server first.
class StreamWriteMessage_InitRequest extends $pb.GeneratedMessage {
  factory StreamWriteMessage_InitRequest({
    $core.String? path,
    $core.String? producerId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>?
        writeSessionMeta,
    $core.String? messageGroupId,
    $fixnum.Int64? partitionId,
    $core.bool? getLastSeqNo,
    PartitionWithGeneration? partitionWithGeneration,
  }) {
    final result = create();
    if (path != null) result.path = path;
    if (producerId != null) result.producerId = producerId;
    if (writeSessionMeta != null)
      result.writeSessionMeta.addEntries(writeSessionMeta);
    if (messageGroupId != null) result.messageGroupId = messageGroupId;
    if (partitionId != null) result.partitionId = partitionId;
    if (getLastSeqNo != null) result.getLastSeqNo = getLastSeqNo;
    if (partitionWithGeneration != null)
      result.partitionWithGeneration = partitionWithGeneration;
    return result;
  }

  StreamWriteMessage_InitRequest._();

  factory StreamWriteMessage_InitRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage_InitRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, StreamWriteMessage_InitRequest_Partitioning>
      _StreamWriteMessage_InitRequest_PartitioningByTag = {
    4: StreamWriteMessage_InitRequest_Partitioning.messageGroupId,
    5: StreamWriteMessage_InitRequest_Partitioning.partitionId,
    7: StreamWriteMessage_InitRequest_Partitioning.partitionWithGeneration,
    0: StreamWriteMessage_InitRequest_Partitioning.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamWriteMessage.InitRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..oo(0, [4, 5, 7])
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aOS(2, _omitFieldNames ? '' : 'producerId')
    ..m<$core.String, $core.String>(
        3, _omitFieldNames ? '' : 'writeSessionMeta',
        entryClassName: 'StreamWriteMessage.InitRequest.WriteSessionMetaEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Topic'))
    ..aOS(4, _omitFieldNames ? '' : 'messageGroupId')
    ..aInt64(5, _omitFieldNames ? '' : 'partitionId')
    ..aOB(6, _omitFieldNames ? '' : 'getLastSeqNo')
    ..aOM<PartitionWithGeneration>(
        7, _omitFieldNames ? '' : 'partitionWithGeneration',
        subBuilder: PartitionWithGeneration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_InitRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_InitRequest copyWith(
          void Function(StreamWriteMessage_InitRequest) updates) =>
      super.copyWith(
              (message) => updates(message as StreamWriteMessage_InitRequest))
          as StreamWriteMessage_InitRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_InitRequest create() =>
      StreamWriteMessage_InitRequest._();
  @$core.override
  StreamWriteMessage_InitRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_InitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamWriteMessage_InitRequest>(create);
  static StreamWriteMessage_InitRequest? _defaultInstance;

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(7)
  StreamWriteMessage_InitRequest_Partitioning whichPartitioning() =>
      _StreamWriteMessage_InitRequest_PartitioningByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(7)
  void clearPartitioning() => $_clearField($_whichOneof(0));

  /// Full path of topic to write to.
  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);

  /// Producer identifier of client data stream.
  /// Used for message deduplication by sequence numbers.
  @$pb.TagNumber(2)
  $core.String get producerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set producerId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProducerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProducerId() => $_clearField(2);

  /// User metadata attached to this write session.
  /// Reader will get this session meta data with each message read.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get writeSessionMeta => $_getMap(2);

  /// All messages with given pair (producer_id, message_group_id) go to single partition in order of writes.
  @$pb.TagNumber(4)
  $core.String get messageGroupId => $_getSZ(3);
  @$pb.TagNumber(4)
  set messageGroupId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMessageGroupId() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessageGroupId() => $_clearField(4);

  /// Explicit partition id to write to.
  @$pb.TagNumber(5)
  $fixnum.Int64 get partitionId => $_getI64(4);
  @$pb.TagNumber(5)
  set partitionId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPartitionId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPartitionId() => $_clearField(5);

  /// Explicitly request for last sequential number
  /// It may be expensive, if producer wrote to many partitions before.
  @$pb.TagNumber(6)
  $core.bool get getLastSeqNo => $_getBF(5);
  @$pb.TagNumber(6)
  set getLastSeqNo($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasGetLastSeqNo() => $_has(5);
  @$pb.TagNumber(6)
  void clearGetLastSeqNo() => $_clearField(6);

  /// Explicit partition location to write to.
  @$pb.TagNumber(7)
  PartitionWithGeneration get partitionWithGeneration => $_getN(6);
  @$pb.TagNumber(7)
  set partitionWithGeneration(PartitionWithGeneration value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPartitionWithGeneration() => $_has(6);
  @$pb.TagNumber(7)
  void clearPartitionWithGeneration() => $_clearField(7);
  @$pb.TagNumber(7)
  PartitionWithGeneration ensurePartitionWithGeneration() => $_ensure(6);
}

/// Response to the handshake.
class StreamWriteMessage_InitResponse extends $pb.GeneratedMessage {
  factory StreamWriteMessage_InitResponse({
    $fixnum.Int64? lastSeqNo,
    $core.String? sessionId,
    $fixnum.Int64? partitionId,
    SupportedCodecs? supportedCodecs,
  }) {
    final result = create();
    if (lastSeqNo != null) result.lastSeqNo = lastSeqNo;
    if (sessionId != null) result.sessionId = sessionId;
    if (partitionId != null) result.partitionId = partitionId;
    if (supportedCodecs != null) result.supportedCodecs = supportedCodecs;
    return result;
  }

  StreamWriteMessage_InitResponse._();

  factory StreamWriteMessage_InitResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage_InitResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamWriteMessage.InitResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'lastSeqNo')
    ..aOS(2, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(3, _omitFieldNames ? '' : 'partitionId')
    ..aOM<SupportedCodecs>(4, _omitFieldNames ? '' : 'supportedCodecs',
        subBuilder: SupportedCodecs.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_InitResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_InitResponse copyWith(
          void Function(StreamWriteMessage_InitResponse) updates) =>
      super.copyWith(
              (message) => updates(message as StreamWriteMessage_InitResponse))
          as StreamWriteMessage_InitResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_InitResponse create() =>
      StreamWriteMessage_InitResponse._();
  @$core.override
  StreamWriteMessage_InitResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_InitResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamWriteMessage_InitResponse>(
          create);
  static StreamWriteMessage_InitResponse? _defaultInstance;

  /// Last persisted message's sequence number for this producer.
  /// Zero for new producer.
  @$pb.TagNumber(1)
  $fixnum.Int64 get lastSeqNo => $_getI64(0);
  @$pb.TagNumber(1)
  set lastSeqNo($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLastSeqNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastSeqNo() => $_clearField(1);

  /// Unique identifier of write session. Used for debug purposes.
  @$pb.TagNumber(2)
  $core.String get sessionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => $_clearField(2);

  /// Identifier of partition that is matched for this write session.
  @$pb.TagNumber(3)
  $fixnum.Int64 get partitionId => $_getI64(2);
  @$pb.TagNumber(3)
  set partitionId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPartitionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartitionId() => $_clearField(3);

  /// Client can only use compression codecs from this set to write messages to topic.
  /// Otherwise session will be closed with BAD_REQUEST.
  @$pb.TagNumber(4)
  SupportedCodecs get supportedCodecs => $_getN(3);
  @$pb.TagNumber(4)
  set supportedCodecs(SupportedCodecs value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSupportedCodecs() => $_has(3);
  @$pb.TagNumber(4)
  void clearSupportedCodecs() => $_clearField(4);
  @$pb.TagNumber(4)
  SupportedCodecs ensureSupportedCodecs() => $_ensure(3);
}

enum StreamWriteMessage_WriteRequest_MessageData_Partitioning {
  messageGroupId,
  partitionId,
  partitionWithGeneration,
  notSet
}

class StreamWriteMessage_WriteRequest_MessageData extends $pb.GeneratedMessage {
  factory StreamWriteMessage_WriteRequest_MessageData({
    $fixnum.Int64? seqNo,
    $1.Timestamp? createdAt,
    $core.List<$core.int>? data,
    $fixnum.Int64? uncompressedSize,
    $core.String? messageGroupId,
    $fixnum.Int64? partitionId,
    $core.Iterable<MetadataItem>? metadataItems,
    PartitionWithGeneration? partitionWithGeneration,
  }) {
    final result = create();
    if (seqNo != null) result.seqNo = seqNo;
    if (createdAt != null) result.createdAt = createdAt;
    if (data != null) result.data = data;
    if (uncompressedSize != null) result.uncompressedSize = uncompressedSize;
    if (messageGroupId != null) result.messageGroupId = messageGroupId;
    if (partitionId != null) result.partitionId = partitionId;
    if (metadataItems != null) result.metadataItems.addAll(metadataItems);
    if (partitionWithGeneration != null)
      result.partitionWithGeneration = partitionWithGeneration;
    return result;
  }

  StreamWriteMessage_WriteRequest_MessageData._();

  factory StreamWriteMessage_WriteRequest_MessageData.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage_WriteRequest_MessageData.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core
      .Map<$core.int, StreamWriteMessage_WriteRequest_MessageData_Partitioning>
      _StreamWriteMessage_WriteRequest_MessageData_PartitioningByTag = {
    5: StreamWriteMessage_WriteRequest_MessageData_Partitioning.messageGroupId,
    6: StreamWriteMessage_WriteRequest_MessageData_Partitioning.partitionId,
    8: StreamWriteMessage_WriteRequest_MessageData_Partitioning
        .partitionWithGeneration,
    0: StreamWriteMessage_WriteRequest_MessageData_Partitioning.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamWriteMessage.WriteRequest.MessageData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..oo(0, [5, 6, 8])
    ..aInt64(1, _omitFieldNames ? '' : 'seqNo')
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $1.Timestamp.create)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aInt64(4, _omitFieldNames ? '' : 'uncompressedSize')
    ..aOS(5, _omitFieldNames ? '' : 'messageGroupId')
    ..aInt64(6, _omitFieldNames ? '' : 'partitionId')
    ..pPM<MetadataItem>(7, _omitFieldNames ? '' : 'metadataItems',
        subBuilder: MetadataItem.create)
    ..aOM<PartitionWithGeneration>(
        8, _omitFieldNames ? '' : 'partitionWithGeneration',
        subBuilder: PartitionWithGeneration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteRequest_MessageData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteRequest_MessageData copyWith(
          void Function(StreamWriteMessage_WriteRequest_MessageData) updates) =>
      super.copyWith((message) =>
              updates(message as StreamWriteMessage_WriteRequest_MessageData))
          as StreamWriteMessage_WriteRequest_MessageData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteRequest_MessageData create() =>
      StreamWriteMessage_WriteRequest_MessageData._();
  @$core.override
  StreamWriteMessage_WriteRequest_MessageData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteRequest_MessageData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamWriteMessage_WriteRequest_MessageData>(create);
  static StreamWriteMessage_WriteRequest_MessageData? _defaultInstance;

  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(8)
  StreamWriteMessage_WriteRequest_MessageData_Partitioning
      whichPartitioning() =>
          _StreamWriteMessage_WriteRequest_MessageData_PartitioningByTag[
              $_whichOneof(0)]!;
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(8)
  void clearPartitioning() => $_clearField($_whichOneof(0));

  /// Message sequence number, provided by client for deduplication.
  /// Starts at 1
  @$pb.TagNumber(1)
  $fixnum.Int64 get seqNo => $_getI64(0);
  @$pb.TagNumber(1)
  set seqNo($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSeqNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeqNo() => $_clearField(1);

  /// Creation timestamp
  @$pb.TagNumber(2)
  $1.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($1.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureCreatedAt() => $_ensure(1);

  /// Compressed client message body.
  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => $_clearField(3);

  /// Uncompressed size of client message body.
  @$pb.TagNumber(4)
  $fixnum.Int64 get uncompressedSize => $_getI64(3);
  @$pb.TagNumber(4)
  set uncompressedSize($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUncompressedSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearUncompressedSize() => $_clearField(4);

  /// All messages with given pair (producer_id, message_group_id) go to single partition in order of writes.
  @$pb.TagNumber(5)
  $core.String get messageGroupId => $_getSZ(4);
  @$pb.TagNumber(5)
  set messageGroupId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMessageGroupId() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessageGroupId() => $_clearField(5);

  /// Explicit partition id to write to.
  @$pb.TagNumber(6)
  $fixnum.Int64 get partitionId => $_getI64(5);
  @$pb.TagNumber(6)
  set partitionId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPartitionId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPartitionId() => $_clearField(6);

  /// Message metadata. Overall size is limited to 4096 symbols (all keys and values combined).
  @$pb.TagNumber(7)
  $pb.PbList<MetadataItem> get metadataItems => $_getList(6);

  /// Explicit partition location to write to.
  @$pb.TagNumber(8)
  PartitionWithGeneration get partitionWithGeneration => $_getN(7);
  @$pb.TagNumber(8)
  set partitionWithGeneration(PartitionWithGeneration value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasPartitionWithGeneration() => $_has(7);
  @$pb.TagNumber(8)
  void clearPartitionWithGeneration() => $_clearField(8);
  @$pb.TagNumber(8)
  PartitionWithGeneration ensurePartitionWithGeneration() => $_ensure(7);
}

/// Represents portion of client messages.
class StreamWriteMessage_WriteRequest extends $pb.GeneratedMessage {
  factory StreamWriteMessage_WriteRequest({
    $core.Iterable<StreamWriteMessage_WriteRequest_MessageData>? messages,
    $core.int? codec,
    TransactionIdentity? tx,
  }) {
    final result = create();
    if (messages != null) result.messages.addAll(messages);
    if (codec != null) result.codec = codec;
    if (tx != null) result.tx = tx;
    return result;
  }

  StreamWriteMessage_WriteRequest._();

  factory StreamWriteMessage_WriteRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage_WriteRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamWriteMessage.WriteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..pPM<StreamWriteMessage_WriteRequest_MessageData>(
        1, _omitFieldNames ? '' : 'messages',
        subBuilder: StreamWriteMessage_WriteRequest_MessageData.create)
    ..aI(2, _omitFieldNames ? '' : 'codec')
    ..aOM<TransactionIdentity>(3, _omitFieldNames ? '' : 'tx',
        subBuilder: TransactionIdentity.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteRequest copyWith(
          void Function(StreamWriteMessage_WriteRequest) updates) =>
      super.copyWith(
              (message) => updates(message as StreamWriteMessage_WriteRequest))
          as StreamWriteMessage_WriteRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteRequest create() =>
      StreamWriteMessage_WriteRequest._();
  @$core.override
  StreamWriteMessage_WriteRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamWriteMessage_WriteRequest>(
          create);
  static StreamWriteMessage_WriteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<StreamWriteMessage_WriteRequest_MessageData> get messages =>
      $_getList(0);

  /// Codec that is used for data compression.
  /// See enum Codec above for values.
  @$pb.TagNumber(2)
  $core.int get codec => $_getIZ(1);
  @$pb.TagNumber(2)
  set codec($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCodec() => $_has(1);
  @$pb.TagNumber(2)
  void clearCodec() => $_clearField(2);

  @$pb.TagNumber(3)
  TransactionIdentity get tx => $_getN(2);
  @$pb.TagNumber(3)
  set tx(TransactionIdentity value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTx() => $_has(2);
  @$pb.TagNumber(3)
  void clearTx() => $_clearField(3);
  @$pb.TagNumber(3)
  TransactionIdentity ensureTx() => $_ensure(2);
}

class StreamWriteMessage_WriteResponse_WriteAck_Written
    extends $pb.GeneratedMessage {
  factory StreamWriteMessage_WriteResponse_WriteAck_Written({
    $fixnum.Int64? offset,
  }) {
    final result = create();
    if (offset != null) result.offset = offset;
    return result;
  }

  StreamWriteMessage_WriteResponse_WriteAck_Written._();

  factory StreamWriteMessage_WriteResponse_WriteAck_Written.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage_WriteResponse_WriteAck_Written.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamWriteMessage.WriteResponse.WriteAck.Written',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteResponse_WriteAck_Written clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteResponse_WriteAck_Written copyWith(
          void Function(StreamWriteMessage_WriteResponse_WriteAck_Written)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamWriteMessage_WriteResponse_WriteAck_Written))
          as StreamWriteMessage_WriteResponse_WriteAck_Written;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteResponse_WriteAck_Written create() =>
      StreamWriteMessage_WriteResponse_WriteAck_Written._();
  @$core.override
  StreamWriteMessage_WriteResponse_WriteAck_Written createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteResponse_WriteAck_Written getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamWriteMessage_WriteResponse_WriteAck_Written>(create);
  static StreamWriteMessage_WriteResponse_WriteAck_Written? _defaultInstance;

  /// Assigned partition offset.
  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => $_clearField(1);
}

class StreamWriteMessage_WriteResponse_WriteAck_Skipped
    extends $pb.GeneratedMessage {
  factory StreamWriteMessage_WriteResponse_WriteAck_Skipped({
    StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason? reason,
  }) {
    final result = create();
    if (reason != null) result.reason = reason;
    return result;
  }

  StreamWriteMessage_WriteResponse_WriteAck_Skipped._();

  factory StreamWriteMessage_WriteResponse_WriteAck_Skipped.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage_WriteResponse_WriteAck_Skipped.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamWriteMessage.WriteResponse.WriteAck.Skipped',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aE<StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason>(
        1, _omitFieldNames ? '' : 'reason',
        enumValues:
            StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteResponse_WriteAck_Skipped clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteResponse_WriteAck_Skipped copyWith(
          void Function(StreamWriteMessage_WriteResponse_WriteAck_Skipped)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamWriteMessage_WriteResponse_WriteAck_Skipped))
          as StreamWriteMessage_WriteResponse_WriteAck_Skipped;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteResponse_WriteAck_Skipped create() =>
      StreamWriteMessage_WriteResponse_WriteAck_Skipped._();
  @$core.override
  StreamWriteMessage_WriteResponse_WriteAck_Skipped createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteResponse_WriteAck_Skipped getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamWriteMessage_WriteResponse_WriteAck_Skipped>(create);
  static StreamWriteMessage_WriteResponse_WriteAck_Skipped? _defaultInstance;

  @$pb.TagNumber(1)
  StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason get reason =>
      $_getN(0);
  @$pb.TagNumber(1)
  set reason(StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearReason() => $_clearField(1);
}

class StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx
    extends $pb.GeneratedMessage {
  factory StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx() => create();

  StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx._();

  factory StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamWriteMessage.WriteResponse.WriteAck.WrittenInTx',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx copyWith(
          void Function(StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx))
          as StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx create() =>
      StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx._();
  @$core.override
  StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx>(create);
  static StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx?
      _defaultInstance;
}

enum StreamWriteMessage_WriteResponse_WriteAck_MessageWriteStatus {
  written,
  skipped,
  writtenInTx,
  notSet
}

/// Acknowledgment for one persistently written message.
class StreamWriteMessage_WriteResponse_WriteAck extends $pb.GeneratedMessage {
  factory StreamWriteMessage_WriteResponse_WriteAck({
    $fixnum.Int64? seqNo,
    StreamWriteMessage_WriteResponse_WriteAck_Written? written,
    StreamWriteMessage_WriteResponse_WriteAck_Skipped? skipped,
    StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx? writtenInTx,
  }) {
    final result = create();
    if (seqNo != null) result.seqNo = seqNo;
    if (written != null) result.written = written;
    if (skipped != null) result.skipped = skipped;
    if (writtenInTx != null) result.writtenInTx = writtenInTx;
    return result;
  }

  StreamWriteMessage_WriteResponse_WriteAck._();

  factory StreamWriteMessage_WriteResponse_WriteAck.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage_WriteResponse_WriteAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int,
          StreamWriteMessage_WriteResponse_WriteAck_MessageWriteStatus>
      _StreamWriteMessage_WriteResponse_WriteAck_MessageWriteStatusByTag = {
    2: StreamWriteMessage_WriteResponse_WriteAck_MessageWriteStatus.written,
    3: StreamWriteMessage_WriteResponse_WriteAck_MessageWriteStatus.skipped,
    4: StreamWriteMessage_WriteResponse_WriteAck_MessageWriteStatus.writtenInTx,
    0: StreamWriteMessage_WriteResponse_WriteAck_MessageWriteStatus.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamWriteMessage.WriteResponse.WriteAck',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aInt64(1, _omitFieldNames ? '' : 'seqNo')
    ..aOM<StreamWriteMessage_WriteResponse_WriteAck_Written>(
        2, _omitFieldNames ? '' : 'written',
        subBuilder: StreamWriteMessage_WriteResponse_WriteAck_Written.create)
    ..aOM<StreamWriteMessage_WriteResponse_WriteAck_Skipped>(
        3, _omitFieldNames ? '' : 'skipped',
        subBuilder: StreamWriteMessage_WriteResponse_WriteAck_Skipped.create)
    ..aOM<StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx>(
        4, _omitFieldNames ? '' : 'writtenInTx',
        subBuilder:
            StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteResponse_WriteAck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteResponse_WriteAck copyWith(
          void Function(StreamWriteMessage_WriteResponse_WriteAck) updates) =>
      super.copyWith((message) =>
              updates(message as StreamWriteMessage_WriteResponse_WriteAck))
          as StreamWriteMessage_WriteResponse_WriteAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteResponse_WriteAck create() =>
      StreamWriteMessage_WriteResponse_WriteAck._();
  @$core.override
  StreamWriteMessage_WriteResponse_WriteAck createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteResponse_WriteAck getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamWriteMessage_WriteResponse_WriteAck>(create);
  static StreamWriteMessage_WriteResponse_WriteAck? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  StreamWriteMessage_WriteResponse_WriteAck_MessageWriteStatus
      whichMessageWriteStatus() =>
          _StreamWriteMessage_WriteResponse_WriteAck_MessageWriteStatusByTag[
              $_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearMessageWriteStatus() => $_clearField($_whichOneof(0));

  /// Sequence number as in WriteRequest.
  @$pb.TagNumber(1)
  $fixnum.Int64 get seqNo => $_getI64(0);
  @$pb.TagNumber(1)
  set seqNo($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSeqNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeqNo() => $_clearField(1);

  @$pb.TagNumber(2)
  StreamWriteMessage_WriteResponse_WriteAck_Written get written => $_getN(1);
  @$pb.TagNumber(2)
  set written(StreamWriteMessage_WriteResponse_WriteAck_Written value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasWritten() => $_has(1);
  @$pb.TagNumber(2)
  void clearWritten() => $_clearField(2);
  @$pb.TagNumber(2)
  StreamWriteMessage_WriteResponse_WriteAck_Written ensureWritten() =>
      $_ensure(1);

  @$pb.TagNumber(3)
  StreamWriteMessage_WriteResponse_WriteAck_Skipped get skipped => $_getN(2);
  @$pb.TagNumber(3)
  set skipped(StreamWriteMessage_WriteResponse_WriteAck_Skipped value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSkipped() => $_has(2);
  @$pb.TagNumber(3)
  void clearSkipped() => $_clearField(3);
  @$pb.TagNumber(3)
  StreamWriteMessage_WriteResponse_WriteAck_Skipped ensureSkipped() =>
      $_ensure(2);

  @$pb.TagNumber(4)
  StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx get writtenInTx =>
      $_getN(3);
  @$pb.TagNumber(4)
  set writtenInTx(
          StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasWrittenInTx() => $_has(3);
  @$pb.TagNumber(4)
  void clearWrittenInTx() => $_clearField(4);
  @$pb.TagNumber(4)
  StreamWriteMessage_WriteResponse_WriteAck_WrittenInTx ensureWrittenInTx() =>
      $_ensure(3);
}

/// Message with write statistics.
class StreamWriteMessage_WriteResponse_WriteStatistics
    extends $pb.GeneratedMessage {
  factory StreamWriteMessage_WriteResponse_WriteStatistics({
    $2.Duration? persistingTime,
    $2.Duration? minQueueWaitTime,
    $2.Duration? maxQueueWaitTime,
    $2.Duration? partitionQuotaWaitTime,
    $2.Duration? topicQuotaWaitTime,
  }) {
    final result = create();
    if (persistingTime != null) result.persistingTime = persistingTime;
    if (minQueueWaitTime != null) result.minQueueWaitTime = minQueueWaitTime;
    if (maxQueueWaitTime != null) result.maxQueueWaitTime = maxQueueWaitTime;
    if (partitionQuotaWaitTime != null)
      result.partitionQuotaWaitTime = partitionQuotaWaitTime;
    if (topicQuotaWaitTime != null)
      result.topicQuotaWaitTime = topicQuotaWaitTime;
    return result;
  }

  StreamWriteMessage_WriteResponse_WriteStatistics._();

  factory StreamWriteMessage_WriteResponse_WriteStatistics.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage_WriteResponse_WriteStatistics.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamWriteMessage.WriteResponse.WriteStatistics',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$2.Duration>(1, _omitFieldNames ? '' : 'persistingTime',
        subBuilder: $2.Duration.create)
    ..aOM<$2.Duration>(2, _omitFieldNames ? '' : 'minQueueWaitTime',
        subBuilder: $2.Duration.create)
    ..aOM<$2.Duration>(3, _omitFieldNames ? '' : 'maxQueueWaitTime',
        subBuilder: $2.Duration.create)
    ..aOM<$2.Duration>(4, _omitFieldNames ? '' : 'partitionQuotaWaitTime',
        subBuilder: $2.Duration.create)
    ..aOM<$2.Duration>(5, _omitFieldNames ? '' : 'topicQuotaWaitTime',
        subBuilder: $2.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteResponse_WriteStatistics clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteResponse_WriteStatistics copyWith(
          void Function(StreamWriteMessage_WriteResponse_WriteStatistics)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamWriteMessage_WriteResponse_WriteStatistics))
          as StreamWriteMessage_WriteResponse_WriteStatistics;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteResponse_WriteStatistics create() =>
      StreamWriteMessage_WriteResponse_WriteStatistics._();
  @$core.override
  StreamWriteMessage_WriteResponse_WriteStatistics createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteResponse_WriteStatistics getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamWriteMessage_WriteResponse_WriteStatistics>(create);
  static StreamWriteMessage_WriteResponse_WriteStatistics? _defaultInstance;

  /// Time spent in persisting of data. Same for each message in response.
  @$pb.TagNumber(1)
  $2.Duration get persistingTime => $_getN(0);
  @$pb.TagNumber(1)
  set persistingTime($2.Duration value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPersistingTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearPersistingTime() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Duration ensurePersistingTime() => $_ensure(0);

  /// Time spent in queue before persisting, minimal of all messages in response.
  @$pb.TagNumber(2)
  $2.Duration get minQueueWaitTime => $_getN(1);
  @$pb.TagNumber(2)
  set minQueueWaitTime($2.Duration value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMinQueueWaitTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinQueueWaitTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.Duration ensureMinQueueWaitTime() => $_ensure(1);

  /// Time spent in queue before persisting, maximal of all messages in response.
  @$pb.TagNumber(3)
  $2.Duration get maxQueueWaitTime => $_getN(2);
  @$pb.TagNumber(3)
  set maxQueueWaitTime($2.Duration value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxQueueWaitTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxQueueWaitTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.Duration ensureMaxQueueWaitTime() => $_ensure(2);

  /// Time spent awaiting for partition write quota. Same for each message in response.
  @$pb.TagNumber(4)
  $2.Duration get partitionQuotaWaitTime => $_getN(3);
  @$pb.TagNumber(4)
  set partitionQuotaWaitTime($2.Duration value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPartitionQuotaWaitTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearPartitionQuotaWaitTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.Duration ensurePartitionQuotaWaitTime() => $_ensure(3);

  /// Time spent awaiting for topic write quota. Same for each message in response.
  @$pb.TagNumber(5)
  $2.Duration get topicQuotaWaitTime => $_getN(4);
  @$pb.TagNumber(5)
  set topicQuotaWaitTime($2.Duration value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasTopicQuotaWaitTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearTopicQuotaWaitTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.Duration ensureTopicQuotaWaitTime() => $_ensure(4);
}

/// Message that represents acknowledgment for sequence of client messages.
/// This sequence is persisted together so write statistics is for messages batch.
class StreamWriteMessage_WriteResponse extends $pb.GeneratedMessage {
  factory StreamWriteMessage_WriteResponse({
    $core.Iterable<StreamWriteMessage_WriteResponse_WriteAck>? acks,
    $fixnum.Int64? partitionId,
    StreamWriteMessage_WriteResponse_WriteStatistics? writeStatistics,
  }) {
    final result = create();
    if (acks != null) result.acks.addAll(acks);
    if (partitionId != null) result.partitionId = partitionId;
    if (writeStatistics != null) result.writeStatistics = writeStatistics;
    return result;
  }

  StreamWriteMessage_WriteResponse._();

  factory StreamWriteMessage_WriteResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage_WriteResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamWriteMessage.WriteResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..pPM<StreamWriteMessage_WriteResponse_WriteAck>(
        1, _omitFieldNames ? '' : 'acks',
        subBuilder: StreamWriteMessage_WriteResponse_WriteAck.create)
    ..aInt64(2, _omitFieldNames ? '' : 'partitionId')
    ..aOM<StreamWriteMessage_WriteResponse_WriteStatistics>(
        3, _omitFieldNames ? '' : 'writeStatistics',
        subBuilder: StreamWriteMessage_WriteResponse_WriteStatistics.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage_WriteResponse copyWith(
          void Function(StreamWriteMessage_WriteResponse) updates) =>
      super.copyWith(
              (message) => updates(message as StreamWriteMessage_WriteResponse))
          as StreamWriteMessage_WriteResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteResponse create() =>
      StreamWriteMessage_WriteResponse._();
  @$core.override
  StreamWriteMessage_WriteResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage_WriteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamWriteMessage_WriteResponse>(
          create);
  static StreamWriteMessage_WriteResponse? _defaultInstance;

  /// Number of acks is equal to number of messages in the corresponding WriteRequests.
  @$pb.TagNumber(1)
  $pb.PbList<StreamWriteMessage_WriteResponse_WriteAck> get acks =>
      $_getList(0);

  /// Assigned partition for all client messages inside this batch.
  /// This actual partition may differ from that returned in InitResponse
  /// or other WriteResponses in this write session.
  @$pb.TagNumber(2)
  $fixnum.Int64 get partitionId => $_getI64(1);
  @$pb.TagNumber(2)
  set partitionId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPartitionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartitionId() => $_clearField(2);

  /// Write statistics for this sequence of client messages.
  @$pb.TagNumber(3)
  StreamWriteMessage_WriteResponse_WriteStatistics get writeStatistics =>
      $_getN(2);
  @$pb.TagNumber(3)
  set writeStatistics(StreamWriteMessage_WriteResponse_WriteStatistics value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasWriteStatistics() => $_has(2);
  @$pb.TagNumber(3)
  void clearWriteStatistics() => $_clearField(3);
  @$pb.TagNumber(3)
  StreamWriteMessage_WriteResponse_WriteStatistics ensureWriteStatistics() =>
      $_ensure(2);
}

/// Messages for bidirectional streaming rpc StreamWrite
class StreamWriteMessage extends $pb.GeneratedMessage {
  factory StreamWriteMessage() => create();

  StreamWriteMessage._();

  factory StreamWriteMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamWriteMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteMessage copyWith(void Function(StreamWriteMessage) updates) =>
      super.copyWith((message) => updates(message as StreamWriteMessage))
          as StreamWriteMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage create() => StreamWriteMessage._();
  @$core.override
  StreamWriteMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamWriteMessage>(create);
  static StreamWriteMessage? _defaultInstance;
}

/// Within a StreamRead session delivered messages are separated by partition.
/// Reads from a single partition are represented by a partition session.
class StreamReadMessage_PartitionSession extends $pb.GeneratedMessage {
  factory StreamReadMessage_PartitionSession({
    $fixnum.Int64? partitionSessionId,
    $core.String? path,
    $fixnum.Int64? partitionId,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (path != null) result.path = path;
    if (partitionId != null) result.partitionId = partitionId;
    return result;
  }

  StreamReadMessage_PartitionSession._();

  factory StreamReadMessage_PartitionSession.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_PartitionSession.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.PartitionSession',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aInt64(3, _omitFieldNames ? '' : 'partitionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_PartitionSession clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_PartitionSession copyWith(
          void Function(StreamReadMessage_PartitionSession) updates) =>
      super.copyWith((message) =>
              updates(message as StreamReadMessage_PartitionSession))
          as StreamReadMessage_PartitionSession;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_PartitionSession create() =>
      StreamReadMessage_PartitionSession._();
  @$core.override
  StreamReadMessage_PartitionSession createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_PartitionSession getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamReadMessage_PartitionSession>(
          create);
  static StreamReadMessage_PartitionSession? _defaultInstance;

  /// Identifier of partition session. Unique inside one RPC call.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Topic path of partition.
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  /// Partition identifier.
  @$pb.TagNumber(3)
  $fixnum.Int64 get partitionId => $_getI64(2);
  @$pb.TagNumber(3)
  set partitionId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPartitionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartitionId() => $_clearField(3);
}

enum StreamReadMessage_FromClient_ClientMessage {
  initRequest,
  readRequest,
  commitOffsetRequest,
  partitionSessionStatusRequest,
  updateTokenRequest,
  startPartitionSessionResponse,
  stopPartitionSessionResponse,
  directReadAck,
  notSet
}

/// Client-server message for read session. Contains one of:
///     InitRequest - handshake request.
///     ReadRequest - request for data.
///     CommitOffsetRequest - request for commit of some read data.
///     PartitionSessionStatusRequest - request for session status
///     UpdateTokenRequest - request to update auth token
///     DirectReadAck - client signals it has finished direct reading from the partition node.
///
///     StartPartitionSessionResponse - Response to StreamReadServerMessage.StartPartitionSessionRequest.
///         Client signals it is ready to get data from partition.
///     StopPartitionSessionResponse - Response to StreamReadServerMessage.StopPartitionSessionRequest.
///         Client signals it has finished working with partition. Mandatory for graceful stop, optional otherwise.
class StreamReadMessage_FromClient extends $pb.GeneratedMessage {
  factory StreamReadMessage_FromClient({
    StreamReadMessage_InitRequest? initRequest,
    StreamReadMessage_ReadRequest? readRequest,
    StreamReadMessage_CommitOffsetRequest? commitOffsetRequest,
    StreamReadMessage_PartitionSessionStatusRequest?
        partitionSessionStatusRequest,
    UpdateTokenRequest? updateTokenRequest,
    StreamReadMessage_StartPartitionSessionResponse?
        startPartitionSessionResponse,
    StreamReadMessage_StopPartitionSessionResponse?
        stopPartitionSessionResponse,
    StreamReadMessage_DirectReadAck? directReadAck,
  }) {
    final result = create();
    if (initRequest != null) result.initRequest = initRequest;
    if (readRequest != null) result.readRequest = readRequest;
    if (commitOffsetRequest != null)
      result.commitOffsetRequest = commitOffsetRequest;
    if (partitionSessionStatusRequest != null)
      result.partitionSessionStatusRequest = partitionSessionStatusRequest;
    if (updateTokenRequest != null)
      result.updateTokenRequest = updateTokenRequest;
    if (startPartitionSessionResponse != null)
      result.startPartitionSessionResponse = startPartitionSessionResponse;
    if (stopPartitionSessionResponse != null)
      result.stopPartitionSessionResponse = stopPartitionSessionResponse;
    if (directReadAck != null) result.directReadAck = directReadAck;
    return result;
  }

  StreamReadMessage_FromClient._();

  factory StreamReadMessage_FromClient.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_FromClient.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, StreamReadMessage_FromClient_ClientMessage>
      _StreamReadMessage_FromClient_ClientMessageByTag = {
    1: StreamReadMessage_FromClient_ClientMessage.initRequest,
    2: StreamReadMessage_FromClient_ClientMessage.readRequest,
    3: StreamReadMessage_FromClient_ClientMessage.commitOffsetRequest,
    4: StreamReadMessage_FromClient_ClientMessage.partitionSessionStatusRequest,
    5: StreamReadMessage_FromClient_ClientMessage.updateTokenRequest,
    6: StreamReadMessage_FromClient_ClientMessage.startPartitionSessionResponse,
    7: StreamReadMessage_FromClient_ClientMessage.stopPartitionSessionResponse,
    8: StreamReadMessage_FromClient_ClientMessage.directReadAck,
    0: StreamReadMessage_FromClient_ClientMessage.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.FromClient',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<StreamReadMessage_InitRequest>(
        1, _omitFieldNames ? '' : 'initRequest',
        subBuilder: StreamReadMessage_InitRequest.create)
    ..aOM<StreamReadMessage_ReadRequest>(
        2, _omitFieldNames ? '' : 'readRequest',
        subBuilder: StreamReadMessage_ReadRequest.create)
    ..aOM<StreamReadMessage_CommitOffsetRequest>(
        3, _omitFieldNames ? '' : 'commitOffsetRequest',
        subBuilder: StreamReadMessage_CommitOffsetRequest.create)
    ..aOM<StreamReadMessage_PartitionSessionStatusRequest>(
        4, _omitFieldNames ? '' : 'partitionSessionStatusRequest',
        subBuilder: StreamReadMessage_PartitionSessionStatusRequest.create)
    ..aOM<UpdateTokenRequest>(5, _omitFieldNames ? '' : 'updateTokenRequest',
        subBuilder: UpdateTokenRequest.create)
    ..aOM<StreamReadMessage_StartPartitionSessionResponse>(
        6, _omitFieldNames ? '' : 'startPartitionSessionResponse',
        subBuilder: StreamReadMessage_StartPartitionSessionResponse.create)
    ..aOM<StreamReadMessage_StopPartitionSessionResponse>(
        7, _omitFieldNames ? '' : 'stopPartitionSessionResponse',
        subBuilder: StreamReadMessage_StopPartitionSessionResponse.create)
    ..aOM<StreamReadMessage_DirectReadAck>(
        8, _omitFieldNames ? '' : 'directReadAck',
        subBuilder: StreamReadMessage_DirectReadAck.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_FromClient clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_FromClient copyWith(
          void Function(StreamReadMessage_FromClient) updates) =>
      super.copyWith(
              (message) => updates(message as StreamReadMessage_FromClient))
          as StreamReadMessage_FromClient;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_FromClient create() =>
      StreamReadMessage_FromClient._();
  @$core.override
  StreamReadMessage_FromClient createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_FromClient getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamReadMessage_FromClient>(create);
  static StreamReadMessage_FromClient? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  StreamReadMessage_FromClient_ClientMessage whichClientMessage() =>
      _StreamReadMessage_FromClient_ClientMessageByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  void clearClientMessage() => $_clearField($_whichOneof(0));

  /// Client requests.
  @$pb.TagNumber(1)
  StreamReadMessage_InitRequest get initRequest => $_getN(0);
  @$pb.TagNumber(1)
  set initRequest(StreamReadMessage_InitRequest value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInitRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearInitRequest() => $_clearField(1);
  @$pb.TagNumber(1)
  StreamReadMessage_InitRequest ensureInitRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  StreamReadMessage_ReadRequest get readRequest => $_getN(1);
  @$pb.TagNumber(2)
  set readRequest(StreamReadMessage_ReadRequest value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasReadRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearReadRequest() => $_clearField(2);
  @$pb.TagNumber(2)
  StreamReadMessage_ReadRequest ensureReadRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  StreamReadMessage_CommitOffsetRequest get commitOffsetRequest => $_getN(2);
  @$pb.TagNumber(3)
  set commitOffsetRequest(StreamReadMessage_CommitOffsetRequest value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCommitOffsetRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearCommitOffsetRequest() => $_clearField(3);
  @$pb.TagNumber(3)
  StreamReadMessage_CommitOffsetRequest ensureCommitOffsetRequest() =>
      $_ensure(2);

  @$pb.TagNumber(4)
  StreamReadMessage_PartitionSessionStatusRequest
      get partitionSessionStatusRequest => $_getN(3);
  @$pb.TagNumber(4)
  set partitionSessionStatusRequest(
          StreamReadMessage_PartitionSessionStatusRequest value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPartitionSessionStatusRequest() => $_has(3);
  @$pb.TagNumber(4)
  void clearPartitionSessionStatusRequest() => $_clearField(4);
  @$pb.TagNumber(4)
  StreamReadMessage_PartitionSessionStatusRequest
      ensurePartitionSessionStatusRequest() => $_ensure(3);

  @$pb.TagNumber(5)
  UpdateTokenRequest get updateTokenRequest => $_getN(4);
  @$pb.TagNumber(5)
  set updateTokenRequest(UpdateTokenRequest value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasUpdateTokenRequest() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdateTokenRequest() => $_clearField(5);
  @$pb.TagNumber(5)
  UpdateTokenRequest ensureUpdateTokenRequest() => $_ensure(4);

  /// Responses to respective server commands.
  @$pb.TagNumber(6)
  StreamReadMessage_StartPartitionSessionResponse
      get startPartitionSessionResponse => $_getN(5);
  @$pb.TagNumber(6)
  set startPartitionSessionResponse(
          StreamReadMessage_StartPartitionSessionResponse value) =>
      $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasStartPartitionSessionResponse() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartPartitionSessionResponse() => $_clearField(6);
  @$pb.TagNumber(6)
  StreamReadMessage_StartPartitionSessionResponse
      ensureStartPartitionSessionResponse() => $_ensure(5);

  @$pb.TagNumber(7)
  StreamReadMessage_StopPartitionSessionResponse
      get stopPartitionSessionResponse => $_getN(6);
  @$pb.TagNumber(7)
  set stopPartitionSessionResponse(
          StreamReadMessage_StopPartitionSessionResponse value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasStopPartitionSessionResponse() => $_has(6);
  @$pb.TagNumber(7)
  void clearStopPartitionSessionResponse() => $_clearField(7);
  @$pb.TagNumber(7)
  StreamReadMessage_StopPartitionSessionResponse
      ensureStopPartitionSessionResponse() => $_ensure(6);

  @$pb.TagNumber(8)
  StreamReadMessage_DirectReadAck get directReadAck => $_getN(7);
  @$pb.TagNumber(8)
  set directReadAck(StreamReadMessage_DirectReadAck value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasDirectReadAck() => $_has(7);
  @$pb.TagNumber(8)
  void clearDirectReadAck() => $_clearField(8);
  @$pb.TagNumber(8)
  StreamReadMessage_DirectReadAck ensureDirectReadAck() => $_ensure(7);
}

enum StreamReadMessage_FromServer_ServerMessage {
  initResponse,
  readResponse,
  commitOffsetResponse,
  partitionSessionStatusResponse,
  updateTokenResponse,
  startPartitionSessionRequest,
  stopPartitionSessionRequest,
  updatePartitionSession,
  endPartitionSession,
  notSet
}

/// Server-client message for read session. Contains one of:
///     InitResponse - handshake response from server.
///     ReadResponse - portion of data.
///     CommitOffsetResponse - acknowledgment for commit.
///     PartitionSessionStatusResponse - server response with partition session status.
///     UpdateTokenResponse - acknowledgment of token update.
///
///     StartPartitionSessionRequest - command from server to create a partition session.
///     StopPartitionSessionRequest - command from server to destroy a partition session.
///     UpdatePartitionSession - command from server to update a partition session.
class StreamReadMessage_FromServer extends $pb.GeneratedMessage {
  factory StreamReadMessage_FromServer({
    $6.StatusIds_StatusCode? status,
    $core.Iterable<$0.IssueMessage>? issues,
    StreamReadMessage_InitResponse? initResponse,
    StreamReadMessage_ReadResponse? readResponse,
    StreamReadMessage_CommitOffsetResponse? commitOffsetResponse,
    StreamReadMessage_PartitionSessionStatusResponse?
        partitionSessionStatusResponse,
    UpdateTokenResponse? updateTokenResponse,
    StreamReadMessage_StartPartitionSessionRequest?
        startPartitionSessionRequest,
    StreamReadMessage_StopPartitionSessionRequest? stopPartitionSessionRequest,
    StreamReadMessage_UpdatePartitionSession? updatePartitionSession,
    StreamReadMessage_EndPartitionSession? endPartitionSession,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    if (initResponse != null) result.initResponse = initResponse;
    if (readResponse != null) result.readResponse = readResponse;
    if (commitOffsetResponse != null)
      result.commitOffsetResponse = commitOffsetResponse;
    if (partitionSessionStatusResponse != null)
      result.partitionSessionStatusResponse = partitionSessionStatusResponse;
    if (updateTokenResponse != null)
      result.updateTokenResponse = updateTokenResponse;
    if (startPartitionSessionRequest != null)
      result.startPartitionSessionRequest = startPartitionSessionRequest;
    if (stopPartitionSessionRequest != null)
      result.stopPartitionSessionRequest = stopPartitionSessionRequest;
    if (updatePartitionSession != null)
      result.updatePartitionSession = updatePartitionSession;
    if (endPartitionSession != null)
      result.endPartitionSession = endPartitionSession;
    return result;
  }

  StreamReadMessage_FromServer._();

  factory StreamReadMessage_FromServer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_FromServer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, StreamReadMessage_FromServer_ServerMessage>
      _StreamReadMessage_FromServer_ServerMessageByTag = {
    3: StreamReadMessage_FromServer_ServerMessage.initResponse,
    4: StreamReadMessage_FromServer_ServerMessage.readResponse,
    5: StreamReadMessage_FromServer_ServerMessage.commitOffsetResponse,
    6: StreamReadMessage_FromServer_ServerMessage
        .partitionSessionStatusResponse,
    7: StreamReadMessage_FromServer_ServerMessage.updateTokenResponse,
    8: StreamReadMessage_FromServer_ServerMessage.startPartitionSessionRequest,
    9: StreamReadMessage_FromServer_ServerMessage.stopPartitionSessionRequest,
    10: StreamReadMessage_FromServer_ServerMessage.updatePartitionSession,
    11: StreamReadMessage_FromServer_ServerMessage.endPartitionSession,
    0: StreamReadMessage_FromServer_ServerMessage.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.FromServer',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8, 9, 10, 11])
    ..aE<$6.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $6.StatusIds_StatusCode.values)
    ..pPM<$0.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $0.IssueMessage.create)
    ..aOM<StreamReadMessage_InitResponse>(
        3, _omitFieldNames ? '' : 'initResponse',
        subBuilder: StreamReadMessage_InitResponse.create)
    ..aOM<StreamReadMessage_ReadResponse>(
        4, _omitFieldNames ? '' : 'readResponse',
        subBuilder: StreamReadMessage_ReadResponse.create)
    ..aOM<StreamReadMessage_CommitOffsetResponse>(
        5, _omitFieldNames ? '' : 'commitOffsetResponse',
        subBuilder: StreamReadMessage_CommitOffsetResponse.create)
    ..aOM<StreamReadMessage_PartitionSessionStatusResponse>(
        6, _omitFieldNames ? '' : 'partitionSessionStatusResponse',
        subBuilder: StreamReadMessage_PartitionSessionStatusResponse.create)
    ..aOM<UpdateTokenResponse>(7, _omitFieldNames ? '' : 'updateTokenResponse',
        subBuilder: UpdateTokenResponse.create)
    ..aOM<StreamReadMessage_StartPartitionSessionRequest>(
        8, _omitFieldNames ? '' : 'startPartitionSessionRequest',
        subBuilder: StreamReadMessage_StartPartitionSessionRequest.create)
    ..aOM<StreamReadMessage_StopPartitionSessionRequest>(
        9, _omitFieldNames ? '' : 'stopPartitionSessionRequest',
        subBuilder: StreamReadMessage_StopPartitionSessionRequest.create)
    ..aOM<StreamReadMessage_UpdatePartitionSession>(
        10, _omitFieldNames ? '' : 'updatePartitionSession',
        subBuilder: StreamReadMessage_UpdatePartitionSession.create)
    ..aOM<StreamReadMessage_EndPartitionSession>(
        11, _omitFieldNames ? '' : 'endPartitionSession',
        subBuilder: StreamReadMessage_EndPartitionSession.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_FromServer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_FromServer copyWith(
          void Function(StreamReadMessage_FromServer) updates) =>
      super.copyWith(
              (message) => updates(message as StreamReadMessage_FromServer))
          as StreamReadMessage_FromServer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_FromServer create() =>
      StreamReadMessage_FromServer._();
  @$core.override
  StreamReadMessage_FromServer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_FromServer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamReadMessage_FromServer>(create);
  static StreamReadMessage_FromServer? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  StreamReadMessage_FromServer_ServerMessage whichServerMessage() =>
      _StreamReadMessage_FromServer_ServerMessageByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  void clearServerMessage() => $_clearField($_whichOneof(0));

  /// Server status of response.
  @$pb.TagNumber(1)
  $6.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($6.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  /// Issues if any.
  @$pb.TagNumber(2)
  $pb.PbList<$0.IssueMessage> get issues => $_getList(1);

  /// Responses to respective client requests.
  @$pb.TagNumber(3)
  StreamReadMessage_InitResponse get initResponse => $_getN(2);
  @$pb.TagNumber(3)
  set initResponse(StreamReadMessage_InitResponse value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasInitResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearInitResponse() => $_clearField(3);
  @$pb.TagNumber(3)
  StreamReadMessage_InitResponse ensureInitResponse() => $_ensure(2);

  @$pb.TagNumber(4)
  StreamReadMessage_ReadResponse get readResponse => $_getN(3);
  @$pb.TagNumber(4)
  set readResponse(StreamReadMessage_ReadResponse value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasReadResponse() => $_has(3);
  @$pb.TagNumber(4)
  void clearReadResponse() => $_clearField(4);
  @$pb.TagNumber(4)
  StreamReadMessage_ReadResponse ensureReadResponse() => $_ensure(3);

  @$pb.TagNumber(5)
  StreamReadMessage_CommitOffsetResponse get commitOffsetResponse => $_getN(4);
  @$pb.TagNumber(5)
  set commitOffsetResponse(StreamReadMessage_CommitOffsetResponse value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCommitOffsetResponse() => $_has(4);
  @$pb.TagNumber(5)
  void clearCommitOffsetResponse() => $_clearField(5);
  @$pb.TagNumber(5)
  StreamReadMessage_CommitOffsetResponse ensureCommitOffsetResponse() =>
      $_ensure(4);

  @$pb.TagNumber(6)
  StreamReadMessage_PartitionSessionStatusResponse
      get partitionSessionStatusResponse => $_getN(5);
  @$pb.TagNumber(6)
  set partitionSessionStatusResponse(
          StreamReadMessage_PartitionSessionStatusResponse value) =>
      $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPartitionSessionStatusResponse() => $_has(5);
  @$pb.TagNumber(6)
  void clearPartitionSessionStatusResponse() => $_clearField(6);
  @$pb.TagNumber(6)
  StreamReadMessage_PartitionSessionStatusResponse
      ensurePartitionSessionStatusResponse() => $_ensure(5);

  @$pb.TagNumber(7)
  UpdateTokenResponse get updateTokenResponse => $_getN(6);
  @$pb.TagNumber(7)
  set updateTokenResponse(UpdateTokenResponse value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasUpdateTokenResponse() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdateTokenResponse() => $_clearField(7);
  @$pb.TagNumber(7)
  UpdateTokenResponse ensureUpdateTokenResponse() => $_ensure(6);

  /// Server commands.
  @$pb.TagNumber(8)
  StreamReadMessage_StartPartitionSessionRequest
      get startPartitionSessionRequest => $_getN(7);
  @$pb.TagNumber(8)
  set startPartitionSessionRequest(
          StreamReadMessage_StartPartitionSessionRequest value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasStartPartitionSessionRequest() => $_has(7);
  @$pb.TagNumber(8)
  void clearStartPartitionSessionRequest() => $_clearField(8);
  @$pb.TagNumber(8)
  StreamReadMessage_StartPartitionSessionRequest
      ensureStartPartitionSessionRequest() => $_ensure(7);

  @$pb.TagNumber(9)
  StreamReadMessage_StopPartitionSessionRequest
      get stopPartitionSessionRequest => $_getN(8);
  @$pb.TagNumber(9)
  set stopPartitionSessionRequest(
          StreamReadMessage_StopPartitionSessionRequest value) =>
      $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasStopPartitionSessionRequest() => $_has(8);
  @$pb.TagNumber(9)
  void clearStopPartitionSessionRequest() => $_clearField(9);
  @$pb.TagNumber(9)
  StreamReadMessage_StopPartitionSessionRequest
      ensureStopPartitionSessionRequest() => $_ensure(8);

  @$pb.TagNumber(10)
  StreamReadMessage_UpdatePartitionSession get updatePartitionSession =>
      $_getN(9);
  @$pb.TagNumber(10)
  set updatePartitionSession(StreamReadMessage_UpdatePartitionSession value) =>
      $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasUpdatePartitionSession() => $_has(9);
  @$pb.TagNumber(10)
  void clearUpdatePartitionSession() => $_clearField(10);
  @$pb.TagNumber(10)
  StreamReadMessage_UpdatePartitionSession ensureUpdatePartitionSession() =>
      $_ensure(9);

  @$pb.TagNumber(11)
  StreamReadMessage_EndPartitionSession get endPartitionSession => $_getN(10);
  @$pb.TagNumber(11)
  set endPartitionSession(StreamReadMessage_EndPartitionSession value) =>
      $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasEndPartitionSession() => $_has(10);
  @$pb.TagNumber(11)
  void clearEndPartitionSession() => $_clearField(11);
  @$pb.TagNumber(11)
  StreamReadMessage_EndPartitionSession ensureEndPartitionSession() =>
      $_ensure(10);
}

class StreamReadMessage_InitRequest_TopicReadSettings
    extends $pb.GeneratedMessage {
  factory StreamReadMessage_InitRequest_TopicReadSettings({
    $core.String? path,
    $core.Iterable<$fixnum.Int64>? partitionIds,
    $2.Duration? maxLag,
    $1.Timestamp? readFrom,
  }) {
    final result = create();
    if (path != null) result.path = path;
    if (partitionIds != null) result.partitionIds.addAll(partitionIds);
    if (maxLag != null) result.maxLag = maxLag;
    if (readFrom != null) result.readFrom = readFrom;
    return result;
  }

  StreamReadMessage_InitRequest_TopicReadSettings._();

  factory StreamReadMessage_InitRequest_TopicReadSettings.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_InitRequest_TopicReadSettings.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamReadMessage.InitRequest.TopicReadSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..p<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'partitionIds', $pb.PbFieldType.K6)
    ..aOM<$2.Duration>(3, _omitFieldNames ? '' : 'maxLag',
        subBuilder: $2.Duration.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'readFrom',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_InitRequest_TopicReadSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_InitRequest_TopicReadSettings copyWith(
          void Function(StreamReadMessage_InitRequest_TopicReadSettings)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamReadMessage_InitRequest_TopicReadSettings))
          as StreamReadMessage_InitRequest_TopicReadSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_InitRequest_TopicReadSettings create() =>
      StreamReadMessage_InitRequest_TopicReadSettings._();
  @$core.override
  StreamReadMessage_InitRequest_TopicReadSettings createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_InitRequest_TopicReadSettings getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_InitRequest_TopicReadSettings>(create);
  static StreamReadMessage_InitRequest_TopicReadSettings? _defaultInstance;

  /// Topic path.
  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);

  /// Partitions that will be read by this session.
  /// If list is empty - then session will read all partitions.
  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get partitionIds => $_getList(1);

  /// Skip all messages that has write timestamp smaller than now - max_lag.
  /// Zero means infinite lag.
  @$pb.TagNumber(3)
  $2.Duration get maxLag => $_getN(2);
  @$pb.TagNumber(3)
  set maxLag($2.Duration value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxLag() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxLag() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.Duration ensureMaxLag() => $_ensure(2);

  /// Read data only after this timestamp from this topic.
  /// Read only messages with 'written_at' value greater or equal than this timestamp.
  @$pb.TagNumber(4)
  $1.Timestamp get readFrom => $_getN(3);
  @$pb.TagNumber(4)
  set readFrom($1.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasReadFrom() => $_has(3);
  @$pb.TagNumber(4)
  void clearReadFrom() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureReadFrom() => $_ensure(3);
}

/// Handshake request.
class StreamReadMessage_InitRequest extends $pb.GeneratedMessage {
  factory StreamReadMessage_InitRequest({
    $core.Iterable<StreamReadMessage_InitRequest_TopicReadSettings>?
        topicsReadSettings,
    $core.String? consumer,
    $core.String? readerName,
    $core.bool? directRead,
    $core.bool? autoPartitioningSupport,
  }) {
    final result = create();
    if (topicsReadSettings != null)
      result.topicsReadSettings.addAll(topicsReadSettings);
    if (consumer != null) result.consumer = consumer;
    if (readerName != null) result.readerName = readerName;
    if (directRead != null) result.directRead = directRead;
    if (autoPartitioningSupport != null)
      result.autoPartitioningSupport = autoPartitioningSupport;
    return result;
  }

  StreamReadMessage_InitRequest._();

  factory StreamReadMessage_InitRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_InitRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.InitRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..pPM<StreamReadMessage_InitRequest_TopicReadSettings>(
        1, _omitFieldNames ? '' : 'topicsReadSettings',
        subBuilder: StreamReadMessage_InitRequest_TopicReadSettings.create)
    ..aOS(2, _omitFieldNames ? '' : 'consumer')
    ..aOS(3, _omitFieldNames ? '' : 'readerName')
    ..aOB(4, _omitFieldNames ? '' : 'directRead')
    ..aOB(5, _omitFieldNames ? '' : 'autoPartitioningSupport')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_InitRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_InitRequest copyWith(
          void Function(StreamReadMessage_InitRequest) updates) =>
      super.copyWith(
              (message) => updates(message as StreamReadMessage_InitRequest))
          as StreamReadMessage_InitRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_InitRequest create() =>
      StreamReadMessage_InitRequest._();
  @$core.override
  StreamReadMessage_InitRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_InitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamReadMessage_InitRequest>(create);
  static StreamReadMessage_InitRequest? _defaultInstance;

  /// Message that describes topic to read.
  /// Topics that will be read by this session.
  @$pb.TagNumber(1)
  $pb.PbList<StreamReadMessage_InitRequest_TopicReadSettings>
      get topicsReadSettings => $_getList(0);

  /// Path of consumer that is used for reading by this session.
  @$pb.TagNumber(2)
  $core.String get consumer => $_getSZ(1);
  @$pb.TagNumber(2)
  set consumer($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasConsumer() => $_has(1);
  @$pb.TagNumber(2)
  void clearConsumer() => $_clearField(2);

  /// Optional name. Will be shown in debug stat.
  @$pb.TagNumber(3)
  $core.String get readerName => $_getSZ(2);
  @$pb.TagNumber(3)
  set readerName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReaderName() => $_has(2);
  @$pb.TagNumber(3)
  void clearReaderName() => $_clearField(3);

  /// Direct reading from a partition node.
  @$pb.TagNumber(4)
  $core.bool get directRead => $_getBF(3);
  @$pb.TagNumber(4)
  set directRead($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDirectRead() => $_has(3);
  @$pb.TagNumber(4)
  void clearDirectRead() => $_clearField(4);

  /// Indicates that the SDK supports auto partitioning.
  @$pb.TagNumber(5)
  $core.bool get autoPartitioningSupport => $_getBF(4);
  @$pb.TagNumber(5)
  set autoPartitioningSupport($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAutoPartitioningSupport() => $_has(4);
  @$pb.TagNumber(5)
  void clearAutoPartitioningSupport() => $_clearField(5);
}

/// Handshake response.
class StreamReadMessage_InitResponse extends $pb.GeneratedMessage {
  factory StreamReadMessage_InitResponse({
    $core.String? sessionId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  StreamReadMessage_InitResponse._();

  factory StreamReadMessage_InitResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_InitResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.InitResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_InitResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_InitResponse copyWith(
          void Function(StreamReadMessage_InitResponse) updates) =>
      super.copyWith(
              (message) => updates(message as StreamReadMessage_InitResponse))
          as StreamReadMessage_InitResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_InitResponse create() =>
      StreamReadMessage_InitResponse._();
  @$core.override
  StreamReadMessage_InitResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_InitResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamReadMessage_InitResponse>(create);
  static StreamReadMessage_InitResponse? _defaultInstance;

  /// Read session identifier.
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
}

/// Message that represents client readiness for receiving more data.
class StreamReadMessage_ReadRequest extends $pb.GeneratedMessage {
  factory StreamReadMessage_ReadRequest({
    $fixnum.Int64? bytesSize,
  }) {
    final result = create();
    if (bytesSize != null) result.bytesSize = bytesSize;
    return result;
  }

  StreamReadMessage_ReadRequest._();

  factory StreamReadMessage_ReadRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_ReadRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.ReadRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'bytesSize')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_ReadRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_ReadRequest copyWith(
          void Function(StreamReadMessage_ReadRequest) updates) =>
      super.copyWith(
              (message) => updates(message as StreamReadMessage_ReadRequest))
          as StreamReadMessage_ReadRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_ReadRequest create() =>
      StreamReadMessage_ReadRequest._();
  @$core.override
  StreamReadMessage_ReadRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_ReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamReadMessage_ReadRequest>(create);
  static StreamReadMessage_ReadRequest? _defaultInstance;

  /// Server and client each keep track of total bytes size of all ReadResponses.
  /// When client is ready to receive N more bytes in responses (to increment possible total by N),
  /// it sends a ReadRequest with bytes_size = N.
  /// bytes_size value must be positive.
  /// So in expression 'A = (sum of bytes_size in all ReadRequests) - (sum of bytes_size in all ReadResponses)'
  ///   server will keep A (available size for responses) non-negative.
  /// But there is an exception. If server receives ReadRequest, and the first message in response exceeds A -
  /// then it will still be delivered, and A will become negative until enough additional ReadRequests.
  ///
  /// Example:
  /// 1) Let client have 200 bytes buffer. It sends ReadRequest with bytes_size = 200;
  /// 2) Server may return one ReadResponse with bytes_size = 70 and than another 80 bytes response;
  ///    now client buffer has 50 free bytes, server is free to send up to 50 bytes in responses.
  /// 3) Client processes 100 bytes from buffer, now buffer free space is 150 bytes,
  ///    so client sends ReadRequest with bytes_size = 100;
  /// 4) Server is free to send up to 50 + 100 = 150 bytes. But the next read message is too big,
  ///    and it sends 160 bytes ReadResponse.
  /// 5) Let's assume client somehow processes it, and its 200 bytes buffer is free again.
  ///    It should account for excess 10 bytes and send ReadRequest with bytes_size = 210.
  @$pb.TagNumber(1)
  $fixnum.Int64 get bytesSize => $_getI64(0);
  @$pb.TagNumber(1)
  set bytesSize($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBytesSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytesSize() => $_clearField(1);
}

/// One client message representation.
class StreamReadMessage_ReadResponse_MessageData extends $pb.GeneratedMessage {
  factory StreamReadMessage_ReadResponse_MessageData({
    $fixnum.Int64? offset,
    $fixnum.Int64? seqNo,
    $1.Timestamp? createdAt,
    $core.List<$core.int>? data,
    $fixnum.Int64? uncompressedSize,
    $core.String? messageGroupId,
    $core.Iterable<MetadataItem>? metadataItems,
  }) {
    final result = create();
    if (offset != null) result.offset = offset;
    if (seqNo != null) result.seqNo = seqNo;
    if (createdAt != null) result.createdAt = createdAt;
    if (data != null) result.data = data;
    if (uncompressedSize != null) result.uncompressedSize = uncompressedSize;
    if (messageGroupId != null) result.messageGroupId = messageGroupId;
    if (metadataItems != null) result.metadataItems.addAll(metadataItems);
    return result;
  }

  StreamReadMessage_ReadResponse_MessageData._();

  factory StreamReadMessage_ReadResponse_MessageData.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_ReadResponse_MessageData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.ReadResponse.MessageData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'offset')
    ..aInt64(2, _omitFieldNames ? '' : 'seqNo')
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $1.Timestamp.create)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aInt64(6, _omitFieldNames ? '' : 'uncompressedSize')
    ..aOS(7, _omitFieldNames ? '' : 'messageGroupId')
    ..pPM<MetadataItem>(8, _omitFieldNames ? '' : 'metadataItems',
        subBuilder: MetadataItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_ReadResponse_MessageData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_ReadResponse_MessageData copyWith(
          void Function(StreamReadMessage_ReadResponse_MessageData) updates) =>
      super.copyWith((message) =>
              updates(message as StreamReadMessage_ReadResponse_MessageData))
          as StreamReadMessage_ReadResponse_MessageData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_ReadResponse_MessageData create() =>
      StreamReadMessage_ReadResponse_MessageData._();
  @$core.override
  StreamReadMessage_ReadResponse_MessageData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_ReadResponse_MessageData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_ReadResponse_MessageData>(create);
  static StreamReadMessage_ReadResponse_MessageData? _defaultInstance;

  /// Partition offset in partition that assigned for message.
  @$pb.TagNumber(1)
  $fixnum.Int64 get offset => $_getI64(0);
  @$pb.TagNumber(1)
  set offset($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => $_clearField(1);

  /// Sequence number that provided with message on write from client.
  @$pb.TagNumber(2)
  $fixnum.Int64 get seqNo => $_getI64(1);
  @$pb.TagNumber(2)
  set seqNo($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSeqNo() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeqNo() => $_clearField(2);

  /// Timestamp of creation of message provided on write from client.
  @$pb.TagNumber(3)
  $1.Timestamp get createdAt => $_getN(2);
  @$pb.TagNumber(3)
  set createdAt($1.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureCreatedAt() => $_ensure(2);

  /// Compressed client message body.
  @$pb.TagNumber(5)
  $core.List<$core.int> get data => $_getN(3);
  @$pb.TagNumber(5)
  set data($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(5)
  $core.bool hasData() => $_has(3);
  @$pb.TagNumber(5)
  void clearData() => $_clearField(5);

  /// Uncompressed size of client message body.
  /// sent as is from WriteRequest, without check on server side. May be empty (for writes from old client) or wrong (if bug in writer).
  /// Use it for optimization purposes only, don't trust it.
  @$pb.TagNumber(6)
  $fixnum.Int64 get uncompressedSize => $_getI64(4);
  @$pb.TagNumber(6)
  set uncompressedSize($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(6)
  $core.bool hasUncompressedSize() => $_has(4);
  @$pb.TagNumber(6)
  void clearUncompressedSize() => $_clearField(6);

  /// Filled if message_group_id was set on message write.
  @$pb.TagNumber(7)
  $core.String get messageGroupId => $_getSZ(5);
  @$pb.TagNumber(7)
  set messageGroupId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(7)
  $core.bool hasMessageGroupId() => $_has(5);
  @$pb.TagNumber(7)
  void clearMessageGroupId() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<MetadataItem> get metadataItems => $_getList(6);
}

/// Representation of sequence of client messages from one write session.
class StreamReadMessage_ReadResponse_Batch extends $pb.GeneratedMessage {
  factory StreamReadMessage_ReadResponse_Batch({
    $core.Iterable<StreamReadMessage_ReadResponse_MessageData>? messageData,
    $core.String? producerId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>?
        writeSessionMeta,
    $core.int? codec,
    $1.Timestamp? writtenAt,
  }) {
    final result = create();
    if (messageData != null) result.messageData.addAll(messageData);
    if (producerId != null) result.producerId = producerId;
    if (writeSessionMeta != null)
      result.writeSessionMeta.addEntries(writeSessionMeta);
    if (codec != null) result.codec = codec;
    if (writtenAt != null) result.writtenAt = writtenAt;
    return result;
  }

  StreamReadMessage_ReadResponse_Batch._();

  factory StreamReadMessage_ReadResponse_Batch.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_ReadResponse_Batch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.ReadResponse.Batch',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..pPM<StreamReadMessage_ReadResponse_MessageData>(
        1, _omitFieldNames ? '' : 'messageData',
        subBuilder: StreamReadMessage_ReadResponse_MessageData.create)
    ..aOS(2, _omitFieldNames ? '' : 'producerId')
    ..m<$core.String, $core.String>(
        3, _omitFieldNames ? '' : 'writeSessionMeta',
        entryClassName:
            'StreamReadMessage.ReadResponse.Batch.WriteSessionMetaEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Topic'))
    ..aI(4, _omitFieldNames ? '' : 'codec')
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'writtenAt',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_ReadResponse_Batch clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_ReadResponse_Batch copyWith(
          void Function(StreamReadMessage_ReadResponse_Batch) updates) =>
      super.copyWith((message) =>
              updates(message as StreamReadMessage_ReadResponse_Batch))
          as StreamReadMessage_ReadResponse_Batch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_ReadResponse_Batch create() =>
      StreamReadMessage_ReadResponse_Batch._();
  @$core.override
  StreamReadMessage_ReadResponse_Batch createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_ReadResponse_Batch getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_ReadResponse_Batch>(create);
  static StreamReadMessage_ReadResponse_Batch? _defaultInstance;

  /// List of client messages.
  @$pb.TagNumber(1)
  $pb.PbList<StreamReadMessage_ReadResponse_MessageData> get messageData =>
      $_getList(0);

  /// Producer identifier provided by client for this batch of client messages.
  @$pb.TagNumber(2)
  $core.String get producerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set producerId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProducerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProducerId() => $_clearField(2);

  /// Client metadata attached to write session, the same for all messages in batch.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get writeSessionMeta => $_getMap(2);

  /// Codec that is used for data compression.
  /// See enum Codec above for values.
  @$pb.TagNumber(4)
  $core.int get codec => $_getIZ(3);
  @$pb.TagNumber(4)
  set codec($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCodec() => $_has(3);
  @$pb.TagNumber(4)
  void clearCodec() => $_clearField(4);

  /// Persist timestamp on server for batch.
  @$pb.TagNumber(5)
  $1.Timestamp get writtenAt => $_getN(4);
  @$pb.TagNumber(5)
  set writtenAt($1.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasWrittenAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearWrittenAt() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureWrittenAt() => $_ensure(4);
}

/// Representation of sequence of messages from one partition.
class StreamReadMessage_ReadResponse_PartitionData
    extends $pb.GeneratedMessage {
  factory StreamReadMessage_ReadResponse_PartitionData({
    $fixnum.Int64? partitionSessionId,
    $core.Iterable<StreamReadMessage_ReadResponse_Batch>? batches,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (batches != null) result.batches.addAll(batches);
    return result;
  }

  StreamReadMessage_ReadResponse_PartitionData._();

  factory StreamReadMessage_ReadResponse_PartitionData.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_ReadResponse_PartitionData.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.ReadResponse.PartitionData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..pPM<StreamReadMessage_ReadResponse_Batch>(
        2, _omitFieldNames ? '' : 'batches',
        subBuilder: StreamReadMessage_ReadResponse_Batch.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_ReadResponse_PartitionData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_ReadResponse_PartitionData copyWith(
          void Function(StreamReadMessage_ReadResponse_PartitionData)
              updates) =>
      super.copyWith((message) =>
              updates(message as StreamReadMessage_ReadResponse_PartitionData))
          as StreamReadMessage_ReadResponse_PartitionData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_ReadResponse_PartitionData create() =>
      StreamReadMessage_ReadResponse_PartitionData._();
  @$core.override
  StreamReadMessage_ReadResponse_PartitionData createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_ReadResponse_PartitionData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_ReadResponse_PartitionData>(create);
  static StreamReadMessage_ReadResponse_PartitionData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Client messages, divided by write sessions.
  @$pb.TagNumber(2)
  $pb.PbList<StreamReadMessage_ReadResponse_Batch> get batches => $_getList(1);
}

/// Data read.
class StreamReadMessage_ReadResponse extends $pb.GeneratedMessage {
  factory StreamReadMessage_ReadResponse({
    $core.Iterable<StreamReadMessage_ReadResponse_PartitionData>? partitionData,
    $fixnum.Int64? bytesSize,
  }) {
    final result = create();
    if (partitionData != null) result.partitionData.addAll(partitionData);
    if (bytesSize != null) result.bytesSize = bytesSize;
    return result;
  }

  StreamReadMessage_ReadResponse._();

  factory StreamReadMessage_ReadResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_ReadResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.ReadResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..pPM<StreamReadMessage_ReadResponse_PartitionData>(
        1, _omitFieldNames ? '' : 'partitionData',
        subBuilder: StreamReadMessage_ReadResponse_PartitionData.create)
    ..aInt64(2, _omitFieldNames ? '' : 'bytesSize')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_ReadResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_ReadResponse copyWith(
          void Function(StreamReadMessage_ReadResponse) updates) =>
      super.copyWith(
              (message) => updates(message as StreamReadMessage_ReadResponse))
          as StreamReadMessage_ReadResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_ReadResponse create() =>
      StreamReadMessage_ReadResponse._();
  @$core.override
  StreamReadMessage_ReadResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_ReadResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamReadMessage_ReadResponse>(create);
  static StreamReadMessage_ReadResponse? _defaultInstance;

  /// Client messages, divided by partitions.
  @$pb.TagNumber(1)
  $pb.PbList<StreamReadMessage_ReadResponse_PartitionData> get partitionData =>
      $_getList(0);

  /// Total size in bytes of this response as calculated by server.
  /// See ReadRequest comment above.
  @$pb.TagNumber(2)
  $fixnum.Int64 get bytesSize => $_getI64(1);
  @$pb.TagNumber(2)
  set bytesSize($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBytesSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearBytesSize() => $_clearField(2);
}

/// Message that is used for describing commit.
class StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset
    extends $pb.GeneratedMessage {
  factory StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset({
    $fixnum.Int64? partitionSessionId,
    $core.Iterable<OffsetsRange>? offsets,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (offsets != null) result.offsets.addAll(offsets);
    return result;
  }

  StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset._();

  factory StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamReadMessage.CommitOffsetRequest.PartitionCommitOffset',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..pPM<OffsetsRange>(2, _omitFieldNames ? '' : 'offsets',
        subBuilder: OffsetsRange.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset clone() =>
      deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset copyWith(
          void Function(
                  StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset)
              updates) =>
      super.copyWith((message) => updates(message
              as StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset))
          as StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset create() =>
      StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset._();
  @$core.override
  StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset>(create);
  static StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset?
      _defaultInstance;

  /// Identifier of partition session with data to commit.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Processed offsets ranges, repeated in case of disjoint ranges.
  @$pb.TagNumber(2)
  $pb.PbList<OffsetsRange> get offsets => $_getList(1);
}

/// Signal for server that client processed some read data.
class StreamReadMessage_CommitOffsetRequest extends $pb.GeneratedMessage {
  factory StreamReadMessage_CommitOffsetRequest({
    $core.Iterable<StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset>?
        commitOffsets,
  }) {
    final result = create();
    if (commitOffsets != null) result.commitOffsets.addAll(commitOffsets);
    return result;
  }

  StreamReadMessage_CommitOffsetRequest._();

  factory StreamReadMessage_CommitOffsetRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_CommitOffsetRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.CommitOffsetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..pPM<StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset>(
        1, _omitFieldNames ? '' : 'commitOffsets',
        subBuilder:
            StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_CommitOffsetRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_CommitOffsetRequest copyWith(
          void Function(StreamReadMessage_CommitOffsetRequest) updates) =>
      super.copyWith((message) =>
              updates(message as StreamReadMessage_CommitOffsetRequest))
          as StreamReadMessage_CommitOffsetRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_CommitOffsetRequest create() =>
      StreamReadMessage_CommitOffsetRequest._();
  @$core.override
  StreamReadMessage_CommitOffsetRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_CommitOffsetRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_CommitOffsetRequest>(create);
  static StreamReadMessage_CommitOffsetRequest? _defaultInstance;

  /// Partition offsets that indicates processed data.
  @$pb.TagNumber(1)
  $pb.PbList<StreamReadMessage_CommitOffsetRequest_PartitionCommitOffset>
      get commitOffsets => $_getList(0);
}

/// Per-partition commit representation.
class StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset
    extends $pb.GeneratedMessage {
  factory StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset({
    $fixnum.Int64? partitionSessionId,
    $fixnum.Int64? committedOffset,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (committedOffset != null) result.committedOffset = committedOffset;
    return result;
  }

  StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset._();

  factory StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamReadMessage.CommitOffsetResponse.PartitionCommittedOffset',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'committedOffset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset clone() =>
      deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset copyWith(
          void Function(
                  StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset)
              updates) =>
      super.copyWith((message) => updates(message
              as StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset))
          as StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset
      create() =>
          StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset._();
  @$core.override
  StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
              StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset>(
          create);
  static StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset?
      _defaultInstance;

  /// Partition session identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Upper bound for committed offsets.
  @$pb.TagNumber(2)
  $fixnum.Int64 get committedOffset => $_getI64(1);
  @$pb.TagNumber(2)
  set committedOffset($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCommittedOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommittedOffset() => $_clearField(2);
}

/// Acknowledgement for commits.
class StreamReadMessage_CommitOffsetResponse extends $pb.GeneratedMessage {
  factory StreamReadMessage_CommitOffsetResponse({
    $core.Iterable<
            StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset>?
        partitionsCommittedOffsets,
  }) {
    final result = create();
    if (partitionsCommittedOffsets != null)
      result.partitionsCommittedOffsets.addAll(partitionsCommittedOffsets);
    return result;
  }

  StreamReadMessage_CommitOffsetResponse._();

  factory StreamReadMessage_CommitOffsetResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_CommitOffsetResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.CommitOffsetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..pPM<StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset>(
        1, _omitFieldNames ? '' : 'partitionsCommittedOffsets',
        subBuilder:
            StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset
                .create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_CommitOffsetResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_CommitOffsetResponse copyWith(
          void Function(StreamReadMessage_CommitOffsetResponse) updates) =>
      super.copyWith((message) =>
              updates(message as StreamReadMessage_CommitOffsetResponse))
          as StreamReadMessage_CommitOffsetResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_CommitOffsetResponse create() =>
      StreamReadMessage_CommitOffsetResponse._();
  @$core.override
  StreamReadMessage_CommitOffsetResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_CommitOffsetResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_CommitOffsetResponse>(create);
  static StreamReadMessage_CommitOffsetResponse? _defaultInstance;

  /// Partitions with progress.
  @$pb.TagNumber(1)
  $pb.PbList<StreamReadMessage_CommitOffsetResponse_PartitionCommittedOffset>
      get partitionsCommittedOffsets => $_getList(0);
}

class StreamReadMessage_PartitionSessionStatusRequest
    extends $pb.GeneratedMessage {
  factory StreamReadMessage_PartitionSessionStatusRequest({
    $fixnum.Int64? partitionSessionId,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    return result;
  }

  StreamReadMessage_PartitionSessionStatusRequest._();

  factory StreamReadMessage_PartitionSessionStatusRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_PartitionSessionStatusRequest.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamReadMessage.PartitionSessionStatusRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_PartitionSessionStatusRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_PartitionSessionStatusRequest copyWith(
          void Function(StreamReadMessage_PartitionSessionStatusRequest)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamReadMessage_PartitionSessionStatusRequest))
          as StreamReadMessage_PartitionSessionStatusRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_PartitionSessionStatusRequest create() =>
      StreamReadMessage_PartitionSessionStatusRequest._();
  @$core.override
  StreamReadMessage_PartitionSessionStatusRequest createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_PartitionSessionStatusRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_PartitionSessionStatusRequest>(create);
  static StreamReadMessage_PartitionSessionStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);
}

/// Response to status request.
class StreamReadMessage_PartitionSessionStatusResponse
    extends $pb.GeneratedMessage {
  factory StreamReadMessage_PartitionSessionStatusResponse({
    $fixnum.Int64? partitionSessionId,
    OffsetsRange? partitionOffsets,
    $fixnum.Int64? committedOffset,
    $1.Timestamp? writeTimeHighWatermark,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (partitionOffsets != null) result.partitionOffsets = partitionOffsets;
    if (committedOffset != null) result.committedOffset = committedOffset;
    if (writeTimeHighWatermark != null)
      result.writeTimeHighWatermark = writeTimeHighWatermark;
    return result;
  }

  StreamReadMessage_PartitionSessionStatusResponse._();

  factory StreamReadMessage_PartitionSessionStatusResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_PartitionSessionStatusResponse.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamReadMessage.PartitionSessionStatusResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..aOM<OffsetsRange>(2, _omitFieldNames ? '' : 'partitionOffsets',
        subBuilder: OffsetsRange.create)
    ..aInt64(3, _omitFieldNames ? '' : 'committedOffset')
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'writeTimeHighWatermark',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_PartitionSessionStatusResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_PartitionSessionStatusResponse copyWith(
          void Function(StreamReadMessage_PartitionSessionStatusResponse)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamReadMessage_PartitionSessionStatusResponse))
          as StreamReadMessage_PartitionSessionStatusResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_PartitionSessionStatusResponse create() =>
      StreamReadMessage_PartitionSessionStatusResponse._();
  @$core.override
  StreamReadMessage_PartitionSessionStatusResponse createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_PartitionSessionStatusResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_PartitionSessionStatusResponse>(create);
  static StreamReadMessage_PartitionSessionStatusResponse? _defaultInstance;

  /// Identifier of partition session whose status was requested.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Partition contains messages with offsets in range [start, end).
  @$pb.TagNumber(2)
  OffsetsRange get partitionOffsets => $_getN(1);
  @$pb.TagNumber(2)
  set partitionOffsets(OffsetsRange value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPartitionOffsets() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartitionOffsets() => $_clearField(2);
  @$pb.TagNumber(2)
  OffsetsRange ensurePartitionOffsets() => $_ensure(1);

  /// Each offset up to and including (committed_offset - 1) was fully processed.
  @$pb.TagNumber(3)
  $fixnum.Int64 get committedOffset => $_getI64(2);
  @$pb.TagNumber(3)
  set committedOffset($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCommittedOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearCommittedOffset() => $_clearField(3);

  /// Write timestamp of next message written to this partition will be no less than write_time_high_watermark.
  @$pb.TagNumber(4)
  $1.Timestamp get writeTimeHighWatermark => $_getN(3);
  @$pb.TagNumber(4)
  set writeTimeHighWatermark($1.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasWriteTimeHighWatermark() => $_has(3);
  @$pb.TagNumber(4)
  void clearWriteTimeHighWatermark() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureWriteTimeHighWatermark() => $_ensure(3);
}

/// Command from server to create and start a partition session.
/// Client must respond with StartPartitionSessionResponse when ready to receive data from this partition.
class StreamReadMessage_StartPartitionSessionRequest
    extends $pb.GeneratedMessage {
  factory StreamReadMessage_StartPartitionSessionRequest({
    StreamReadMessage_PartitionSession? partitionSession,
    $fixnum.Int64? committedOffset,
    OffsetsRange? partitionOffsets,
    PartitionLocation? partitionLocation,
  }) {
    final result = create();
    if (partitionSession != null) result.partitionSession = partitionSession;
    if (committedOffset != null) result.committedOffset = committedOffset;
    if (partitionOffsets != null) result.partitionOffsets = partitionOffsets;
    if (partitionLocation != null) result.partitionLocation = partitionLocation;
    return result;
  }

  StreamReadMessage_StartPartitionSessionRequest._();

  factory StreamReadMessage_StartPartitionSessionRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_StartPartitionSessionRequest.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.StartPartitionSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<StreamReadMessage_PartitionSession>(
        1, _omitFieldNames ? '' : 'partitionSession',
        subBuilder: StreamReadMessage_PartitionSession.create)
    ..aInt64(2, _omitFieldNames ? '' : 'committedOffset')
    ..aOM<OffsetsRange>(3, _omitFieldNames ? '' : 'partitionOffsets',
        subBuilder: OffsetsRange.create)
    ..aOM<PartitionLocation>(4, _omitFieldNames ? '' : 'partitionLocation',
        subBuilder: PartitionLocation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_StartPartitionSessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_StartPartitionSessionRequest copyWith(
          void Function(StreamReadMessage_StartPartitionSessionRequest)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamReadMessage_StartPartitionSessionRequest))
          as StreamReadMessage_StartPartitionSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_StartPartitionSessionRequest create() =>
      StreamReadMessage_StartPartitionSessionRequest._();
  @$core.override
  StreamReadMessage_StartPartitionSessionRequest createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_StartPartitionSessionRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_StartPartitionSessionRequest>(create);
  static StreamReadMessage_StartPartitionSessionRequest? _defaultInstance;

  /// Partition session description.
  @$pb.TagNumber(1)
  StreamReadMessage_PartitionSession get partitionSession => $_getN(0);
  @$pb.TagNumber(1)
  set partitionSession(StreamReadMessage_PartitionSession value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSession() => $_clearField(1);
  @$pb.TagNumber(1)
  StreamReadMessage_PartitionSession ensurePartitionSession() => $_ensure(0);

  /// Each offset up to and including (committed_offset - 1) was fully processed.
  @$pb.TagNumber(2)
  $fixnum.Int64 get committedOffset => $_getI64(1);
  @$pb.TagNumber(2)
  set committedOffset($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCommittedOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommittedOffset() => $_clearField(2);

  /// Partition contains messages with offsets in range [start, end).
  @$pb.TagNumber(3)
  OffsetsRange get partitionOffsets => $_getN(2);
  @$pb.TagNumber(3)
  set partitionOffsets(OffsetsRange value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPartitionOffsets() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartitionOffsets() => $_clearField(3);
  @$pb.TagNumber(3)
  OffsetsRange ensurePartitionOffsets() => $_ensure(2);

  /// Partition location, filled only when InitRequest.direct_read is true.
  @$pb.TagNumber(4)
  PartitionLocation get partitionLocation => $_getN(3);
  @$pb.TagNumber(4)
  set partitionLocation(PartitionLocation value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPartitionLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearPartitionLocation() => $_clearField(4);
  @$pb.TagNumber(4)
  PartitionLocation ensurePartitionLocation() => $_ensure(3);
}

/// Signal for server that client is ready to recive data for partition.
class StreamReadMessage_StartPartitionSessionResponse
    extends $pb.GeneratedMessage {
  factory StreamReadMessage_StartPartitionSessionResponse({
    $fixnum.Int64? partitionSessionId,
    $fixnum.Int64? readOffset,
    $fixnum.Int64? commitOffset,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (readOffset != null) result.readOffset = readOffset;
    if (commitOffset != null) result.commitOffset = commitOffset;
    return result;
  }

  StreamReadMessage_StartPartitionSessionResponse._();

  factory StreamReadMessage_StartPartitionSessionResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_StartPartitionSessionResponse.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamReadMessage.StartPartitionSessionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'readOffset')
    ..aInt64(3, _omitFieldNames ? '' : 'commitOffset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_StartPartitionSessionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_StartPartitionSessionResponse copyWith(
          void Function(StreamReadMessage_StartPartitionSessionResponse)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamReadMessage_StartPartitionSessionResponse))
          as StreamReadMessage_StartPartitionSessionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_StartPartitionSessionResponse create() =>
      StreamReadMessage_StartPartitionSessionResponse._();
  @$core.override
  StreamReadMessage_StartPartitionSessionResponse createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_StartPartitionSessionResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_StartPartitionSessionResponse>(create);
  static StreamReadMessage_StartPartitionSessionResponse? _defaultInstance;

  /// Partition session identifier of partition to start read.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Reads in this partition session will start from offset no less than read_offset.
  /// If read_offset is set, server will check that read_offset is no less that actual committed offset.
  /// If check fails then server will send an error message (status != SUCCESS) and close stream.
  ///
  /// If read_offset is not set, no check will be made.
  /// InitRequest.max_lag and InitRequest.read_from could lead to skip of more messages.
  /// Server will return data starting from offset that is maximum of actual committed offset, read_offset (if set)
  /// and offsets calculated from InitRequest.max_lag and InitRequest.read_from.
  @$pb.TagNumber(2)
  $fixnum.Int64 get readOffset => $_getI64(1);
  @$pb.TagNumber(2)
  set readOffset($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReadOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearReadOffset() => $_clearField(2);

  /// All messages with offset less than commit_offset are processed by client.
  /// Server will commit this position if this is not done yet.
  @$pb.TagNumber(3)
  $fixnum.Int64 get commitOffset => $_getI64(2);
  @$pb.TagNumber(3)
  set commitOffset($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCommitOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearCommitOffset() => $_clearField(3);
}

/// Command from server to stop and destroy concrete partition session.
class StreamReadMessage_StopPartitionSessionRequest
    extends $pb.GeneratedMessage {
  factory StreamReadMessage_StopPartitionSessionRequest({
    $fixnum.Int64? partitionSessionId,
    $core.bool? graceful,
    $fixnum.Int64? committedOffset,
    $fixnum.Int64? lastDirectReadId,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (graceful != null) result.graceful = graceful;
    if (committedOffset != null) result.committedOffset = committedOffset;
    if (lastDirectReadId != null) result.lastDirectReadId = lastDirectReadId;
    return result;
  }

  StreamReadMessage_StopPartitionSessionRequest._();

  factory StreamReadMessage_StopPartitionSessionRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_StopPartitionSessionRequest.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.StopPartitionSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..aOB(2, _omitFieldNames ? '' : 'graceful')
    ..aInt64(3, _omitFieldNames ? '' : 'committedOffset')
    ..aInt64(4, _omitFieldNames ? '' : 'lastDirectReadId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_StopPartitionSessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_StopPartitionSessionRequest copyWith(
          void Function(StreamReadMessage_StopPartitionSessionRequest)
              updates) =>
      super.copyWith((message) =>
              updates(message as StreamReadMessage_StopPartitionSessionRequest))
          as StreamReadMessage_StopPartitionSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_StopPartitionSessionRequest create() =>
      StreamReadMessage_StopPartitionSessionRequest._();
  @$core.override
  StreamReadMessage_StopPartitionSessionRequest createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_StopPartitionSessionRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_StopPartitionSessionRequest>(create);
  static StreamReadMessage_StopPartitionSessionRequest? _defaultInstance;

  /// Identifier of partition session that is ready to be closed by server.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Flag of graceful stop.
  /// If set, server will wait for response from client before giving this partition to other read session.
  /// Server will not send more data from this partition.
  /// Client can process all received data and wait for commit and only after send response.
  /// If False then server gives partition for other session right now.
  /// All further commits for this partition session has no effect. Server is not waiting for response.
  @$pb.TagNumber(2)
  $core.bool get graceful => $_getBF(1);
  @$pb.TagNumber(2)
  set graceful($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGraceful() => $_has(1);
  @$pb.TagNumber(2)
  void clearGraceful() => $_clearField(2);

  /// Upper bound for committed offsets.
  @$pb.TagNumber(3)
  $fixnum.Int64 get committedOffset => $_getI64(2);
  @$pb.TagNumber(3)
  set committedOffset($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCommittedOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearCommittedOffset() => $_clearField(3);

  /// Upper bound for read request identifiers, filled only when InitRequest.direct_read is true and graceful is true.
  @$pb.TagNumber(4)
  $fixnum.Int64 get lastDirectReadId => $_getI64(3);
  @$pb.TagNumber(4)
  set lastDirectReadId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLastDirectReadId() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastDirectReadId() => $_clearField(4);
}

/// Signal for server that client finished working with this partition.
/// Must be sent only after corresponding StopPartitionSessionRequest from server.
/// Server will give this partition to other read session only after StopPartitionSessionResponse signal.
class StreamReadMessage_StopPartitionSessionResponse
    extends $pb.GeneratedMessage {
  factory StreamReadMessage_StopPartitionSessionResponse({
    $fixnum.Int64? partitionSessionId,
    $core.bool? graceful,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (graceful != null) result.graceful = graceful;
    return result;
  }

  StreamReadMessage_StopPartitionSessionResponse._();

  factory StreamReadMessage_StopPartitionSessionResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_StopPartitionSessionResponse.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.StopPartitionSessionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..aOB(2, _omitFieldNames ? '' : 'graceful')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_StopPartitionSessionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_StopPartitionSessionResponse copyWith(
          void Function(StreamReadMessage_StopPartitionSessionResponse)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamReadMessage_StopPartitionSessionResponse))
          as StreamReadMessage_StopPartitionSessionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_StopPartitionSessionResponse create() =>
      StreamReadMessage_StopPartitionSessionResponse._();
  @$core.override
  StreamReadMessage_StopPartitionSessionResponse createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_StopPartitionSessionResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_StopPartitionSessionResponse>(create);
  static StreamReadMessage_StopPartitionSessionResponse? _defaultInstance;

  /// Partition session identifier of partition session that is released by client.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Flag of graceful stop, used only when InitRequest.direct_read is true
  /// Client must pass this value unchanged from the StopPartitionSessionRequest.
  /// Server can sent two StopPartitionSessionRequests, the first with graceful=true, the second with graceful=false. The client must answer both of them.
  @$pb.TagNumber(2)
  $core.bool get graceful => $_getBF(1);
  @$pb.TagNumber(2)
  set graceful($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGraceful() => $_has(1);
  @$pb.TagNumber(2)
  void clearGraceful() => $_clearField(2);
}

/// Command from server to notify about a partition session update.
/// Client should not send a response to the command.
class StreamReadMessage_UpdatePartitionSession extends $pb.GeneratedMessage {
  factory StreamReadMessage_UpdatePartitionSession({
    $fixnum.Int64? partitionSessionId,
    PartitionLocation? partitionLocation,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (partitionLocation != null) result.partitionLocation = partitionLocation;
    return result;
  }

  StreamReadMessage_UpdatePartitionSession._();

  factory StreamReadMessage_UpdatePartitionSession.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_UpdatePartitionSession.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.UpdatePartitionSession',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..aOM<PartitionLocation>(2, _omitFieldNames ? '' : 'partitionLocation',
        subBuilder: PartitionLocation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_UpdatePartitionSession clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_UpdatePartitionSession copyWith(
          void Function(StreamReadMessage_UpdatePartitionSession) updates) =>
      super.copyWith((message) =>
              updates(message as StreamReadMessage_UpdatePartitionSession))
          as StreamReadMessage_UpdatePartitionSession;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_UpdatePartitionSession create() =>
      StreamReadMessage_UpdatePartitionSession._();
  @$core.override
  StreamReadMessage_UpdatePartitionSession createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_UpdatePartitionSession getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_UpdatePartitionSession>(create);
  static StreamReadMessage_UpdatePartitionSession? _defaultInstance;

  /// Partition session identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Partition location, filled only when InitRequest.direct_read is true.
  @$pb.TagNumber(2)
  PartitionLocation get partitionLocation => $_getN(1);
  @$pb.TagNumber(2)
  set partitionLocation(PartitionLocation value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPartitionLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartitionLocation() => $_clearField(2);
  @$pb.TagNumber(2)
  PartitionLocation ensurePartitionLocation() => $_ensure(1);
}

/// Signal for server that client has finished direct reading.
/// Server should not send a response to the command.
class StreamReadMessage_DirectReadAck extends $pb.GeneratedMessage {
  factory StreamReadMessage_DirectReadAck({
    $fixnum.Int64? partitionSessionId,
    $fixnum.Int64? directReadId,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (directReadId != null) result.directReadId = directReadId;
    return result;
  }

  StreamReadMessage_DirectReadAck._();

  factory StreamReadMessage_DirectReadAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_DirectReadAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.DirectReadAck',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'directReadId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_DirectReadAck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_DirectReadAck copyWith(
          void Function(StreamReadMessage_DirectReadAck) updates) =>
      super.copyWith(
              (message) => updates(message as StreamReadMessage_DirectReadAck))
          as StreamReadMessage_DirectReadAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_DirectReadAck create() =>
      StreamReadMessage_DirectReadAck._();
  @$core.override
  StreamReadMessage_DirectReadAck createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_DirectReadAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamReadMessage_DirectReadAck>(
          create);
  static StreamReadMessage_DirectReadAck? _defaultInstance;

  /// Partition session identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Identifier of the successfully completed read request.
  @$pb.TagNumber(2)
  $fixnum.Int64 get directReadId => $_getI64(1);
  @$pb.TagNumber(2)
  set directReadId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDirectReadId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirectReadId() => $_clearField(2);
}

/// Signal from server that client has finished reading the partition and all messages have been read.
/// Once a partition has been finished no further messages will ever arrive to that partition.
/// This command is a hint to the client to commit offsets, after which the child partitions will be balanced independently in different reading sessions.
/// Unlike StopPartitionSessionRequest, the client does not have to close the reading session.
/// Client should not send a response to the command.
class StreamReadMessage_EndPartitionSession extends $pb.GeneratedMessage {
  factory StreamReadMessage_EndPartitionSession({
    $fixnum.Int64? partitionSessionId,
    $core.Iterable<$fixnum.Int64>? adjacentPartitionIds,
    $core.Iterable<$fixnum.Int64>? childPartitionIds,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (adjacentPartitionIds != null)
      result.adjacentPartitionIds.addAll(adjacentPartitionIds);
    if (childPartitionIds != null)
      result.childPartitionIds.addAll(childPartitionIds);
    return result;
  }

  StreamReadMessage_EndPartitionSession._();

  factory StreamReadMessage_EndPartitionSession.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage_EndPartitionSession.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage.EndPartitionSession',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..p<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'adjacentPartitionIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'childPartitionIds', $pb.PbFieldType.K6)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_EndPartitionSession clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage_EndPartitionSession copyWith(
          void Function(StreamReadMessage_EndPartitionSession) updates) =>
      super.copyWith((message) =>
              updates(message as StreamReadMessage_EndPartitionSession))
          as StreamReadMessage_EndPartitionSession;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_EndPartitionSession create() =>
      StreamReadMessage_EndPartitionSession._();
  @$core.override
  StreamReadMessage_EndPartitionSession createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage_EndPartitionSession getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamReadMessage_EndPartitionSession>(create);
  static StreamReadMessage_EndPartitionSession? _defaultInstance;

  /// Partition session identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Ids of partitions which were merged with the ended partition.
  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get adjacentPartitionIds => $_getList(1);

  /// Ids of partitions which was formed when the ended partition was split or merged.
  @$pb.TagNumber(3)
  $pb.PbList<$fixnum.Int64> get childPartitionIds => $_getList(2);
}

/// Messages for bidirectional streaming rpc StreamRead
class StreamReadMessage extends $pb.GeneratedMessage {
  factory StreamReadMessage() => create();

  StreamReadMessage._();

  factory StreamReadMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadMessage copyWith(void Function(StreamReadMessage) updates) =>
      super.copyWith((message) => updates(message as StreamReadMessage))
          as StreamReadMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadMessage create() => StreamReadMessage._();
  @$core.override
  StreamReadMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamReadMessage>(create);
  static StreamReadMessage? _defaultInstance;
}

enum StreamDirectReadMessage_FromClient_ClientMessage {
  initRequest,
  startDirectReadPartitionSessionRequest,
  updateTokenRequest,
  notSet
}

/// Client-server message for direct read session.
///     InitRequest - command from client to create and start a direct read session.
///     StartDirectReadPartitionSessionRequest - command from client to create and start a direct read partition session.
///         Client signals it is ready to get data from partition.
///     UpdateTokenRequest - request to update auth token
class StreamDirectReadMessage_FromClient extends $pb.GeneratedMessage {
  factory StreamDirectReadMessage_FromClient({
    StreamDirectReadMessage_InitRequest? initRequest,
    StreamDirectReadMessage_StartDirectReadPartitionSessionRequest?
        startDirectReadPartitionSessionRequest,
    UpdateTokenRequest? updateTokenRequest,
  }) {
    final result = create();
    if (initRequest != null) result.initRequest = initRequest;
    if (startDirectReadPartitionSessionRequest != null)
      result.startDirectReadPartitionSessionRequest =
          startDirectReadPartitionSessionRequest;
    if (updateTokenRequest != null)
      result.updateTokenRequest = updateTokenRequest;
    return result;
  }

  StreamDirectReadMessage_FromClient._();

  factory StreamDirectReadMessage_FromClient.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamDirectReadMessage_FromClient.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core
      .Map<$core.int, StreamDirectReadMessage_FromClient_ClientMessage>
      _StreamDirectReadMessage_FromClient_ClientMessageByTag = {
    1: StreamDirectReadMessage_FromClient_ClientMessage.initRequest,
    2: StreamDirectReadMessage_FromClient_ClientMessage
        .startDirectReadPartitionSessionRequest,
    3: StreamDirectReadMessage_FromClient_ClientMessage.updateTokenRequest,
    0: StreamDirectReadMessage_FromClient_ClientMessage.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamDirectReadMessage.FromClient',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<StreamDirectReadMessage_InitRequest>(
        1, _omitFieldNames ? '' : 'initRequest',
        subBuilder: StreamDirectReadMessage_InitRequest.create)
    ..aOM<StreamDirectReadMessage_StartDirectReadPartitionSessionRequest>(
        2, _omitFieldNames ? '' : 'startDirectReadPartitionSessionRequest',
        subBuilder:
            StreamDirectReadMessage_StartDirectReadPartitionSessionRequest
                .create)
    ..aOM<UpdateTokenRequest>(3, _omitFieldNames ? '' : 'updateTokenRequest',
        subBuilder: UpdateTokenRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_FromClient clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_FromClient copyWith(
          void Function(StreamDirectReadMessage_FromClient) updates) =>
      super.copyWith((message) =>
              updates(message as StreamDirectReadMessage_FromClient))
          as StreamDirectReadMessage_FromClient;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_FromClient create() =>
      StreamDirectReadMessage_FromClient._();
  @$core.override
  StreamDirectReadMessage_FromClient createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_FromClient getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamDirectReadMessage_FromClient>(
          create);
  static StreamDirectReadMessage_FromClient? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  StreamDirectReadMessage_FromClient_ClientMessage whichClientMessage() =>
      _StreamDirectReadMessage_FromClient_ClientMessageByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearClientMessage() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  StreamDirectReadMessage_InitRequest get initRequest => $_getN(0);
  @$pb.TagNumber(1)
  set initRequest(StreamDirectReadMessage_InitRequest value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInitRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearInitRequest() => $_clearField(1);
  @$pb.TagNumber(1)
  StreamDirectReadMessage_InitRequest ensureInitRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  StreamDirectReadMessage_StartDirectReadPartitionSessionRequest
      get startDirectReadPartitionSessionRequest => $_getN(1);
  @$pb.TagNumber(2)
  set startDirectReadPartitionSessionRequest(
          StreamDirectReadMessage_StartDirectReadPartitionSessionRequest
              value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStartDirectReadPartitionSessionRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartDirectReadPartitionSessionRequest() => $_clearField(2);
  @$pb.TagNumber(2)
  StreamDirectReadMessage_StartDirectReadPartitionSessionRequest
      ensureStartDirectReadPartitionSessionRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  UpdateTokenRequest get updateTokenRequest => $_getN(2);
  @$pb.TagNumber(3)
  set updateTokenRequest(UpdateTokenRequest value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUpdateTokenRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateTokenRequest() => $_clearField(3);
  @$pb.TagNumber(3)
  UpdateTokenRequest ensureUpdateTokenRequest() => $_ensure(2);
}

enum StreamDirectReadMessage_FromServer_ServerMessage {
  stopDirectReadPartitionSession,
  directReadResponse,
  updateTokenResponse,
  initResponse,
  startDirectReadPartitionSessionResponse,
  notSet
}

/// Server-client message for direct read session.
///     InitResponse - correct handshake response.
///     StartDirectReadPartitionSessionResponse - Response to StartDirectReadPartitionSessionRequest.
///     DirectReadResponse - portion of message data.
///     StopDirectReadPartitionSession - command from server to stop a direct read partition session.
///     UpdateTokenResponse - acknowledgment of token update.
class StreamDirectReadMessage_FromServer extends $pb.GeneratedMessage {
  factory StreamDirectReadMessage_FromServer({
    $6.StatusIds_StatusCode? status,
    $core.Iterable<$0.IssueMessage>? issues,
    StreamDirectReadMessage_StopDirectReadPartitionSession?
        stopDirectReadPartitionSession,
    StreamDirectReadMessage_DirectReadResponse? directReadResponse,
    UpdateTokenResponse? updateTokenResponse,
    StreamDirectReadMessage_InitResponse? initResponse,
    StreamDirectReadMessage_StartDirectReadPartitionSessionResponse?
        startDirectReadPartitionSessionResponse,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    if (stopDirectReadPartitionSession != null)
      result.stopDirectReadPartitionSession = stopDirectReadPartitionSession;
    if (directReadResponse != null)
      result.directReadResponse = directReadResponse;
    if (updateTokenResponse != null)
      result.updateTokenResponse = updateTokenResponse;
    if (initResponse != null) result.initResponse = initResponse;
    if (startDirectReadPartitionSessionResponse != null)
      result.startDirectReadPartitionSessionResponse =
          startDirectReadPartitionSessionResponse;
    return result;
  }

  StreamDirectReadMessage_FromServer._();

  factory StreamDirectReadMessage_FromServer.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamDirectReadMessage_FromServer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core
      .Map<$core.int, StreamDirectReadMessage_FromServer_ServerMessage>
      _StreamDirectReadMessage_FromServer_ServerMessageByTag = {
    3: StreamDirectReadMessage_FromServer_ServerMessage
        .stopDirectReadPartitionSession,
    4: StreamDirectReadMessage_FromServer_ServerMessage.directReadResponse,
    5: StreamDirectReadMessage_FromServer_ServerMessage.updateTokenResponse,
    6: StreamDirectReadMessage_FromServer_ServerMessage.initResponse,
    7: StreamDirectReadMessage_FromServer_ServerMessage
        .startDirectReadPartitionSessionResponse,
    0: StreamDirectReadMessage_FromServer_ServerMessage.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamDirectReadMessage.FromServer',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7])
    ..aE<$6.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $6.StatusIds_StatusCode.values)
    ..pPM<$0.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $0.IssueMessage.create)
    ..aOM<StreamDirectReadMessage_StopDirectReadPartitionSession>(
        3, _omitFieldNames ? '' : 'stopDirectReadPartitionSession',
        subBuilder:
            StreamDirectReadMessage_StopDirectReadPartitionSession.create)
    ..aOM<StreamDirectReadMessage_DirectReadResponse>(
        4, _omitFieldNames ? '' : 'directReadResponse',
        subBuilder: StreamDirectReadMessage_DirectReadResponse.create)
    ..aOM<UpdateTokenResponse>(5, _omitFieldNames ? '' : 'updateTokenResponse',
        subBuilder: UpdateTokenResponse.create)
    ..aOM<StreamDirectReadMessage_InitResponse>(
        6, _omitFieldNames ? '' : 'initResponse',
        subBuilder: StreamDirectReadMessage_InitResponse.create)
    ..aOM<StreamDirectReadMessage_StartDirectReadPartitionSessionResponse>(
        7, _omitFieldNames ? '' : 'startDirectReadPartitionSessionResponse',
        subBuilder:
            StreamDirectReadMessage_StartDirectReadPartitionSessionResponse
                .create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_FromServer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_FromServer copyWith(
          void Function(StreamDirectReadMessage_FromServer) updates) =>
      super.copyWith((message) =>
              updates(message as StreamDirectReadMessage_FromServer))
          as StreamDirectReadMessage_FromServer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_FromServer create() =>
      StreamDirectReadMessage_FromServer._();
  @$core.override
  StreamDirectReadMessage_FromServer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_FromServer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamDirectReadMessage_FromServer>(
          create);
  static StreamDirectReadMessage_FromServer? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  StreamDirectReadMessage_FromServer_ServerMessage whichServerMessage() =>
      _StreamDirectReadMessage_FromServer_ServerMessageByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  void clearServerMessage() => $_clearField($_whichOneof(0));

  /// Server status of response.
  @$pb.TagNumber(1)
  $6.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($6.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  /// Issues if any.
  @$pb.TagNumber(2)
  $pb.PbList<$0.IssueMessage> get issues => $_getList(1);

  @$pb.TagNumber(3)
  StreamDirectReadMessage_StopDirectReadPartitionSession
      get stopDirectReadPartitionSession => $_getN(2);
  @$pb.TagNumber(3)
  set stopDirectReadPartitionSession(
          StreamDirectReadMessage_StopDirectReadPartitionSession value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStopDirectReadPartitionSession() => $_has(2);
  @$pb.TagNumber(3)
  void clearStopDirectReadPartitionSession() => $_clearField(3);
  @$pb.TagNumber(3)
  StreamDirectReadMessage_StopDirectReadPartitionSession
      ensureStopDirectReadPartitionSession() => $_ensure(2);

  @$pb.TagNumber(4)
  StreamDirectReadMessage_DirectReadResponse get directReadResponse =>
      $_getN(3);
  @$pb.TagNumber(4)
  set directReadResponse(StreamDirectReadMessage_DirectReadResponse value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasDirectReadResponse() => $_has(3);
  @$pb.TagNumber(4)
  void clearDirectReadResponse() => $_clearField(4);
  @$pb.TagNumber(4)
  StreamDirectReadMessage_DirectReadResponse ensureDirectReadResponse() =>
      $_ensure(3);

  @$pb.TagNumber(5)
  UpdateTokenResponse get updateTokenResponse => $_getN(4);
  @$pb.TagNumber(5)
  set updateTokenResponse(UpdateTokenResponse value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasUpdateTokenResponse() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdateTokenResponse() => $_clearField(5);
  @$pb.TagNumber(5)
  UpdateTokenResponse ensureUpdateTokenResponse() => $_ensure(4);

  @$pb.TagNumber(6)
  StreamDirectReadMessage_InitResponse get initResponse => $_getN(5);
  @$pb.TagNumber(6)
  set initResponse(StreamDirectReadMessage_InitResponse value) =>
      $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasInitResponse() => $_has(5);
  @$pb.TagNumber(6)
  void clearInitResponse() => $_clearField(6);
  @$pb.TagNumber(6)
  StreamDirectReadMessage_InitResponse ensureInitResponse() => $_ensure(5);

  @$pb.TagNumber(7)
  StreamDirectReadMessage_StartDirectReadPartitionSessionResponse
      get startDirectReadPartitionSessionResponse => $_getN(6);
  @$pb.TagNumber(7)
  set startDirectReadPartitionSessionResponse(
          StreamDirectReadMessage_StartDirectReadPartitionSessionResponse
              value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasStartDirectReadPartitionSessionResponse() => $_has(6);
  @$pb.TagNumber(7)
  void clearStartDirectReadPartitionSessionResponse() => $_clearField(7);
  @$pb.TagNumber(7)
  StreamDirectReadMessage_StartDirectReadPartitionSessionResponse
      ensureStartDirectReadPartitionSessionResponse() => $_ensure(6);
}

class StreamDirectReadMessage_InitRequest_TopicReadSettings
    extends $pb.GeneratedMessage {
  factory StreamDirectReadMessage_InitRequest_TopicReadSettings({
    $core.String? path,
  }) {
    final result = create();
    if (path != null) result.path = path;
    return result;
  }

  StreamDirectReadMessage_InitRequest_TopicReadSettings._();

  factory StreamDirectReadMessage_InitRequest_TopicReadSettings.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamDirectReadMessage_InitRequest_TopicReadSettings.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamDirectReadMessage.InitRequest.TopicReadSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_InitRequest_TopicReadSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_InitRequest_TopicReadSettings copyWith(
          void Function(StreamDirectReadMessage_InitRequest_TopicReadSettings)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamDirectReadMessage_InitRequest_TopicReadSettings))
          as StreamDirectReadMessage_InitRequest_TopicReadSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_InitRequest_TopicReadSettings create() =>
      StreamDirectReadMessage_InitRequest_TopicReadSettings._();
  @$core.override
  StreamDirectReadMessage_InitRequest_TopicReadSettings createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_InitRequest_TopicReadSettings getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamDirectReadMessage_InitRequest_TopicReadSettings>(create);
  static StreamDirectReadMessage_InitRequest_TopicReadSettings?
      _defaultInstance;

  /// Topic path.
  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);
}

/// Command from client to create and start a direct read session.
/// Server should not send a response to the command.
class StreamDirectReadMessage_InitRequest extends $pb.GeneratedMessage {
  factory StreamDirectReadMessage_InitRequest({
    $core.String? sessionId,
    $core.Iterable<StreamDirectReadMessage_InitRequest_TopicReadSettings>?
        topicsReadSettings,
    $core.String? consumer,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (topicsReadSettings != null)
      result.topicsReadSettings.addAll(topicsReadSettings);
    if (consumer != null) result.consumer = consumer;
    return result;
  }

  StreamDirectReadMessage_InitRequest._();

  factory StreamDirectReadMessage_InitRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamDirectReadMessage_InitRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamDirectReadMessage.InitRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..pPM<StreamDirectReadMessage_InitRequest_TopicReadSettings>(
        2, _omitFieldNames ? '' : 'topicsReadSettings',
        subBuilder:
            StreamDirectReadMessage_InitRequest_TopicReadSettings.create)
    ..aOS(3, _omitFieldNames ? '' : 'consumer')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_InitRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_InitRequest copyWith(
          void Function(StreamDirectReadMessage_InitRequest) updates) =>
      super.copyWith((message) =>
              updates(message as StreamDirectReadMessage_InitRequest))
          as StreamDirectReadMessage_InitRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_InitRequest create() =>
      StreamDirectReadMessage_InitRequest._();
  @$core.override
  StreamDirectReadMessage_InitRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_InitRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamDirectReadMessage_InitRequest>(create);
  static StreamDirectReadMessage_InitRequest? _defaultInstance;

  /// Read session identifier.
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// Topics that will be read by this session.
  @$pb.TagNumber(2)
  $pb.PbList<StreamDirectReadMessage_InitRequest_TopicReadSettings>
      get topicsReadSettings => $_getList(1);

  /// Path of consumer that is used for reading by this session.
  @$pb.TagNumber(3)
  $core.String get consumer => $_getSZ(2);
  @$pb.TagNumber(3)
  set consumer($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasConsumer() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsumer() => $_clearField(3);
}

/// Response to the handshake.
class StreamDirectReadMessage_InitResponse extends $pb.GeneratedMessage {
  factory StreamDirectReadMessage_InitResponse() => create();

  StreamDirectReadMessage_InitResponse._();

  factory StreamDirectReadMessage_InitResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamDirectReadMessage_InitResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamDirectReadMessage.InitResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_InitResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_InitResponse copyWith(
          void Function(StreamDirectReadMessage_InitResponse) updates) =>
      super.copyWith((message) =>
              updates(message as StreamDirectReadMessage_InitResponse))
          as StreamDirectReadMessage_InitResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_InitResponse create() =>
      StreamDirectReadMessage_InitResponse._();
  @$core.override
  StreamDirectReadMessage_InitResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_InitResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamDirectReadMessage_InitResponse>(create);
  static StreamDirectReadMessage_InitResponse? _defaultInstance;
}

/// Command from client to create and start a direct read partition session.
class StreamDirectReadMessage_StartDirectReadPartitionSessionRequest
    extends $pb.GeneratedMessage {
  factory StreamDirectReadMessage_StartDirectReadPartitionSessionRequest({
    $fixnum.Int64? partitionSessionId,
    $fixnum.Int64? lastDirectReadId,
    $fixnum.Int64? generation,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (lastDirectReadId != null) result.lastDirectReadId = lastDirectReadId;
    if (generation != null) result.generation = generation;
    return result;
  }

  StreamDirectReadMessage_StartDirectReadPartitionSessionRequest._();

  factory StreamDirectReadMessage_StartDirectReadPartitionSessionRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamDirectReadMessage_StartDirectReadPartitionSessionRequest.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamDirectReadMessage.StartDirectReadPartitionSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'lastDirectReadId')
    ..aInt64(3, _omitFieldNames ? '' : 'generation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_StartDirectReadPartitionSessionRequest clone() =>
      deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_StartDirectReadPartitionSessionRequest copyWith(
          void Function(
                  StreamDirectReadMessage_StartDirectReadPartitionSessionRequest)
              updates) =>
      super.copyWith((message) => updates(message
              as StreamDirectReadMessage_StartDirectReadPartitionSessionRequest))
          as StreamDirectReadMessage_StartDirectReadPartitionSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_StartDirectReadPartitionSessionRequest
      create() =>
          StreamDirectReadMessage_StartDirectReadPartitionSessionRequest._();
  @$core.override
  StreamDirectReadMessage_StartDirectReadPartitionSessionRequest
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_StartDirectReadPartitionSessionRequest
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
              StreamDirectReadMessage_StartDirectReadPartitionSessionRequest>(
          create);
  static StreamDirectReadMessage_StartDirectReadPartitionSessionRequest?
      _defaultInstance;

  /// Partition session identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Upper bound for read request identifiers.
  @$pb.TagNumber(2)
  $fixnum.Int64 get lastDirectReadId => $_getI64(1);
  @$pb.TagNumber(2)
  set lastDirectReadId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLastDirectReadId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastDirectReadId() => $_clearField(2);

  /// Partition generation.
  @$pb.TagNumber(3)
  $fixnum.Int64 get generation => $_getI64(2);
  @$pb.TagNumber(3)
  set generation($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasGeneration() => $_has(2);
  @$pb.TagNumber(3)
  void clearGeneration() => $_clearField(3);
}

/// Signal for server that client is ready to receive data for partition.
class StreamDirectReadMessage_StartDirectReadPartitionSessionResponse
    extends $pb.GeneratedMessage {
  factory StreamDirectReadMessage_StartDirectReadPartitionSessionResponse({
    $fixnum.Int64? partitionSessionId,
    $fixnum.Int64? generation,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (generation != null) result.generation = generation;
    return result;
  }

  StreamDirectReadMessage_StartDirectReadPartitionSessionResponse._();

  factory StreamDirectReadMessage_StartDirectReadPartitionSessionResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamDirectReadMessage_StartDirectReadPartitionSessionResponse.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamDirectReadMessage.StartDirectReadPartitionSessionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'generation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_StartDirectReadPartitionSessionResponse clone() =>
      deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_StartDirectReadPartitionSessionResponse copyWith(
          void Function(
                  StreamDirectReadMessage_StartDirectReadPartitionSessionResponse)
              updates) =>
      super.copyWith((message) => updates(message
              as StreamDirectReadMessage_StartDirectReadPartitionSessionResponse))
          as StreamDirectReadMessage_StartDirectReadPartitionSessionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_StartDirectReadPartitionSessionResponse
      create() =>
          StreamDirectReadMessage_StartDirectReadPartitionSessionResponse._();
  @$core.override
  StreamDirectReadMessage_StartDirectReadPartitionSessionResponse
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_StartDirectReadPartitionSessionResponse
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
              StreamDirectReadMessage_StartDirectReadPartitionSessionResponse>(
          create);
  static StreamDirectReadMessage_StartDirectReadPartitionSessionResponse?
      _defaultInstance;

  /// Partition session identifier of partition to start read.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Partition generation.
  @$pb.TagNumber(2)
  $fixnum.Int64 get generation => $_getI64(1);
  @$pb.TagNumber(2)
  set generation($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGeneration() => $_has(1);
  @$pb.TagNumber(2)
  void clearGeneration() => $_clearField(2);
}

/// Command from server to stop a direct read partition session.
/// Client should not send a response to the command.
class StreamDirectReadMessage_StopDirectReadPartitionSession
    extends $pb.GeneratedMessage {
  factory StreamDirectReadMessage_StopDirectReadPartitionSession({
    $6.StatusIds_StatusCode? status,
    $core.Iterable<$0.IssueMessage>? issues,
    $fixnum.Int64? partitionSessionId,
    $fixnum.Int64? generation,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (generation != null) result.generation = generation;
    return result;
  }

  StreamDirectReadMessage_StopDirectReadPartitionSession._();

  factory StreamDirectReadMessage_StopDirectReadPartitionSession.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamDirectReadMessage_StopDirectReadPartitionSession.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamDirectReadMessage.StopDirectReadPartitionSession',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aE<$6.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $6.StatusIds_StatusCode.values)
    ..pPM<$0.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $0.IssueMessage.create)
    ..aInt64(3, _omitFieldNames ? '' : 'partitionSessionId')
    ..aInt64(4, _omitFieldNames ? '' : 'generation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_StopDirectReadPartitionSession clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_StopDirectReadPartitionSession copyWith(
          void Function(StreamDirectReadMessage_StopDirectReadPartitionSession)
              updates) =>
      super.copyWith((message) => updates(message
              as StreamDirectReadMessage_StopDirectReadPartitionSession))
          as StreamDirectReadMessage_StopDirectReadPartitionSession;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_StopDirectReadPartitionSession create() =>
      StreamDirectReadMessage_StopDirectReadPartitionSession._();
  @$core.override
  StreamDirectReadMessage_StopDirectReadPartitionSession
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_StopDirectReadPartitionSession getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamDirectReadMessage_StopDirectReadPartitionSession>(create);
  static StreamDirectReadMessage_StopDirectReadPartitionSession?
      _defaultInstance;

  /// The reason for the stop.
  @$pb.TagNumber(1)
  $6.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($6.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  /// Issues if any.
  @$pb.TagNumber(2)
  $pb.PbList<$0.IssueMessage> get issues => $_getList(1);

  /// Partition session identifier.
  @$pb.TagNumber(3)
  $fixnum.Int64 get partitionSessionId => $_getI64(2);
  @$pb.TagNumber(3)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPartitionSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartitionSessionId() => $_clearField(3);

  /// Partition generation.
  @$pb.TagNumber(4)
  $fixnum.Int64 get generation => $_getI64(3);
  @$pb.TagNumber(4)
  set generation($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGeneration() => $_has(3);
  @$pb.TagNumber(4)
  void clearGeneration() => $_clearField(4);
}

/// Messages that have been read directly from the partition node.
/// It's a response to StreamRead.ReadRequest
class StreamDirectReadMessage_DirectReadResponse extends $pb.GeneratedMessage {
  factory StreamDirectReadMessage_DirectReadResponse({
    $fixnum.Int64? partitionSessionId,
    $fixnum.Int64? directReadId,
    StreamReadMessage_ReadResponse_PartitionData? partitionData,
    $fixnum.Int64? bytesSize,
  }) {
    final result = create();
    if (partitionSessionId != null)
      result.partitionSessionId = partitionSessionId;
    if (directReadId != null) result.directReadId = directReadId;
    if (partitionData != null) result.partitionData = partitionData;
    if (bytesSize != null) result.bytesSize = bytesSize;
    return result;
  }

  StreamDirectReadMessage_DirectReadResponse._();

  factory StreamDirectReadMessage_DirectReadResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamDirectReadMessage_DirectReadResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamDirectReadMessage.DirectReadResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionSessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'directReadId')
    ..aOM<StreamReadMessage_ReadResponse_PartitionData>(
        3, _omitFieldNames ? '' : 'partitionData',
        subBuilder: StreamReadMessage_ReadResponse_PartitionData.create)
    ..aInt64(4, _omitFieldNames ? '' : 'bytesSize')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_DirectReadResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage_DirectReadResponse copyWith(
          void Function(StreamDirectReadMessage_DirectReadResponse) updates) =>
      super.copyWith((message) =>
              updates(message as StreamDirectReadMessage_DirectReadResponse))
          as StreamDirectReadMessage_DirectReadResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_DirectReadResponse create() =>
      StreamDirectReadMessage_DirectReadResponse._();
  @$core.override
  StreamDirectReadMessage_DirectReadResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage_DirectReadResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamDirectReadMessage_DirectReadResponse>(create);
  static StreamDirectReadMessage_DirectReadResponse? _defaultInstance;

  /// Partition session identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionSessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionSessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionSessionId() => $_clearField(1);

  /// Read request identifier.
  @$pb.TagNumber(2)
  $fixnum.Int64 get directReadId => $_getI64(1);
  @$pb.TagNumber(2)
  set directReadId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDirectReadId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirectReadId() => $_clearField(2);

  /// Messages data
  @$pb.TagNumber(3)
  StreamReadMessage_ReadResponse_PartitionData get partitionData => $_getN(2);
  @$pb.TagNumber(3)
  set partitionData(StreamReadMessage_ReadResponse_PartitionData value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPartitionData() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartitionData() => $_clearField(3);
  @$pb.TagNumber(3)
  StreamReadMessage_ReadResponse_PartitionData ensurePartitionData() =>
      $_ensure(2);

  /// Total size in bytes of this response as calculated by server.
  /// See ReadRequest comment above.
  @$pb.TagNumber(4)
  $fixnum.Int64 get bytesSize => $_getI64(3);
  @$pb.TagNumber(4)
  set bytesSize($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBytesSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearBytesSize() => $_clearField(4);
}

/// Messages for bidirectional streaming rpc StreamDirectRead
class StreamDirectReadMessage extends $pb.GeneratedMessage {
  factory StreamDirectReadMessage() => create();

  StreamDirectReadMessage._();

  factory StreamDirectReadMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamDirectReadMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamDirectReadMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamDirectReadMessage copyWith(
          void Function(StreamDirectReadMessage) updates) =>
      super.copyWith((message) => updates(message as StreamDirectReadMessage))
          as StreamDirectReadMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage create() => StreamDirectReadMessage._();
  @$core.override
  StreamDirectReadMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamDirectReadMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamDirectReadMessage>(create);
  static StreamDirectReadMessage? _defaultInstance;
}

class TransactionIdentity extends $pb.GeneratedMessage {
  factory TransactionIdentity({
    $core.String? id,
    $core.String? session,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (session != null) result.session = session;
    return result;
  }

  TransactionIdentity._();

  factory TransactionIdentity.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionIdentity.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionIdentity',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'session')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionIdentity clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionIdentity copyWith(void Function(TransactionIdentity) updates) =>
      super.copyWith((message) => updates(message as TransactionIdentity))
          as TransactionIdentity;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionIdentity create() => TransactionIdentity._();
  @$core.override
  TransactionIdentity createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionIdentity getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionIdentity>(create);
  static TransactionIdentity? _defaultInstance;

  /// Transaction identifier from TableService.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Session identifier from TableService.
  @$pb.TagNumber(2)
  $core.String get session => $_getSZ(1);
  @$pb.TagNumber(2)
  set session($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSession() => $_has(1);
  @$pb.TagNumber(2)
  void clearSession() => $_clearField(2);
}

class UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets
    extends $pb.GeneratedMessage {
  factory UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets({
    $fixnum.Int64? partitionId,
    $core.Iterable<OffsetsRange>? partitionOffsets,
  }) {
    final result = create();
    if (partitionId != null) result.partitionId = partitionId;
    if (partitionOffsets != null)
      result.partitionOffsets.addAll(partitionOffsets);
    return result;
  }

  UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets._();

  factory UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'UpdateOffsetsInTransactionRequest.TopicOffsets.PartitionOffsets',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionId')
    ..pPM<OffsetsRange>(2, _omitFieldNames ? '' : 'partitionOffsets',
        subBuilder: OffsetsRange.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets clone() =>
      deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets copyWith(
          void Function(
                  UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets)
              updates) =>
      super.copyWith((message) => updates(message
              as UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets))
          as UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets
      create() =>
          UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets._();
  @$core.override
  UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
              UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets>(
          create);
  static UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets?
      _defaultInstance;

  /// Partition identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionId() => $_clearField(1);

  /// List of offset ranges.
  @$pb.TagNumber(2)
  $pb.PbList<OffsetsRange> get partitionOffsets => $_getList(1);
}

class UpdateOffsetsInTransactionRequest_TopicOffsets
    extends $pb.GeneratedMessage {
  factory UpdateOffsetsInTransactionRequest_TopicOffsets({
    $core.String? path,
    $core.Iterable<
            UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets>?
        partitions,
  }) {
    final result = create();
    if (path != null) result.path = path;
    if (partitions != null) result.partitions.addAll(partitions);
    return result;
  }

  UpdateOffsetsInTransactionRequest_TopicOffsets._();

  factory UpdateOffsetsInTransactionRequest_TopicOffsets.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateOffsetsInTransactionRequest_TopicOffsets.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateOffsetsInTransactionRequest.TopicOffsets',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..pPM<UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets>(
        2, _omitFieldNames ? '' : 'partitions',
        subBuilder:
            UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets
                .create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateOffsetsInTransactionRequest_TopicOffsets clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateOffsetsInTransactionRequest_TopicOffsets copyWith(
          void Function(UpdateOffsetsInTransactionRequest_TopicOffsets)
              updates) =>
      super.copyWith((message) => updates(
              message as UpdateOffsetsInTransactionRequest_TopicOffsets))
          as UpdateOffsetsInTransactionRequest_TopicOffsets;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateOffsetsInTransactionRequest_TopicOffsets create() =>
      UpdateOffsetsInTransactionRequest_TopicOffsets._();
  @$core.override
  UpdateOffsetsInTransactionRequest_TopicOffsets createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static UpdateOffsetsInTransactionRequest_TopicOffsets getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          UpdateOffsetsInTransactionRequest_TopicOffsets>(create);
  static UpdateOffsetsInTransactionRequest_TopicOffsets? _defaultInstance;

  /// Topic path.
  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);

  /// Ranges of offsets by partitions.
  @$pb.TagNumber(2)
  $pb.PbList<UpdateOffsetsInTransactionRequest_TopicOffsets_PartitionOffsets>
      get partitions => $_getList(1);
}

/// Add offsets to transaction request sent from client to server.
class UpdateOffsetsInTransactionRequest extends $pb.GeneratedMessage {
  factory UpdateOffsetsInTransactionRequest({
    $3.OperationParams? operationParams,
    TransactionIdentity? tx,
    $core.Iterable<UpdateOffsetsInTransactionRequest_TopicOffsets>? topics,
    $core.String? consumer,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (tx != null) result.tx = tx;
    if (topics != null) result.topics.addAll(topics);
    if (consumer != null) result.consumer = consumer;
    return result;
  }

  UpdateOffsetsInTransactionRequest._();

  factory UpdateOffsetsInTransactionRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateOffsetsInTransactionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateOffsetsInTransactionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $3.OperationParams.create)
    ..aOM<TransactionIdentity>(2, _omitFieldNames ? '' : 'tx',
        subBuilder: TransactionIdentity.create)
    ..pPM<UpdateOffsetsInTransactionRequest_TopicOffsets>(
        3, _omitFieldNames ? '' : 'topics',
        subBuilder: UpdateOffsetsInTransactionRequest_TopicOffsets.create)
    ..aOS(4, _omitFieldNames ? '' : 'consumer')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateOffsetsInTransactionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateOffsetsInTransactionRequest copyWith(
          void Function(UpdateOffsetsInTransactionRequest) updates) =>
      super.copyWith((message) =>
              updates(message as UpdateOffsetsInTransactionRequest))
          as UpdateOffsetsInTransactionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateOffsetsInTransactionRequest create() =>
      UpdateOffsetsInTransactionRequest._();
  @$core.override
  UpdateOffsetsInTransactionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateOffsetsInTransactionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateOffsetsInTransactionRequest>(
          create);
  static UpdateOffsetsInTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $3.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($3.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.OperationParams ensureOperationParams() => $_ensure(0);

  @$pb.TagNumber(2)
  TransactionIdentity get tx => $_getN(1);
  @$pb.TagNumber(2)
  set tx(TransactionIdentity value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTx() => $_has(1);
  @$pb.TagNumber(2)
  void clearTx() => $_clearField(2);
  @$pb.TagNumber(2)
  TransactionIdentity ensureTx() => $_ensure(1);

  /// Ranges of offsets by topics.
  @$pb.TagNumber(3)
  $pb.PbList<UpdateOffsetsInTransactionRequest_TopicOffsets> get topics =>
      $_getList(2);

  @$pb.TagNumber(4)
  $core.String get consumer => $_getSZ(3);
  @$pb.TagNumber(4)
  set consumer($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasConsumer() => $_has(3);
  @$pb.TagNumber(4)
  void clearConsumer() => $_clearField(4);
}

/// Add offsets to transaction response sent from server to client.
class UpdateOffsetsInTransactionResponse extends $pb.GeneratedMessage {
  factory UpdateOffsetsInTransactionResponse({
    $3.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  UpdateOffsetsInTransactionResponse._();

  factory UpdateOffsetsInTransactionResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateOffsetsInTransactionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateOffsetsInTransactionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $3.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateOffsetsInTransactionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateOffsetsInTransactionResponse copyWith(
          void Function(UpdateOffsetsInTransactionResponse) updates) =>
      super.copyWith((message) =>
              updates(message as UpdateOffsetsInTransactionResponse))
          as UpdateOffsetsInTransactionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateOffsetsInTransactionResponse create() =>
      UpdateOffsetsInTransactionResponse._();
  @$core.override
  UpdateOffsetsInTransactionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateOffsetsInTransactionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateOffsetsInTransactionResponse>(
          create);
  static UpdateOffsetsInTransactionResponse? _defaultInstance;

  /// Result of request will be inside operation.
  @$pb.TagNumber(1)
  $3.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($3.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Operation ensureOperation() => $_ensure(0);
}

/// Add offsets to transaction result message that will be inside UpdateOffsetsInTransactionResponse.operation.
class UpdateOffsetsInTransactionResult extends $pb.GeneratedMessage {
  factory UpdateOffsetsInTransactionResult() => create();

  UpdateOffsetsInTransactionResult._();

  factory UpdateOffsetsInTransactionResult.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateOffsetsInTransactionResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateOffsetsInTransactionResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateOffsetsInTransactionResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateOffsetsInTransactionResult copyWith(
          void Function(UpdateOffsetsInTransactionResult) updates) =>
      super.copyWith(
              (message) => updates(message as UpdateOffsetsInTransactionResult))
          as UpdateOffsetsInTransactionResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateOffsetsInTransactionResult create() =>
      UpdateOffsetsInTransactionResult._();
  @$core.override
  UpdateOffsetsInTransactionResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateOffsetsInTransactionResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateOffsetsInTransactionResult>(
          create);
  static UpdateOffsetsInTransactionResult? _defaultInstance;
}

/// Commit offset request sent from client to server.
class CommitOffsetRequest extends $pb.GeneratedMessage {
  factory CommitOffsetRequest({
    $3.OperationParams? operationParams,
    $core.String? path,
    $fixnum.Int64? partitionId,
    $core.String? consumer,
    $fixnum.Int64? offset,
    $core.String? readSessionId,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (path != null) result.path = path;
    if (partitionId != null) result.partitionId = partitionId;
    if (consumer != null) result.consumer = consumer;
    if (offset != null) result.offset = offset;
    if (readSessionId != null) result.readSessionId = readSessionId;
    return result;
  }

  CommitOffsetRequest._();

  factory CommitOffsetRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommitOffsetRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommitOffsetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $3.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aInt64(3, _omitFieldNames ? '' : 'partitionId')
    ..aOS(4, _omitFieldNames ? '' : 'consumer')
    ..aInt64(5, _omitFieldNames ? '' : 'offset')
    ..aOS(6, _omitFieldNames ? '' : 'readSessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitOffsetRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitOffsetRequest copyWith(void Function(CommitOffsetRequest) updates) =>
      super.copyWith((message) => updates(message as CommitOffsetRequest))
          as CommitOffsetRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommitOffsetRequest create() => CommitOffsetRequest._();
  @$core.override
  CommitOffsetRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CommitOffsetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommitOffsetRequest>(create);
  static CommitOffsetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $3.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($3.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.OperationParams ensureOperationParams() => $_ensure(0);

  /// Topic path of partition.
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  /// Partition identifier.
  @$pb.TagNumber(3)
  $fixnum.Int64 get partitionId => $_getI64(2);
  @$pb.TagNumber(3)
  set partitionId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPartitionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartitionId() => $_clearField(3);

  /// Path of consumer.
  @$pb.TagNumber(4)
  $core.String get consumer => $_getSZ(3);
  @$pb.TagNumber(4)
  set consumer($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasConsumer() => $_has(3);
  @$pb.TagNumber(4)
  void clearConsumer() => $_clearField(4);

  /// Processed offset.
  @$pb.TagNumber(5)
  $fixnum.Int64 get offset => $_getI64(4);
  @$pb.TagNumber(5)
  set offset($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOffset() => $_has(4);
  @$pb.TagNumber(5)
  void clearOffset() => $_clearField(5);

  /// Read session identifier from StreamRead RPC.
  @$pb.TagNumber(6)
  $core.String get readSessionId => $_getSZ(5);
  @$pb.TagNumber(6)
  set readSessionId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasReadSessionId() => $_has(5);
  @$pb.TagNumber(6)
  void clearReadSessionId() => $_clearField(6);
}

/// Commit offset response sent from server to client.
class CommitOffsetResponse extends $pb.GeneratedMessage {
  factory CommitOffsetResponse({
    $3.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  CommitOffsetResponse._();

  factory CommitOffsetResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommitOffsetResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommitOffsetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $3.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitOffsetResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitOffsetResponse copyWith(void Function(CommitOffsetResponse) updates) =>
      super.copyWith((message) => updates(message as CommitOffsetResponse))
          as CommitOffsetResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommitOffsetResponse create() => CommitOffsetResponse._();
  @$core.override
  CommitOffsetResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CommitOffsetResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommitOffsetResponse>(create);
  static CommitOffsetResponse? _defaultInstance;

  /// Result of request will be inside operation.
  @$pb.TagNumber(1)
  $3.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($3.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Operation ensureOperation() => $_ensure(0);
}

/// Commit offset result message inside CommitOffsetResponse.operation.
class CommitOffsetResult extends $pb.GeneratedMessage {
  factory CommitOffsetResult() => create();

  CommitOffsetResult._();

  factory CommitOffsetResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommitOffsetResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommitOffsetResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitOffsetResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitOffsetResult copyWith(void Function(CommitOffsetResult) updates) =>
      super.copyWith((message) => updates(message as CommitOffsetResult))
          as CommitOffsetResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommitOffsetResult create() => CommitOffsetResult._();
  @$core.override
  CommitOffsetResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CommitOffsetResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommitOffsetResult>(create);
  static CommitOffsetResult? _defaultInstance;
}

/// message representing statistics by several windows
class MultipleWindowsStat extends $pb.GeneratedMessage {
  factory MultipleWindowsStat({
    $fixnum.Int64? perMinute,
    $fixnum.Int64? perHour,
    $fixnum.Int64? perDay,
  }) {
    final result = create();
    if (perMinute != null) result.perMinute = perMinute;
    if (perHour != null) result.perHour = perHour;
    if (perDay != null) result.perDay = perDay;
    return result;
  }

  MultipleWindowsStat._();

  factory MultipleWindowsStat.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MultipleWindowsStat.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MultipleWindowsStat',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'perMinute')
    ..aInt64(2, _omitFieldNames ? '' : 'perHour')
    ..aInt64(3, _omitFieldNames ? '' : 'perDay')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultipleWindowsStat clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultipleWindowsStat copyWith(void Function(MultipleWindowsStat) updates) =>
      super.copyWith((message) => updates(message as MultipleWindowsStat))
          as MultipleWindowsStat;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultipleWindowsStat create() => MultipleWindowsStat._();
  @$core.override
  MultipleWindowsStat createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MultipleWindowsStat getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MultipleWindowsStat>(create);
  static MultipleWindowsStat? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get perMinute => $_getI64(0);
  @$pb.TagNumber(1)
  set perMinute($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPerMinute() => $_has(0);
  @$pb.TagNumber(1)
  void clearPerMinute() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get perHour => $_getI64(1);
  @$pb.TagNumber(2)
  set perHour($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPerHour() => $_has(1);
  @$pb.TagNumber(2)
  void clearPerHour() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get perDay => $_getI64(2);
  @$pb.TagNumber(3)
  set perDay($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPerDay() => $_has(2);
  @$pb.TagNumber(3)
  void clearPerDay() => $_clearField(3);
}

class Consumer_ConsumerStats extends $pb.GeneratedMessage {
  factory Consumer_ConsumerStats({
    $1.Timestamp? minPartitionsLastReadTime,
    $2.Duration? maxReadTimeLag,
    $2.Duration? maxWriteTimeLag,
    MultipleWindowsStat? bytesRead,
    $2.Duration? maxCommittedTimeLag,
  }) {
    final result = create();
    if (minPartitionsLastReadTime != null)
      result.minPartitionsLastReadTime = minPartitionsLastReadTime;
    if (maxReadTimeLag != null) result.maxReadTimeLag = maxReadTimeLag;
    if (maxWriteTimeLag != null) result.maxWriteTimeLag = maxWriteTimeLag;
    if (bytesRead != null) result.bytesRead = bytesRead;
    if (maxCommittedTimeLag != null)
      result.maxCommittedTimeLag = maxCommittedTimeLag;
    return result;
  }

  Consumer_ConsumerStats._();

  factory Consumer_ConsumerStats.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Consumer_ConsumerStats.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Consumer.ConsumerStats',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$1.Timestamp>(1, _omitFieldNames ? '' : 'minPartitionsLastReadTime',
        subBuilder: $1.Timestamp.create)
    ..aOM<$2.Duration>(2, _omitFieldNames ? '' : 'maxReadTimeLag',
        subBuilder: $2.Duration.create)
    ..aOM<$2.Duration>(3, _omitFieldNames ? '' : 'maxWriteTimeLag',
        subBuilder: $2.Duration.create)
    ..aOM<MultipleWindowsStat>(4, _omitFieldNames ? '' : 'bytesRead',
        subBuilder: MultipleWindowsStat.create)
    ..aOM<$2.Duration>(5, _omitFieldNames ? '' : 'maxCommittedTimeLag',
        subBuilder: $2.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Consumer_ConsumerStats clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Consumer_ConsumerStats copyWith(
          void Function(Consumer_ConsumerStats) updates) =>
      super.copyWith((message) => updates(message as Consumer_ConsumerStats))
          as Consumer_ConsumerStats;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Consumer_ConsumerStats create() => Consumer_ConsumerStats._();
  @$core.override
  Consumer_ConsumerStats createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Consumer_ConsumerStats getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Consumer_ConsumerStats>(create);
  static Consumer_ConsumerStats? _defaultInstance;

  /// Minimal timestamp of last read from partitions.
  @$pb.TagNumber(1)
  $1.Timestamp get minPartitionsLastReadTime => $_getN(0);
  @$pb.TagNumber(1)
  set minPartitionsLastReadTime($1.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMinPartitionsLastReadTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinPartitionsLastReadTime() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Timestamp ensureMinPartitionsLastReadTime() => $_ensure(0);

  /// Maximum of differences between timestamp of read and write timestamp for all messages, read during last minute.
  @$pb.TagNumber(2)
  $2.Duration get maxReadTimeLag => $_getN(1);
  @$pb.TagNumber(2)
  set maxReadTimeLag($2.Duration value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxReadTimeLag() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxReadTimeLag() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.Duration ensureMaxReadTimeLag() => $_ensure(1);

  /// Maximum of differences between write timestamp and create timestamp for all messages, read during last minute.
  @$pb.TagNumber(3)
  $2.Duration get maxWriteTimeLag => $_getN(2);
  @$pb.TagNumber(3)
  set maxWriteTimeLag($2.Duration value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxWriteTimeLag() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxWriteTimeLag() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.Duration ensureMaxWriteTimeLag() => $_ensure(2);

  /// Bytes read statistics.
  @$pb.TagNumber(4)
  MultipleWindowsStat get bytesRead => $_getN(3);
  @$pb.TagNumber(4)
  set bytesRead(MultipleWindowsStat value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasBytesRead() => $_has(3);
  @$pb.TagNumber(4)
  void clearBytesRead() => $_clearField(4);
  @$pb.TagNumber(4)
  MultipleWindowsStat ensureBytesRead() => $_ensure(3);

  /// The difference between the write timestamp of the last commited message and the current time.
  @$pb.TagNumber(5)
  $2.Duration get maxCommittedTimeLag => $_getN(4);
  @$pb.TagNumber(5)
  set maxCommittedTimeLag($2.Duration value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasMaxCommittedTimeLag() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxCommittedTimeLag() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.Duration ensureMaxCommittedTimeLag() => $_ensure(4);
}

/// Consumer description.
class Consumer extends $pb.GeneratedMessage {
  factory Consumer({
    $core.String? name,
    $core.bool? important,
    $1.Timestamp? readFrom,
    SupportedCodecs? supportedCodecs,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? attributes,
    Consumer_ConsumerStats? consumerStats,
    $2.Duration? availabilityPeriod,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (important != null) result.important = important;
    if (readFrom != null) result.readFrom = readFrom;
    if (supportedCodecs != null) result.supportedCodecs = supportedCodecs;
    if (attributes != null) result.attributes.addEntries(attributes);
    if (consumerStats != null) result.consumerStats = consumerStats;
    if (availabilityPeriod != null)
      result.availabilityPeriod = availabilityPeriod;
    return result;
  }

  Consumer._();

  factory Consumer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Consumer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Consumer',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'important')
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'readFrom',
        subBuilder: $1.Timestamp.create)
    ..aOM<SupportedCodecs>(5, _omitFieldNames ? '' : 'supportedCodecs',
        subBuilder: SupportedCodecs.create)
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'attributes',
        entryClassName: 'Consumer.AttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Topic'))
    ..aOM<Consumer_ConsumerStats>(7, _omitFieldNames ? '' : 'consumerStats',
        subBuilder: Consumer_ConsumerStats.create)
    ..aOM<$2.Duration>(8, _omitFieldNames ? '' : 'availabilityPeriod',
        subBuilder: $2.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Consumer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Consumer copyWith(void Function(Consumer) updates) =>
      super.copyWith((message) => updates(message as Consumer)) as Consumer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Consumer create() => Consumer._();
  @$core.override
  Consumer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Consumer getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Consumer>(create);
  static Consumer? _defaultInstance;

  /// Must have valid not empty name as a key.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Consumer may be marked as 'important'. It means messages for this consumer will never expire due to retention.
  /// User should take care that such consumer never stalls, to prevent running out of disk space.
  /// Flag that this consumer is important.
  @$pb.TagNumber(2)
  $core.bool get important => $_getBF(1);
  @$pb.TagNumber(2)
  set important($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImportant() => $_has(1);
  @$pb.TagNumber(2)
  void clearImportant() => $_clearField(2);

  /// All messages with smaller server written_at timestamp will be skipped.
  @$pb.TagNumber(3)
  $1.Timestamp get readFrom => $_getN(2);
  @$pb.TagNumber(3)
  set readFrom($1.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasReadFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearReadFrom() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureReadFrom() => $_ensure(2);

  /// List of supported codecs by this consumer.
  /// supported_codecs on topic must be contained inside this list.
  /// If empty, codec compatibility check for the consumer is disabled.
  @$pb.TagNumber(5)
  SupportedCodecs get supportedCodecs => $_getN(3);
  @$pb.TagNumber(5)
  set supportedCodecs(SupportedCodecs value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSupportedCodecs() => $_has(3);
  @$pb.TagNumber(5)
  void clearSupportedCodecs() => $_clearField(5);
  @$pb.TagNumber(5)
  SupportedCodecs ensureSupportedCodecs() => $_ensure(3);

  /// Attributes of consumer
  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $core.String> get attributes => $_getMap(4);

  /// Filled only when requested statistics in Describe*Request.
  @$pb.TagNumber(7)
  Consumer_ConsumerStats get consumerStats => $_getN(5);
  @$pb.TagNumber(7)
  set consumerStats(Consumer_ConsumerStats value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasConsumerStats() => $_has(5);
  @$pb.TagNumber(7)
  void clearConsumerStats() => $_clearField(7);
  @$pb.TagNumber(7)
  Consumer_ConsumerStats ensureConsumerStats() => $_ensure(5);

  /// Message for this consumer will not expire due to retention for at least `availability_period` if they aren't commited.
  @$pb.TagNumber(8)
  $2.Duration get availabilityPeriod => $_getN(6);
  @$pb.TagNumber(8)
  set availabilityPeriod($2.Duration value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAvailabilityPeriod() => $_has(6);
  @$pb.TagNumber(8)
  void clearAvailabilityPeriod() => $_clearField(8);
  @$pb.TagNumber(8)
  $2.Duration ensureAvailabilityPeriod() => $_ensure(6);
}

enum AlterConsumer_AvailabilityPeriodAction {
  setAvailabilityPeriod,
  resetAvailabilityPeriod,
  notSet
}

/// Consumer alter description.
class AlterConsumer extends $pb.GeneratedMessage {
  factory AlterConsumer({
    $core.String? name,
    $core.bool? setImportant,
    $1.Timestamp? setReadFrom,
    SupportedCodecs? setSupportedCodecs,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? alterAttributes,
    $2.Duration? setAvailabilityPeriod,
    $4.Empty? resetAvailabilityPeriod,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (setImportant != null) result.setImportant = setImportant;
    if (setReadFrom != null) result.setReadFrom = setReadFrom;
    if (setSupportedCodecs != null)
      result.setSupportedCodecs = setSupportedCodecs;
    if (alterAttributes != null)
      result.alterAttributes.addEntries(alterAttributes);
    if (setAvailabilityPeriod != null)
      result.setAvailabilityPeriod = setAvailabilityPeriod;
    if (resetAvailabilityPeriod != null)
      result.resetAvailabilityPeriod = resetAvailabilityPeriod;
    return result;
  }

  AlterConsumer._();

  factory AlterConsumer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlterConsumer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AlterConsumer_AvailabilityPeriodAction>
      _AlterConsumer_AvailabilityPeriodActionByTag = {
    7: AlterConsumer_AvailabilityPeriodAction.setAvailabilityPeriod,
    8: AlterConsumer_AvailabilityPeriodAction.resetAvailabilityPeriod,
    0: AlterConsumer_AvailabilityPeriodAction.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlterConsumer',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..oo(0, [7, 8])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'setImportant')
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'setReadFrom',
        subBuilder: $1.Timestamp.create)
    ..aOM<SupportedCodecs>(5, _omitFieldNames ? '' : 'setSupportedCodecs',
        subBuilder: SupportedCodecs.create)
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'alterAttributes',
        entryClassName: 'AlterConsumer.AlterAttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Topic'))
    ..aOM<$2.Duration>(7, _omitFieldNames ? '' : 'setAvailabilityPeriod',
        subBuilder: $2.Duration.create)
    ..aOM<$4.Empty>(8, _omitFieldNames ? '' : 'resetAvailabilityPeriod',
        subBuilder: $4.Empty.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterConsumer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterConsumer copyWith(void Function(AlterConsumer) updates) =>
      super.copyWith((message) => updates(message as AlterConsumer))
          as AlterConsumer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlterConsumer create() => AlterConsumer._();
  @$core.override
  AlterConsumer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlterConsumer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlterConsumer>(create);
  static AlterConsumer? _defaultInstance;

  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  AlterConsumer_AvailabilityPeriodAction whichAvailabilityPeriodAction() =>
      _AlterConsumer_AvailabilityPeriodActionByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  void clearAvailabilityPeriodAction() => $_clearField($_whichOneof(0));

  /// Must have valid not empty name as a key.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Consumer may be marked as 'important'. It means messages for this consumer will never expire due to retention.
  /// User should take care that such consumer never stalls, to prevent running out of disk space.
  /// Flag that this consumer is important.
  @$pb.TagNumber(2)
  $core.bool get setImportant => $_getBF(1);
  @$pb.TagNumber(2)
  set setImportant($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSetImportant() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetImportant() => $_clearField(2);

  /// All messages with smaller server written_at timestamp will be skipped.
  @$pb.TagNumber(3)
  $1.Timestamp get setReadFrom => $_getN(2);
  @$pb.TagNumber(3)
  set setReadFrom($1.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSetReadFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetReadFrom() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureSetReadFrom() => $_ensure(2);

  /// List of supported codecs by this consumer.
  /// supported_codecs on topic must be contained inside this list.
  /// If empty, codec compatibility check for the consumer is disabled.
  @$pb.TagNumber(5)
  SupportedCodecs get setSupportedCodecs => $_getN(3);
  @$pb.TagNumber(5)
  set setSupportedCodecs(SupportedCodecs value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSetSupportedCodecs() => $_has(3);
  @$pb.TagNumber(5)
  void clearSetSupportedCodecs() => $_clearField(5);
  @$pb.TagNumber(5)
  SupportedCodecs ensureSetSupportedCodecs() => $_ensure(3);

  /// User and server attributes of consumer. Server attributes starts from "_" and will be validated by server.
  /// Leave the value blank to drop an attribute.
  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $core.String> get alterAttributes => $_getMap(4);

  @$pb.TagNumber(7)
  $2.Duration get setAvailabilityPeriod => $_getN(5);
  @$pb.TagNumber(7)
  set setAvailabilityPeriod($2.Duration value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSetAvailabilityPeriod() => $_has(5);
  @$pb.TagNumber(7)
  void clearSetAvailabilityPeriod() => $_clearField(7);
  @$pb.TagNumber(7)
  $2.Duration ensureSetAvailabilityPeriod() => $_ensure(5);

  @$pb.TagNumber(8)
  $4.Empty get resetAvailabilityPeriod => $_getN(6);
  @$pb.TagNumber(8)
  set resetAvailabilityPeriod($4.Empty value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasResetAvailabilityPeriod() => $_has(6);
  @$pb.TagNumber(8)
  void clearResetAvailabilityPeriod() => $_clearField(8);
  @$pb.TagNumber(8)
  $4.Empty ensureResetAvailabilityPeriod() => $_ensure(6);
}

/// Partitioning settings for topic.
class PartitioningSettings extends $pb.GeneratedMessage {
  factory PartitioningSettings({
    $fixnum.Int64? minActivePartitions,
    @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? partitionCountLimit,
    $fixnum.Int64? maxActivePartitions,
    AutoPartitioningSettings? autoPartitioningSettings,
  }) {
    final result = create();
    if (minActivePartitions != null)
      result.minActivePartitions = minActivePartitions;
    if (partitionCountLimit != null)
      result.partitionCountLimit = partitionCountLimit;
    if (maxActivePartitions != null)
      result.maxActivePartitions = maxActivePartitions;
    if (autoPartitioningSettings != null)
      result.autoPartitioningSettings = autoPartitioningSettings;
    return result;
  }

  PartitioningSettings._();

  factory PartitioningSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PartitioningSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PartitioningSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'minActivePartitions')
    ..aInt64(2, _omitFieldNames ? '' : 'partitionCountLimit')
    ..aInt64(3, _omitFieldNames ? '' : 'maxActivePartitions')
    ..aOM<AutoPartitioningSettings>(
        4, _omitFieldNames ? '' : 'autoPartitioningSettings',
        subBuilder: AutoPartitioningSettings.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitioningSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitioningSettings copyWith(void Function(PartitioningSettings) updates) =>
      super.copyWith((message) => updates(message as PartitioningSettings))
          as PartitioningSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartitioningSettings create() => PartitioningSettings._();
  @$core.override
  PartitioningSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PartitioningSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PartitioningSettings>(create);
  static PartitioningSettings? _defaultInstance;

  /// Auto merge would stop working when the partitions count reaches min_active_partitions
  /// Zero value means default - 1.
  @$pb.TagNumber(1)
  $fixnum.Int64 get minActivePartitions => $_getI64(0);
  @$pb.TagNumber(1)
  set minActivePartitions($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMinActivePartitions() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinActivePartitions() => $_clearField(1);

  /// Limit for total partition count, including active (open for write) and read-only partitions.
  /// Zero value means default - 100.
  /// Use max_active_partitions
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $fixnum.Int64 get partitionCountLimit => $_getI64(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set partitionCountLimit($fixnum.Int64 value) => $_setInt64(1, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasPartitionCountLimit() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearPartitionCountLimit() => $_clearField(2);

  /// Auto split would stop working when the partitions count reaches max_active_partitions
  /// Zero value means default - 1.
  @$pb.TagNumber(3)
  $fixnum.Int64 get maxActivePartitions => $_getI64(2);
  @$pb.TagNumber(3)
  set maxActivePartitions($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxActivePartitions() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxActivePartitions() => $_clearField(3);

  /// Settings for the partitions count auto partitioning.
  @$pb.TagNumber(4)
  AutoPartitioningSettings get autoPartitioningSettings => $_getN(3);
  @$pb.TagNumber(4)
  set autoPartitioningSettings(AutoPartitioningSettings value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAutoPartitioningSettings() => $_has(3);
  @$pb.TagNumber(4)
  void clearAutoPartitioningSettings() => $_clearField(4);
  @$pb.TagNumber(4)
  AutoPartitioningSettings ensureAutoPartitioningSettings() => $_ensure(3);
}

class AutoPartitioningSettings extends $pb.GeneratedMessage {
  factory AutoPartitioningSettings({
    AutoPartitioningStrategy? strategy,
    AutoPartitioningWriteSpeedStrategy? partitionWriteSpeed,
  }) {
    final result = create();
    if (strategy != null) result.strategy = strategy;
    if (partitionWriteSpeed != null)
      result.partitionWriteSpeed = partitionWriteSpeed;
    return result;
  }

  AutoPartitioningSettings._();

  factory AutoPartitioningSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AutoPartitioningSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AutoPartitioningSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aE<AutoPartitioningStrategy>(1, _omitFieldNames ? '' : 'strategy',
        enumValues: AutoPartitioningStrategy.values)
    ..aOM<AutoPartitioningWriteSpeedStrategy>(
        2, _omitFieldNames ? '' : 'partitionWriteSpeed',
        subBuilder: AutoPartitioningWriteSpeedStrategy.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AutoPartitioningSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AutoPartitioningSettings copyWith(
          void Function(AutoPartitioningSettings) updates) =>
      super.copyWith((message) => updates(message as AutoPartitioningSettings))
          as AutoPartitioningSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AutoPartitioningSettings create() => AutoPartitioningSettings._();
  @$core.override
  AutoPartitioningSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AutoPartitioningSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AutoPartitioningSettings>(create);
  static AutoPartitioningSettings? _defaultInstance;

  /// Strategy of auto partitioning.
  @$pb.TagNumber(1)
  AutoPartitioningStrategy get strategy => $_getN(0);
  @$pb.TagNumber(1)
  set strategy(AutoPartitioningStrategy value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStrategy() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrategy() => $_clearField(1);

  /// Partition write speed auto partitioning options.
  @$pb.TagNumber(2)
  AutoPartitioningWriteSpeedStrategy get partitionWriteSpeed => $_getN(1);
  @$pb.TagNumber(2)
  set partitionWriteSpeed(AutoPartitioningWriteSpeedStrategy value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPartitionWriteSpeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartitionWriteSpeed() => $_clearField(2);
  @$pb.TagNumber(2)
  AutoPartitioningWriteSpeedStrategy ensurePartitionWriteSpeed() => $_ensure(1);
}

class AutoPartitioningWriteSpeedStrategy extends $pb.GeneratedMessage {
  factory AutoPartitioningWriteSpeedStrategy({
    $2.Duration? stabilizationWindow,
    $core.int? upUtilizationPercent,
    $core.int? downUtilizationPercent,
  }) {
    final result = create();
    if (stabilizationWindow != null)
      result.stabilizationWindow = stabilizationWindow;
    if (upUtilizationPercent != null)
      result.upUtilizationPercent = upUtilizationPercent;
    if (downUtilizationPercent != null)
      result.downUtilizationPercent = downUtilizationPercent;
    return result;
  }

  AutoPartitioningWriteSpeedStrategy._();

  factory AutoPartitioningWriteSpeedStrategy.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AutoPartitioningWriteSpeedStrategy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AutoPartitioningWriteSpeedStrategy',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$2.Duration>(1, _omitFieldNames ? '' : 'stabilizationWindow',
        subBuilder: $2.Duration.create)
    ..aI(2, _omitFieldNames ? '' : 'upUtilizationPercent')
    ..aI(3, _omitFieldNames ? '' : 'downUtilizationPercent')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AutoPartitioningWriteSpeedStrategy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AutoPartitioningWriteSpeedStrategy copyWith(
          void Function(AutoPartitioningWriteSpeedStrategy) updates) =>
      super.copyWith((message) =>
              updates(message as AutoPartitioningWriteSpeedStrategy))
          as AutoPartitioningWriteSpeedStrategy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AutoPartitioningWriteSpeedStrategy create() =>
      AutoPartitioningWriteSpeedStrategy._();
  @$core.override
  AutoPartitioningWriteSpeedStrategy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AutoPartitioningWriteSpeedStrategy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AutoPartitioningWriteSpeedStrategy>(
          create);
  static AutoPartitioningWriteSpeedStrategy? _defaultInstance;

  /// Zero value means default - 300.
  @$pb.TagNumber(1)
  $2.Duration get stabilizationWindow => $_getN(0);
  @$pb.TagNumber(1)
  set stabilizationWindow($2.Duration value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStabilizationWindow() => $_has(0);
  @$pb.TagNumber(1)
  void clearStabilizationWindow() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Duration ensureStabilizationWindow() => $_ensure(0);

  /// Zero value means default - 90.
  @$pb.TagNumber(2)
  $core.int get upUtilizationPercent => $_getIZ(1);
  @$pb.TagNumber(2)
  set upUtilizationPercent($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUpUtilizationPercent() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpUtilizationPercent() => $_clearField(2);

  /// Zero value means default - 30.
  @$pb.TagNumber(3)
  $core.int get downUtilizationPercent => $_getIZ(2);
  @$pb.TagNumber(3)
  set downUtilizationPercent($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDownUtilizationPercent() => $_has(2);
  @$pb.TagNumber(3)
  void clearDownUtilizationPercent() => $_clearField(3);
}

/// Partitioning settings for topic.
class AlterPartitioningSettings extends $pb.GeneratedMessage {
  factory AlterPartitioningSettings({
    $fixnum.Int64? setMinActivePartitions,
    @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? setPartitionCountLimit,
    $fixnum.Int64? setMaxActivePartitions,
    AlterAutoPartitioningSettings? alterAutoPartitioningSettings,
  }) {
    final result = create();
    if (setMinActivePartitions != null)
      result.setMinActivePartitions = setMinActivePartitions;
    if (setPartitionCountLimit != null)
      result.setPartitionCountLimit = setPartitionCountLimit;
    if (setMaxActivePartitions != null)
      result.setMaxActivePartitions = setMaxActivePartitions;
    if (alterAutoPartitioningSettings != null)
      result.alterAutoPartitioningSettings = alterAutoPartitioningSettings;
    return result;
  }

  AlterPartitioningSettings._();

  factory AlterPartitioningSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlterPartitioningSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlterPartitioningSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'setMinActivePartitions')
    ..aInt64(2, _omitFieldNames ? '' : 'setPartitionCountLimit')
    ..aInt64(3, _omitFieldNames ? '' : 'setMaxActivePartitions')
    ..aOM<AlterAutoPartitioningSettings>(
        4, _omitFieldNames ? '' : 'alterAutoPartitioningSettings',
        subBuilder: AlterAutoPartitioningSettings.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterPartitioningSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterPartitioningSettings copyWith(
          void Function(AlterPartitioningSettings) updates) =>
      super.copyWith((message) => updates(message as AlterPartitioningSettings))
          as AlterPartitioningSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlterPartitioningSettings create() => AlterPartitioningSettings._();
  @$core.override
  AlterPartitioningSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlterPartitioningSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlterPartitioningSettings>(create);
  static AlterPartitioningSettings? _defaultInstance;

  /// Minimum partition count auto merge would stop working at.
  /// Zero value means default - 1.
  @$pb.TagNumber(1)
  $fixnum.Int64 get setMinActivePartitions => $_getI64(0);
  @$pb.TagNumber(1)
  set setMinActivePartitions($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSetMinActivePartitions() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetMinActivePartitions() => $_clearField(1);

  /// Limit for total partition count, including active (open for write) and read-only partitions.
  /// Zero value means default - 100.
  /// Use set_max_active_partitions
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $fixnum.Int64 get setPartitionCountLimit => $_getI64(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set setPartitionCountLimit($fixnum.Int64 value) => $_setInt64(1, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasSetPartitionCountLimit() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearSetPartitionCountLimit() => $_clearField(2);

  /// Maximum partition count auto merge would stop working at.
  /// Zero value means default - 1.
  @$pb.TagNumber(3)
  $fixnum.Int64 get setMaxActivePartitions => $_getI64(2);
  @$pb.TagNumber(3)
  set setMaxActivePartitions($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSetMaxActivePartitions() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetMaxActivePartitions() => $_clearField(3);

  /// Settings for auto partitioning the partition number
  @$pb.TagNumber(4)
  AlterAutoPartitioningSettings get alterAutoPartitioningSettings => $_getN(3);
  @$pb.TagNumber(4)
  set alterAutoPartitioningSettings(AlterAutoPartitioningSettings value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAlterAutoPartitioningSettings() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlterAutoPartitioningSettings() => $_clearField(4);
  @$pb.TagNumber(4)
  AlterAutoPartitioningSettings ensureAlterAutoPartitioningSettings() =>
      $_ensure(3);
}

class AlterAutoPartitioningSettings extends $pb.GeneratedMessage {
  factory AlterAutoPartitioningSettings({
    AutoPartitioningStrategy? setStrategy,
    AlterAutoPartitioningWriteSpeedStrategy? setPartitionWriteSpeed,
  }) {
    final result = create();
    if (setStrategy != null) result.setStrategy = setStrategy;
    if (setPartitionWriteSpeed != null)
      result.setPartitionWriteSpeed = setPartitionWriteSpeed;
    return result;
  }

  AlterAutoPartitioningSettings._();

  factory AlterAutoPartitioningSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlterAutoPartitioningSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlterAutoPartitioningSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aE<AutoPartitioningStrategy>(1, _omitFieldNames ? '' : 'setStrategy',
        enumValues: AutoPartitioningStrategy.values)
    ..aOM<AlterAutoPartitioningWriteSpeedStrategy>(
        2, _omitFieldNames ? '' : 'setPartitionWriteSpeed',
        subBuilder: AlterAutoPartitioningWriteSpeedStrategy.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterAutoPartitioningSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterAutoPartitioningSettings copyWith(
          void Function(AlterAutoPartitioningSettings) updates) =>
      super.copyWith(
              (message) => updates(message as AlterAutoPartitioningSettings))
          as AlterAutoPartitioningSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlterAutoPartitioningSettings create() =>
      AlterAutoPartitioningSettings._();
  @$core.override
  AlterAutoPartitioningSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlterAutoPartitioningSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlterAutoPartitioningSettings>(create);
  static AlterAutoPartitioningSettings? _defaultInstance;

  /// Strategy of auto partitioning
  @$pb.TagNumber(1)
  AutoPartitioningStrategy get setStrategy => $_getN(0);
  @$pb.TagNumber(1)
  set setStrategy(AutoPartitioningStrategy value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSetStrategy() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetStrategy() => $_clearField(1);

  /// Auto partitioning write speed options.
  @$pb.TagNumber(2)
  AlterAutoPartitioningWriteSpeedStrategy get setPartitionWriteSpeed =>
      $_getN(1);
  @$pb.TagNumber(2)
  set setPartitionWriteSpeed(AlterAutoPartitioningWriteSpeedStrategy value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSetPartitionWriteSpeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetPartitionWriteSpeed() => $_clearField(2);
  @$pb.TagNumber(2)
  AlterAutoPartitioningWriteSpeedStrategy ensureSetPartitionWriteSpeed() =>
      $_ensure(1);
}

class AlterAutoPartitioningWriteSpeedStrategy extends $pb.GeneratedMessage {
  factory AlterAutoPartitioningWriteSpeedStrategy({
    $2.Duration? setStabilizationWindow,
    $core.int? setUpUtilizationPercent,
    $core.int? setDownUtilizationPercent,
  }) {
    final result = create();
    if (setStabilizationWindow != null)
      result.setStabilizationWindow = setStabilizationWindow;
    if (setUpUtilizationPercent != null)
      result.setUpUtilizationPercent = setUpUtilizationPercent;
    if (setDownUtilizationPercent != null)
      result.setDownUtilizationPercent = setDownUtilizationPercent;
    return result;
  }

  AlterAutoPartitioningWriteSpeedStrategy._();

  factory AlterAutoPartitioningWriteSpeedStrategy.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlterAutoPartitioningWriteSpeedStrategy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlterAutoPartitioningWriteSpeedStrategy',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$2.Duration>(1, _omitFieldNames ? '' : 'setStabilizationWindow',
        subBuilder: $2.Duration.create)
    ..aI(2, _omitFieldNames ? '' : 'setUpUtilizationPercent')
    ..aI(3, _omitFieldNames ? '' : 'setDownUtilizationPercent')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterAutoPartitioningWriteSpeedStrategy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterAutoPartitioningWriteSpeedStrategy copyWith(
          void Function(AlterAutoPartitioningWriteSpeedStrategy) updates) =>
      super.copyWith((message) =>
              updates(message as AlterAutoPartitioningWriteSpeedStrategy))
          as AlterAutoPartitioningWriteSpeedStrategy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlterAutoPartitioningWriteSpeedStrategy create() =>
      AlterAutoPartitioningWriteSpeedStrategy._();
  @$core.override
  AlterAutoPartitioningWriteSpeedStrategy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlterAutoPartitioningWriteSpeedStrategy getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AlterAutoPartitioningWriteSpeedStrategy>(create);
  static AlterAutoPartitioningWriteSpeedStrategy? _defaultInstance;

  /// The time of exceeding the threshold value, after which the partition will be
  /// auto partitioning.
  /// Zero value means default - 300.
  @$pb.TagNumber(1)
  $2.Duration get setStabilizationWindow => $_getN(0);
  @$pb.TagNumber(1)
  set setStabilizationWindow($2.Duration value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSetStabilizationWindow() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetStabilizationWindow() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Duration ensureSetStabilizationWindow() => $_ensure(0);

  /// The threshold value of the write speed to the partition as a percentage, when exceeded,
  /// the partition will be auto split.
  /// Zero value means default - 90.
  @$pb.TagNumber(2)
  $core.int get setUpUtilizationPercent => $_getIZ(1);
  @$pb.TagNumber(2)
  set setUpUtilizationPercent($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSetUpUtilizationPercent() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetUpUtilizationPercent() => $_clearField(2);

  /// The threshold value of the write speed to the partition as a percentage, if it is not reached,
  /// the partition will be auto merged.
  /// Zero value means default - 30.
  @$pb.TagNumber(3)
  $core.int get setDownUtilizationPercent => $_getIZ(2);
  @$pb.TagNumber(3)
  set setDownUtilizationPercent($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSetDownUtilizationPercent() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetDownUtilizationPercent() => $_clearField(3);
}

/// Create topic request sent from client to server.
class CreateTopicRequest extends $pb.GeneratedMessage {
  factory CreateTopicRequest({
    $3.OperationParams? operationParams,
    $core.String? path,
    PartitioningSettings? partitioningSettings,
    $2.Duration? retentionPeriod,
    $fixnum.Int64? retentionStorageMb,
    SupportedCodecs? supportedCodecs,
    $fixnum.Int64? partitionWriteSpeedBytesPerSecond,
    $fixnum.Int64? partitionWriteBurstBytes,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? attributes,
    $core.Iterable<Consumer>? consumers,
    MeteringMode? meteringMode,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (path != null) result.path = path;
    if (partitioningSettings != null)
      result.partitioningSettings = partitioningSettings;
    if (retentionPeriod != null) result.retentionPeriod = retentionPeriod;
    if (retentionStorageMb != null)
      result.retentionStorageMb = retentionStorageMb;
    if (supportedCodecs != null) result.supportedCodecs = supportedCodecs;
    if (partitionWriteSpeedBytesPerSecond != null)
      result.partitionWriteSpeedBytesPerSecond =
          partitionWriteSpeedBytesPerSecond;
    if (partitionWriteBurstBytes != null)
      result.partitionWriteBurstBytes = partitionWriteBurstBytes;
    if (attributes != null) result.attributes.addEntries(attributes);
    if (consumers != null) result.consumers.addAll(consumers);
    if (meteringMode != null) result.meteringMode = meteringMode;
    return result;
  }

  CreateTopicRequest._();

  factory CreateTopicRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateTopicRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateTopicRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $3.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aOM<PartitioningSettings>(
        3, _omitFieldNames ? '' : 'partitioningSettings',
        subBuilder: PartitioningSettings.create)
    ..aOM<$2.Duration>(4, _omitFieldNames ? '' : 'retentionPeriod',
        subBuilder: $2.Duration.create)
    ..aInt64(5, _omitFieldNames ? '' : 'retentionStorageMb')
    ..aOM<SupportedCodecs>(7, _omitFieldNames ? '' : 'supportedCodecs',
        subBuilder: SupportedCodecs.create)
    ..aInt64(8, _omitFieldNames ? '' : 'partitionWriteSpeedBytesPerSecond')
    ..aInt64(9, _omitFieldNames ? '' : 'partitionWriteBurstBytes')
    ..m<$core.String, $core.String>(10, _omitFieldNames ? '' : 'attributes',
        entryClassName: 'CreateTopicRequest.AttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Topic'))
    ..pPM<Consumer>(11, _omitFieldNames ? '' : 'consumers',
        subBuilder: Consumer.create)
    ..aE<MeteringMode>(12, _omitFieldNames ? '' : 'meteringMode',
        enumValues: MeteringMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTopicRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTopicRequest copyWith(void Function(CreateTopicRequest) updates) =>
      super.copyWith((message) => updates(message as CreateTopicRequest))
          as CreateTopicRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTopicRequest create() => CreateTopicRequest._();
  @$core.override
  CreateTopicRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateTopicRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateTopicRequest>(create);
  static CreateTopicRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $3.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($3.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.OperationParams ensureOperationParams() => $_ensure(0);

  /// Topic path.
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  /// Settings for partitioning
  @$pb.TagNumber(3)
  PartitioningSettings get partitioningSettings => $_getN(2);
  @$pb.TagNumber(3)
  set partitioningSettings(PartitioningSettings value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPartitioningSettings() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartitioningSettings() => $_clearField(3);
  @$pb.TagNumber(3)
  PartitioningSettings ensurePartitioningSettings() => $_ensure(2);

  /// Retention settings.
  /// Currently, only one limit may be set, so other should not be set.
  ///
  /// How long data in partition should be stored. Must be greater than 0 and less than limit for this database.
  /// Default limit - 36 hours.
  @$pb.TagNumber(4)
  $2.Duration get retentionPeriod => $_getN(3);
  @$pb.TagNumber(4)
  set retentionPeriod($2.Duration value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRetentionPeriod() => $_has(3);
  @$pb.TagNumber(4)
  void clearRetentionPeriod() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.Duration ensureRetentionPeriod() => $_ensure(3);

  /// How much data in partition should be stored. Must be greater than 0 and less than limit for this database.
  /// Zero value means infinite limit.
  @$pb.TagNumber(5)
  $fixnum.Int64 get retentionStorageMb => $_getI64(4);
  @$pb.TagNumber(5)
  set retentionStorageMb($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRetentionStorageMb() => $_has(4);
  @$pb.TagNumber(5)
  void clearRetentionStorageMb() => $_clearField(5);

  /// List of allowed codecs for writers.
  /// Writes with codec not from this list are forbidden.
  /// If empty, codec compatibility check for the topic is disabled.
  @$pb.TagNumber(7)
  SupportedCodecs get supportedCodecs => $_getN(5);
  @$pb.TagNumber(7)
  set supportedCodecs(SupportedCodecs value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSupportedCodecs() => $_has(5);
  @$pb.TagNumber(7)
  void clearSupportedCodecs() => $_clearField(7);
  @$pb.TagNumber(7)
  SupportedCodecs ensureSupportedCodecs() => $_ensure(5);

  /// Partition write speed in bytes per second. Must be less than database limit.
  /// Zero value means default limit: 1 MB per second.
  @$pb.TagNumber(8)
  $fixnum.Int64 get partitionWriteSpeedBytesPerSecond => $_getI64(6);
  @$pb.TagNumber(8)
  set partitionWriteSpeedBytesPerSecond($fixnum.Int64 value) =>
      $_setInt64(6, value);
  @$pb.TagNumber(8)
  $core.bool hasPartitionWriteSpeedBytesPerSecond() => $_has(6);
  @$pb.TagNumber(8)
  void clearPartitionWriteSpeedBytesPerSecond() => $_clearField(8);

  /// Burst size for write in partition, in bytes. Must be less than database limit.
  /// Zero value means default limit: 1 MB.
  @$pb.TagNumber(9)
  $fixnum.Int64 get partitionWriteBurstBytes => $_getI64(7);
  @$pb.TagNumber(9)
  set partitionWriteBurstBytes($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(9)
  $core.bool hasPartitionWriteBurstBytes() => $_has(7);
  @$pb.TagNumber(9)
  void clearPartitionWriteBurstBytes() => $_clearField(9);

  /// User and server attributes of topic. Server attributes starts from "_" and will be validated by server.
  @$pb.TagNumber(10)
  $pb.PbMap<$core.String, $core.String> get attributes => $_getMap(8);

  /// List of consumers for this topic.
  @$pb.TagNumber(11)
  $pb.PbList<Consumer> get consumers => $_getList(9);

  /// Metering mode for the topic in a serverless database.
  @$pb.TagNumber(12)
  MeteringMode get meteringMode => $_getN(10);
  @$pb.TagNumber(12)
  set meteringMode(MeteringMode value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasMeteringMode() => $_has(10);
  @$pb.TagNumber(12)
  void clearMeteringMode() => $_clearField(12);
}

/// Create topic response sent from server to client.
/// If topic is already exists then response status will be "ALREADY_EXISTS".
class CreateTopicResponse extends $pb.GeneratedMessage {
  factory CreateTopicResponse({
    $3.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  CreateTopicResponse._();

  factory CreateTopicResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateTopicResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateTopicResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $3.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTopicResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTopicResponse copyWith(void Function(CreateTopicResponse) updates) =>
      super.copyWith((message) => updates(message as CreateTopicResponse))
          as CreateTopicResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTopicResponse create() => CreateTopicResponse._();
  @$core.override
  CreateTopicResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateTopicResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateTopicResponse>(create);
  static CreateTopicResponse? _defaultInstance;

  /// Result of request will be inside operation.
  @$pb.TagNumber(1)
  $3.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($3.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Operation ensureOperation() => $_ensure(0);
}

/// Create topic result message that will be inside CreateTopicResponse.operation.
class CreateTopicResult extends $pb.GeneratedMessage {
  factory CreateTopicResult() => create();

  CreateTopicResult._();

  factory CreateTopicResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateTopicResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateTopicResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTopicResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTopicResult copyWith(void Function(CreateTopicResult) updates) =>
      super.copyWith((message) => updates(message as CreateTopicResult))
          as CreateTopicResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTopicResult create() => CreateTopicResult._();
  @$core.override
  CreateTopicResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateTopicResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateTopicResult>(create);
  static CreateTopicResult? _defaultInstance;
}

/// Topic partition location
class PartitionLocation extends $pb.GeneratedMessage {
  factory PartitionLocation({
    $core.int? nodeId,
    $fixnum.Int64? generation,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    if (generation != null) result.generation = generation;
    return result;
  }

  PartitionLocation._();

  factory PartitionLocation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PartitionLocation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PartitionLocation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'nodeId')
    ..aInt64(2, _omitFieldNames ? '' : 'generation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitionLocation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitionLocation copyWith(void Function(PartitionLocation) updates) =>
      super.copyWith((message) => updates(message as PartitionLocation))
          as PartitionLocation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartitionLocation create() => PartitionLocation._();
  @$core.override
  PartitionLocation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PartitionLocation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PartitionLocation>(create);
  static PartitionLocation? _defaultInstance;

  /// Node identificator.
  @$pb.TagNumber(1)
  $core.int get nodeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set nodeId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  /// Partition generation.
  @$pb.TagNumber(2)
  $fixnum.Int64 get generation => $_getI64(1);
  @$pb.TagNumber(2)
  set generation($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGeneration() => $_has(1);
  @$pb.TagNumber(2)
  void clearGeneration() => $_clearField(2);
}

/// Describe topic request sent from client to server.
class DescribeTopicRequest extends $pb.GeneratedMessage {
  factory DescribeTopicRequest({
    $3.OperationParams? operationParams,
    $core.String? path,
    $core.bool? includeStats,
    $core.bool? includeLocation,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (path != null) result.path = path;
    if (includeStats != null) result.includeStats = includeStats;
    if (includeLocation != null) result.includeLocation = includeLocation;
    return result;
  }

  DescribeTopicRequest._();

  factory DescribeTopicRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeTopicRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeTopicRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $3.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aOB(3, _omitFieldNames ? '' : 'includeStats')
    ..aOB(4, _omitFieldNames ? '' : 'includeLocation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTopicRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTopicRequest copyWith(void Function(DescribeTopicRequest) updates) =>
      super.copyWith((message) => updates(message as DescribeTopicRequest))
          as DescribeTopicRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeTopicRequest create() => DescribeTopicRequest._();
  @$core.override
  DescribeTopicRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeTopicRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeTopicRequest>(create);
  static DescribeTopicRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $3.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($3.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.OperationParams ensureOperationParams() => $_ensure(0);

  /// Topic path.
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  /// Include topic statistics.
  @$pb.TagNumber(3)
  $core.bool get includeStats => $_getBF(2);
  @$pb.TagNumber(3)
  set includeStats($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIncludeStats() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncludeStats() => $_clearField(3);

  /// Include partition location.
  @$pb.TagNumber(4)
  $core.bool get includeLocation => $_getBF(3);
  @$pb.TagNumber(4)
  set includeLocation($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIncludeLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncludeLocation() => $_clearField(4);
}

/// Describe topic response sent from server to client.
/// If topic is not existed then response status will be "SCHEME_ERROR".
class DescribeTopicResponse extends $pb.GeneratedMessage {
  factory DescribeTopicResponse({
    $3.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  DescribeTopicResponse._();

  factory DescribeTopicResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeTopicResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeTopicResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $3.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTopicResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTopicResponse copyWith(
          void Function(DescribeTopicResponse) updates) =>
      super.copyWith((message) => updates(message as DescribeTopicResponse))
          as DescribeTopicResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeTopicResponse create() => DescribeTopicResponse._();
  @$core.override
  DescribeTopicResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeTopicResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeTopicResponse>(create);
  static DescribeTopicResponse? _defaultInstance;

  /// Result of request will be inside operation.
  @$pb.TagNumber(1)
  $3.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($3.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Operation ensureOperation() => $_ensure(0);
}

class PartitionKeyRange extends $pb.GeneratedMessage {
  factory PartitionKeyRange({
    $core.List<$core.int>? fromBound,
    $core.List<$core.int>? toBound,
  }) {
    final result = create();
    if (fromBound != null) result.fromBound = fromBound;
    if (toBound != null) result.toBound = toBound;
    return result;
  }

  PartitionKeyRange._();

  factory PartitionKeyRange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PartitionKeyRange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PartitionKeyRange',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'fromBound', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'toBound', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitionKeyRange clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitionKeyRange copyWith(void Function(PartitionKeyRange) updates) =>
      super.copyWith((message) => updates(message as PartitionKeyRange))
          as PartitionKeyRange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartitionKeyRange create() => PartitionKeyRange._();
  @$core.override
  PartitionKeyRange createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PartitionKeyRange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PartitionKeyRange>(create);
  static PartitionKeyRange? _defaultInstance;

  /// Inclusive left border. Emptiness means -inf.
  @$pb.TagNumber(1)
  $core.List<$core.int> get fromBound => $_getN(0);
  @$pb.TagNumber(1)
  set fromBound($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFromBound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromBound() => $_clearField(1);

  /// Exclusive right border. Emptiness means +inf.
  @$pb.TagNumber(2)
  $core.List<$core.int> get toBound => $_getN(1);
  @$pb.TagNumber(2)
  set toBound($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToBound() => $_has(1);
  @$pb.TagNumber(2)
  void clearToBound() => $_clearField(2);
}

class DescribeTopicResult_PartitionInfo extends $pb.GeneratedMessage {
  factory DescribeTopicResult_PartitionInfo({
    $fixnum.Int64? partitionId,
    $core.bool? active,
    $core.Iterable<$fixnum.Int64>? childPartitionIds,
    $core.Iterable<$fixnum.Int64>? parentPartitionIds,
    PartitionStats? partitionStats,
    PartitionLocation? partitionLocation,
    PartitionKeyRange? keyRange,
  }) {
    final result = create();
    if (partitionId != null) result.partitionId = partitionId;
    if (active != null) result.active = active;
    if (childPartitionIds != null)
      result.childPartitionIds.addAll(childPartitionIds);
    if (parentPartitionIds != null)
      result.parentPartitionIds.addAll(parentPartitionIds);
    if (partitionStats != null) result.partitionStats = partitionStats;
    if (partitionLocation != null) result.partitionLocation = partitionLocation;
    if (keyRange != null) result.keyRange = keyRange;
    return result;
  }

  DescribeTopicResult_PartitionInfo._();

  factory DescribeTopicResult_PartitionInfo.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeTopicResult_PartitionInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeTopicResult.PartitionInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionId')
    ..aOB(2, _omitFieldNames ? '' : 'active')
    ..p<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'childPartitionIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'parentPartitionIds', $pb.PbFieldType.K6)
    ..aOM<PartitionStats>(5, _omitFieldNames ? '' : 'partitionStats',
        subBuilder: PartitionStats.create)
    ..aOM<PartitionLocation>(6, _omitFieldNames ? '' : 'partitionLocation',
        subBuilder: PartitionLocation.create)
    ..aOM<PartitionKeyRange>(7, _omitFieldNames ? '' : 'keyRange',
        subBuilder: PartitionKeyRange.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTopicResult_PartitionInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTopicResult_PartitionInfo copyWith(
          void Function(DescribeTopicResult_PartitionInfo) updates) =>
      super.copyWith((message) =>
              updates(message as DescribeTopicResult_PartitionInfo))
          as DescribeTopicResult_PartitionInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeTopicResult_PartitionInfo create() =>
      DescribeTopicResult_PartitionInfo._();
  @$core.override
  DescribeTopicResult_PartitionInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeTopicResult_PartitionInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeTopicResult_PartitionInfo>(
          create);
  static DescribeTopicResult_PartitionInfo? _defaultInstance;

  /// Partition identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionId() => $_clearField(1);

  /// Is partition open for write.
  @$pb.TagNumber(2)
  $core.bool get active => $_getBF(1);
  @$pb.TagNumber(2)
  set active($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasActive() => $_has(1);
  @$pb.TagNumber(2)
  void clearActive() => $_clearField(2);

  /// Ids of partitions which was formed when this partition was split or merged.
  @$pb.TagNumber(3)
  $pb.PbList<$fixnum.Int64> get childPartitionIds => $_getList(2);

  /// Ids of partitions from which this partition was formed by split or merge.
  @$pb.TagNumber(4)
  $pb.PbList<$fixnum.Int64> get parentPartitionIds => $_getList(3);

  /// Stats for partition, filled only when include_stats in request is true.
  @$pb.TagNumber(5)
  PartitionStats get partitionStats => $_getN(4);
  @$pb.TagNumber(5)
  set partitionStats(PartitionStats value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPartitionStats() => $_has(4);
  @$pb.TagNumber(5)
  void clearPartitionStats() => $_clearField(5);
  @$pb.TagNumber(5)
  PartitionStats ensurePartitionStats() => $_ensure(4);

  /// Partition location, filled only when include_location in request is true.
  @$pb.TagNumber(6)
  PartitionLocation get partitionLocation => $_getN(5);
  @$pb.TagNumber(6)
  set partitionLocation(PartitionLocation value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPartitionLocation() => $_has(5);
  @$pb.TagNumber(6)
  void clearPartitionLocation() => $_clearField(6);
  @$pb.TagNumber(6)
  PartitionLocation ensurePartitionLocation() => $_ensure(5);

  @$pb.TagNumber(7)
  PartitionKeyRange get keyRange => $_getN(6);
  @$pb.TagNumber(7)
  set keyRange(PartitionKeyRange value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasKeyRange() => $_has(6);
  @$pb.TagNumber(7)
  void clearKeyRange() => $_clearField(7);
  @$pb.TagNumber(7)
  PartitionKeyRange ensureKeyRange() => $_ensure(6);
}

class DescribeTopicResult_TopicStats extends $pb.GeneratedMessage {
  factory DescribeTopicResult_TopicStats({
    $fixnum.Int64? storeSizeBytes,
    $1.Timestamp? minLastWriteTime,
    $2.Duration? maxWriteTimeLag,
    MultipleWindowsStat? bytesWritten,
  }) {
    final result = create();
    if (storeSizeBytes != null) result.storeSizeBytes = storeSizeBytes;
    if (minLastWriteTime != null) result.minLastWriteTime = minLastWriteTime;
    if (maxWriteTimeLag != null) result.maxWriteTimeLag = maxWriteTimeLag;
    if (bytesWritten != null) result.bytesWritten = bytesWritten;
    return result;
  }

  DescribeTopicResult_TopicStats._();

  factory DescribeTopicResult_TopicStats.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeTopicResult_TopicStats.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeTopicResult.TopicStats',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'storeSizeBytes')
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'minLastWriteTime',
        subBuilder: $1.Timestamp.create)
    ..aOM<$2.Duration>(3, _omitFieldNames ? '' : 'maxWriteTimeLag',
        subBuilder: $2.Duration.create)
    ..aOM<MultipleWindowsStat>(4, _omitFieldNames ? '' : 'bytesWritten',
        subBuilder: MultipleWindowsStat.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTopicResult_TopicStats clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTopicResult_TopicStats copyWith(
          void Function(DescribeTopicResult_TopicStats) updates) =>
      super.copyWith(
              (message) => updates(message as DescribeTopicResult_TopicStats))
          as DescribeTopicResult_TopicStats;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeTopicResult_TopicStats create() =>
      DescribeTopicResult_TopicStats._();
  @$core.override
  DescribeTopicResult_TopicStats createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeTopicResult_TopicStats getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeTopicResult_TopicStats>(create);
  static DescribeTopicResult_TopicStats? _defaultInstance;

  /// Approximate size of topic.
  @$pb.TagNumber(1)
  $fixnum.Int64 get storeSizeBytes => $_getI64(0);
  @$pb.TagNumber(1)
  set storeSizeBytes($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStoreSizeBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreSizeBytes() => $_clearField(1);

  /// Minimum of timestamps of last write among all partitions.
  @$pb.TagNumber(2)
  $1.Timestamp get minLastWriteTime => $_getN(1);
  @$pb.TagNumber(2)
  set minLastWriteTime($1.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMinLastWriteTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinLastWriteTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureMinLastWriteTime() => $_ensure(1);

  /// Maximum of differences between write timestamp and create timestamp for all messages, written during last minute.
  @$pb.TagNumber(3)
  $2.Duration get maxWriteTimeLag => $_getN(2);
  @$pb.TagNumber(3)
  set maxWriteTimeLag($2.Duration value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxWriteTimeLag() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxWriteTimeLag() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.Duration ensureMaxWriteTimeLag() => $_ensure(2);

  /// How much bytes were written statistics.
  @$pb.TagNumber(4)
  MultipleWindowsStat get bytesWritten => $_getN(3);
  @$pb.TagNumber(4)
  set bytesWritten(MultipleWindowsStat value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasBytesWritten() => $_has(3);
  @$pb.TagNumber(4)
  void clearBytesWritten() => $_clearField(4);
  @$pb.TagNumber(4)
  MultipleWindowsStat ensureBytesWritten() => $_ensure(3);
}

/// Describe topic result message that will be inside DescribeTopicResponse.operation.
class DescribeTopicResult extends $pb.GeneratedMessage {
  factory DescribeTopicResult({
    $5.Entry? self,
    PartitioningSettings? partitioningSettings,
    $core.Iterable<DescribeTopicResult_PartitionInfo>? partitions,
    $2.Duration? retentionPeriod,
    $fixnum.Int64? retentionStorageMb,
    SupportedCodecs? supportedCodecs,
    $fixnum.Int64? partitionWriteSpeedBytesPerSecond,
    $fixnum.Int64? partitionWriteBurstBytes,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? attributes,
    $core.Iterable<Consumer>? consumers,
    MeteringMode? meteringMode,
    DescribeTopicResult_TopicStats? topicStats,
    $fixnum.Int64? partitionTotalReadSpeedBytesPerSecond,
    $fixnum.Int64? partitionConsumerReadSpeedBytesPerSecond,
  }) {
    final result = create();
    if (self != null) result.self = self;
    if (partitioningSettings != null)
      result.partitioningSettings = partitioningSettings;
    if (partitions != null) result.partitions.addAll(partitions);
    if (retentionPeriod != null) result.retentionPeriod = retentionPeriod;
    if (retentionStorageMb != null)
      result.retentionStorageMb = retentionStorageMb;
    if (supportedCodecs != null) result.supportedCodecs = supportedCodecs;
    if (partitionWriteSpeedBytesPerSecond != null)
      result.partitionWriteSpeedBytesPerSecond =
          partitionWriteSpeedBytesPerSecond;
    if (partitionWriteBurstBytes != null)
      result.partitionWriteBurstBytes = partitionWriteBurstBytes;
    if (attributes != null) result.attributes.addEntries(attributes);
    if (consumers != null) result.consumers.addAll(consumers);
    if (meteringMode != null) result.meteringMode = meteringMode;
    if (topicStats != null) result.topicStats = topicStats;
    if (partitionTotalReadSpeedBytesPerSecond != null)
      result.partitionTotalReadSpeedBytesPerSecond =
          partitionTotalReadSpeedBytesPerSecond;
    if (partitionConsumerReadSpeedBytesPerSecond != null)
      result.partitionConsumerReadSpeedBytesPerSecond =
          partitionConsumerReadSpeedBytesPerSecond;
    return result;
  }

  DescribeTopicResult._();

  factory DescribeTopicResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeTopicResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeTopicResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$5.Entry>(1, _omitFieldNames ? '' : 'self',
        subBuilder: $5.Entry.create)
    ..aOM<PartitioningSettings>(
        2, _omitFieldNames ? '' : 'partitioningSettings',
        subBuilder: PartitioningSettings.create)
    ..pPM<DescribeTopicResult_PartitionInfo>(
        3, _omitFieldNames ? '' : 'partitions',
        subBuilder: DescribeTopicResult_PartitionInfo.create)
    ..aOM<$2.Duration>(4, _omitFieldNames ? '' : 'retentionPeriod',
        subBuilder: $2.Duration.create)
    ..aInt64(5, _omitFieldNames ? '' : 'retentionStorageMb')
    ..aOM<SupportedCodecs>(7, _omitFieldNames ? '' : 'supportedCodecs',
        subBuilder: SupportedCodecs.create)
    ..aInt64(8, _omitFieldNames ? '' : 'partitionWriteSpeedBytesPerSecond')
    ..aInt64(9, _omitFieldNames ? '' : 'partitionWriteBurstBytes')
    ..m<$core.String, $core.String>(10, _omitFieldNames ? '' : 'attributes',
        entryClassName: 'DescribeTopicResult.AttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Topic'))
    ..pPM<Consumer>(11, _omitFieldNames ? '' : 'consumers',
        subBuilder: Consumer.create)
    ..aE<MeteringMode>(12, _omitFieldNames ? '' : 'meteringMode',
        enumValues: MeteringMode.values)
    ..aOM<DescribeTopicResult_TopicStats>(
        13, _omitFieldNames ? '' : 'topicStats',
        subBuilder: DescribeTopicResult_TopicStats.create)
    ..aInt64(14, _omitFieldNames ? '' : 'partitionTotalReadSpeedBytesPerSecond')
    ..aInt64(
        15, _omitFieldNames ? '' : 'partitionConsumerReadSpeedBytesPerSecond')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTopicResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTopicResult copyWith(void Function(DescribeTopicResult) updates) =>
      super.copyWith((message) => updates(message as DescribeTopicResult))
          as DescribeTopicResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeTopicResult create() => DescribeTopicResult._();
  @$core.override
  DescribeTopicResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeTopicResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeTopicResult>(create);
  static DescribeTopicResult? _defaultInstance;

  /// Description of scheme object.
  @$pb.TagNumber(1)
  $5.Entry get self => $_getN(0);
  @$pb.TagNumber(1)
  set self($5.Entry value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSelf() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelf() => $_clearField(1);
  @$pb.TagNumber(1)
  $5.Entry ensureSelf() => $_ensure(0);

  /// Settings for partitioning
  @$pb.TagNumber(2)
  PartitioningSettings get partitioningSettings => $_getN(1);
  @$pb.TagNumber(2)
  set partitioningSettings(PartitioningSettings value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPartitioningSettings() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartitioningSettings() => $_clearField(2);
  @$pb.TagNumber(2)
  PartitioningSettings ensurePartitioningSettings() => $_ensure(1);

  /// Partitions description.
  @$pb.TagNumber(3)
  $pb.PbList<DescribeTopicResult_PartitionInfo> get partitions => $_getList(2);

  /// Retention settings.
  /// Currently, only one limit may be set, so other should not be set.
  ///
  /// How long data in partition should be stored.
  @$pb.TagNumber(4)
  $2.Duration get retentionPeriod => $_getN(3);
  @$pb.TagNumber(4)
  set retentionPeriod($2.Duration value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRetentionPeriod() => $_has(3);
  @$pb.TagNumber(4)
  void clearRetentionPeriod() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.Duration ensureRetentionPeriod() => $_ensure(3);

  /// How much data in partition should be stored.
  /// Zero value means infinite limit.
  @$pb.TagNumber(5)
  $fixnum.Int64 get retentionStorageMb => $_getI64(4);
  @$pb.TagNumber(5)
  set retentionStorageMb($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRetentionStorageMb() => $_has(4);
  @$pb.TagNumber(5)
  void clearRetentionStorageMb() => $_clearField(5);

  /// List of allowed codecs for writers.
  /// Writes with codec not from this list are forbidden.
  /// If empty, codec compatibility check for the topic is disabled.
  @$pb.TagNumber(7)
  SupportedCodecs get supportedCodecs => $_getN(5);
  @$pb.TagNumber(7)
  set supportedCodecs(SupportedCodecs value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSupportedCodecs() => $_has(5);
  @$pb.TagNumber(7)
  void clearSupportedCodecs() => $_clearField(7);
  @$pb.TagNumber(7)
  SupportedCodecs ensureSupportedCodecs() => $_ensure(5);

  /// Partition write speed in bytes per second.
  /// Zero value means default limit: 1 MB per second.
  @$pb.TagNumber(8)
  $fixnum.Int64 get partitionWriteSpeedBytesPerSecond => $_getI64(6);
  @$pb.TagNumber(8)
  set partitionWriteSpeedBytesPerSecond($fixnum.Int64 value) =>
      $_setInt64(6, value);
  @$pb.TagNumber(8)
  $core.bool hasPartitionWriteSpeedBytesPerSecond() => $_has(6);
  @$pb.TagNumber(8)
  void clearPartitionWriteSpeedBytesPerSecond() => $_clearField(8);

  /// Burst size for write in partition, in bytes.
  /// Zero value means default limit: 1 MB.
  @$pb.TagNumber(9)
  $fixnum.Int64 get partitionWriteBurstBytes => $_getI64(7);
  @$pb.TagNumber(9)
  set partitionWriteBurstBytes($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(9)
  $core.bool hasPartitionWriteBurstBytes() => $_has(7);
  @$pb.TagNumber(9)
  void clearPartitionWriteBurstBytes() => $_clearField(9);

  /// User and server attributes of topic. Server attributes starts from "_" and will be validated by server.
  @$pb.TagNumber(10)
  $pb.PbMap<$core.String, $core.String> get attributes => $_getMap(8);

  /// List of consumers for this topic.
  @$pb.TagNumber(11)
  $pb.PbList<Consumer> get consumers => $_getList(9);

  /// Metering settings.
  @$pb.TagNumber(12)
  MeteringMode get meteringMode => $_getN(10);
  @$pb.TagNumber(12)
  set meteringMode(MeteringMode value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasMeteringMode() => $_has(10);
  @$pb.TagNumber(12)
  void clearMeteringMode() => $_clearField(12);

  /// Statistics of topic.
  @$pb.TagNumber(13)
  DescribeTopicResult_TopicStats get topicStats => $_getN(11);
  @$pb.TagNumber(13)
  set topicStats(DescribeTopicResult_TopicStats value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasTopicStats() => $_has(11);
  @$pb.TagNumber(13)
  void clearTopicStats() => $_clearField(13);
  @$pb.TagNumber(13)
  DescribeTopicResult_TopicStats ensureTopicStats() => $_ensure(11);

  @$pb.TagNumber(14)
  $fixnum.Int64 get partitionTotalReadSpeedBytesPerSecond => $_getI64(12);
  @$pb.TagNumber(14)
  set partitionTotalReadSpeedBytesPerSecond($fixnum.Int64 value) =>
      $_setInt64(12, value);
  @$pb.TagNumber(14)
  $core.bool hasPartitionTotalReadSpeedBytesPerSecond() => $_has(12);
  @$pb.TagNumber(14)
  void clearPartitionTotalReadSpeedBytesPerSecond() => $_clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get partitionConsumerReadSpeedBytesPerSecond => $_getI64(13);
  @$pb.TagNumber(15)
  set partitionConsumerReadSpeedBytesPerSecond($fixnum.Int64 value) =>
      $_setInt64(13, value);
  @$pb.TagNumber(15)
  $core.bool hasPartitionConsumerReadSpeedBytesPerSecond() => $_has(13);
  @$pb.TagNumber(15)
  void clearPartitionConsumerReadSpeedBytesPerSecond() => $_clearField(15);
}

/// Describe partition request sent from client to server.
class DescribePartitionRequest extends $pb.GeneratedMessage {
  factory DescribePartitionRequest({
    $3.OperationParams? operationParams,
    $core.String? path,
    $fixnum.Int64? partitionId,
    $core.bool? includeStats,
    $core.bool? includeLocation,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (path != null) result.path = path;
    if (partitionId != null) result.partitionId = partitionId;
    if (includeStats != null) result.includeStats = includeStats;
    if (includeLocation != null) result.includeLocation = includeLocation;
    return result;
  }

  DescribePartitionRequest._();

  factory DescribePartitionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribePartitionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribePartitionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $3.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aInt64(3, _omitFieldNames ? '' : 'partitionId')
    ..aOB(4, _omitFieldNames ? '' : 'includeStats')
    ..aOB(5, _omitFieldNames ? '' : 'includeLocation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribePartitionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribePartitionRequest copyWith(
          void Function(DescribePartitionRequest) updates) =>
      super.copyWith((message) => updates(message as DescribePartitionRequest))
          as DescribePartitionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribePartitionRequest create() => DescribePartitionRequest._();
  @$core.override
  DescribePartitionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribePartitionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribePartitionRequest>(create);
  static DescribePartitionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $3.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($3.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.OperationParams ensureOperationParams() => $_ensure(0);

  /// Topic path.
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  /// Partition identifier.
  @$pb.TagNumber(3)
  $fixnum.Int64 get partitionId => $_getI64(2);
  @$pb.TagNumber(3)
  set partitionId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPartitionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartitionId() => $_clearField(3);

  /// Include partition statistics.
  @$pb.TagNumber(4)
  $core.bool get includeStats => $_getBF(3);
  @$pb.TagNumber(4)
  set includeStats($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIncludeStats() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncludeStats() => $_clearField(4);

  /// Include partition location.
  @$pb.TagNumber(5)
  $core.bool get includeLocation => $_getBF(4);
  @$pb.TagNumber(5)
  set includeLocation($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIncludeLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearIncludeLocation() => $_clearField(5);
}

/// Describe partition response sent from server to client.
/// If topic is not existed then response status will be "SCHEME_ERROR".
class DescribePartitionResponse extends $pb.GeneratedMessage {
  factory DescribePartitionResponse({
    $3.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  DescribePartitionResponse._();

  factory DescribePartitionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribePartitionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribePartitionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $3.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribePartitionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribePartitionResponse copyWith(
          void Function(DescribePartitionResponse) updates) =>
      super.copyWith((message) => updates(message as DescribePartitionResponse))
          as DescribePartitionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribePartitionResponse create() => DescribePartitionResponse._();
  @$core.override
  DescribePartitionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribePartitionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribePartitionResponse>(create);
  static DescribePartitionResponse? _defaultInstance;

  /// Result of request will be inside operation.
  @$pb.TagNumber(1)
  $3.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($3.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Operation ensureOperation() => $_ensure(0);
}

/// Describe partition result message that will be inside DescribePartitionResponse.operation.
class DescribePartitionResult extends $pb.GeneratedMessage {
  factory DescribePartitionResult({
    DescribeTopicResult_PartitionInfo? partition,
  }) {
    final result = create();
    if (partition != null) result.partition = partition;
    return result;
  }

  DescribePartitionResult._();

  factory DescribePartitionResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribePartitionResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribePartitionResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<DescribeTopicResult_PartitionInfo>(
        1, _omitFieldNames ? '' : 'partition',
        subBuilder: DescribeTopicResult_PartitionInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribePartitionResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribePartitionResult copyWith(
          void Function(DescribePartitionResult) updates) =>
      super.copyWith((message) => updates(message as DescribePartitionResult))
          as DescribePartitionResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribePartitionResult create() => DescribePartitionResult._();
  @$core.override
  DescribePartitionResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribePartitionResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribePartitionResult>(create);
  static DescribePartitionResult? _defaultInstance;

  /// Partitions description.
  @$pb.TagNumber(1)
  DescribeTopicResult_PartitionInfo get partition => $_getN(0);
  @$pb.TagNumber(1)
  set partition(DescribeTopicResult_PartitionInfo value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPartition() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartition() => $_clearField(1);
  @$pb.TagNumber(1)
  DescribeTopicResult_PartitionInfo ensurePartition() => $_ensure(0);
}

/// Describe topic's consumer request sent from client to server.
class DescribeConsumerRequest extends $pb.GeneratedMessage {
  factory DescribeConsumerRequest({
    $3.OperationParams? operationParams,
    $core.String? path,
    $core.String? consumer,
    $core.bool? includeStats,
    $core.bool? includeLocation,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (path != null) result.path = path;
    if (consumer != null) result.consumer = consumer;
    if (includeStats != null) result.includeStats = includeStats;
    if (includeLocation != null) result.includeLocation = includeLocation;
    return result;
  }

  DescribeConsumerRequest._();

  factory DescribeConsumerRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeConsumerRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeConsumerRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $3.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aOS(3, _omitFieldNames ? '' : 'consumer')
    ..aOB(4, _omitFieldNames ? '' : 'includeStats')
    ..aOB(5, _omitFieldNames ? '' : 'includeLocation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeConsumerRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeConsumerRequest copyWith(
          void Function(DescribeConsumerRequest) updates) =>
      super.copyWith((message) => updates(message as DescribeConsumerRequest))
          as DescribeConsumerRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeConsumerRequest create() => DescribeConsumerRequest._();
  @$core.override
  DescribeConsumerRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeConsumerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeConsumerRequest>(create);
  static DescribeConsumerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $3.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($3.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.OperationParams ensureOperationParams() => $_ensure(0);

  /// Topic path.
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  /// Consumer name;
  @$pb.TagNumber(3)
  $core.String get consumer => $_getSZ(2);
  @$pb.TagNumber(3)
  set consumer($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasConsumer() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsumer() => $_clearField(3);

  /// Include consumer statistics.
  @$pb.TagNumber(4)
  $core.bool get includeStats => $_getBF(3);
  @$pb.TagNumber(4)
  set includeStats($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIncludeStats() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncludeStats() => $_clearField(4);

  /// Include partition location.
  @$pb.TagNumber(5)
  $core.bool get includeLocation => $_getBF(4);
  @$pb.TagNumber(5)
  set includeLocation($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIncludeLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearIncludeLocation() => $_clearField(5);
}

/// Describe topic's consumer response sent from server to client.
/// If topic is not existed then response status will be "SCHEME_ERROR".
class DescribeConsumerResponse extends $pb.GeneratedMessage {
  factory DescribeConsumerResponse({
    $3.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  DescribeConsumerResponse._();

  factory DescribeConsumerResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeConsumerResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeConsumerResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $3.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeConsumerResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeConsumerResponse copyWith(
          void Function(DescribeConsumerResponse) updates) =>
      super.copyWith((message) => updates(message as DescribeConsumerResponse))
          as DescribeConsumerResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeConsumerResponse create() => DescribeConsumerResponse._();
  @$core.override
  DescribeConsumerResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeConsumerResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeConsumerResponse>(create);
  static DescribeConsumerResponse? _defaultInstance;

  /// Result of request will be inside operation.
  @$pb.TagNumber(1)
  $3.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($3.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Operation ensureOperation() => $_ensure(0);
}

class DescribeConsumerResult_PartitionInfo extends $pb.GeneratedMessage {
  factory DescribeConsumerResult_PartitionInfo({
    $fixnum.Int64? partitionId,
    $core.bool? active,
    $core.Iterable<$fixnum.Int64>? childPartitionIds,
    $core.Iterable<$fixnum.Int64>? parentPartitionIds,
    PartitionStats? partitionStats,
    DescribeConsumerResult_PartitionConsumerStats? partitionConsumerStats,
    PartitionLocation? partitionLocation,
  }) {
    final result = create();
    if (partitionId != null) result.partitionId = partitionId;
    if (active != null) result.active = active;
    if (childPartitionIds != null)
      result.childPartitionIds.addAll(childPartitionIds);
    if (parentPartitionIds != null)
      result.parentPartitionIds.addAll(parentPartitionIds);
    if (partitionStats != null) result.partitionStats = partitionStats;
    if (partitionConsumerStats != null)
      result.partitionConsumerStats = partitionConsumerStats;
    if (partitionLocation != null) result.partitionLocation = partitionLocation;
    return result;
  }

  DescribeConsumerResult_PartitionInfo._();

  factory DescribeConsumerResult_PartitionInfo.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeConsumerResult_PartitionInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeConsumerResult.PartitionInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'partitionId')
    ..aOB(2, _omitFieldNames ? '' : 'active')
    ..p<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'childPartitionIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'parentPartitionIds', $pb.PbFieldType.K6)
    ..aOM<PartitionStats>(5, _omitFieldNames ? '' : 'partitionStats',
        subBuilder: PartitionStats.create)
    ..aOM<DescribeConsumerResult_PartitionConsumerStats>(
        6, _omitFieldNames ? '' : 'partitionConsumerStats',
        subBuilder: DescribeConsumerResult_PartitionConsumerStats.create)
    ..aOM<PartitionLocation>(7, _omitFieldNames ? '' : 'partitionLocation',
        subBuilder: PartitionLocation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeConsumerResult_PartitionInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeConsumerResult_PartitionInfo copyWith(
          void Function(DescribeConsumerResult_PartitionInfo) updates) =>
      super.copyWith((message) =>
              updates(message as DescribeConsumerResult_PartitionInfo))
          as DescribeConsumerResult_PartitionInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeConsumerResult_PartitionInfo create() =>
      DescribeConsumerResult_PartitionInfo._();
  @$core.override
  DescribeConsumerResult_PartitionInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeConsumerResult_PartitionInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          DescribeConsumerResult_PartitionInfo>(create);
  static DescribeConsumerResult_PartitionInfo? _defaultInstance;

  /// Partition identifier.
  @$pb.TagNumber(1)
  $fixnum.Int64 get partitionId => $_getI64(0);
  @$pb.TagNumber(1)
  set partitionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionId() => $_clearField(1);

  /// Is partition open for write.
  @$pb.TagNumber(2)
  $core.bool get active => $_getBF(1);
  @$pb.TagNumber(2)
  set active($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasActive() => $_has(1);
  @$pb.TagNumber(2)
  void clearActive() => $_clearField(2);

  /// Ids of partitions which was formed when this partition was split or merged.
  @$pb.TagNumber(3)
  $pb.PbList<$fixnum.Int64> get childPartitionIds => $_getList(2);

  /// Ids of partitions from which this partition was formed by split or merge.
  @$pb.TagNumber(4)
  $pb.PbList<$fixnum.Int64> get parentPartitionIds => $_getList(3);

  /// Stats for partition, filled only when include_stats in request is true.
  @$pb.TagNumber(5)
  PartitionStats get partitionStats => $_getN(4);
  @$pb.TagNumber(5)
  set partitionStats(PartitionStats value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPartitionStats() => $_has(4);
  @$pb.TagNumber(5)
  void clearPartitionStats() => $_clearField(5);
  @$pb.TagNumber(5)
  PartitionStats ensurePartitionStats() => $_ensure(4);

  /// Stats for consumer of this partition, filled only when include_stats in request is true.
  @$pb.TagNumber(6)
  DescribeConsumerResult_PartitionConsumerStats get partitionConsumerStats =>
      $_getN(5);
  @$pb.TagNumber(6)
  set partitionConsumerStats(
          DescribeConsumerResult_PartitionConsumerStats value) =>
      $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPartitionConsumerStats() => $_has(5);
  @$pb.TagNumber(6)
  void clearPartitionConsumerStats() => $_clearField(6);
  @$pb.TagNumber(6)
  DescribeConsumerResult_PartitionConsumerStats
      ensurePartitionConsumerStats() => $_ensure(5);

  /// Partition location, filled only when include_location in request is true.
  @$pb.TagNumber(7)
  PartitionLocation get partitionLocation => $_getN(6);
  @$pb.TagNumber(7)
  set partitionLocation(PartitionLocation value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPartitionLocation() => $_has(6);
  @$pb.TagNumber(7)
  void clearPartitionLocation() => $_clearField(7);
  @$pb.TagNumber(7)
  PartitionLocation ensurePartitionLocation() => $_ensure(6);
}

class DescribeConsumerResult_PartitionConsumerStats
    extends $pb.GeneratedMessage {
  factory DescribeConsumerResult_PartitionConsumerStats({
    $fixnum.Int64? lastReadOffset,
    $fixnum.Int64? committedOffset,
    $core.String? readSessionId,
    $1.Timestamp? partitionReadSessionCreateTime,
    $1.Timestamp? lastReadTime,
    $2.Duration? maxReadTimeLag,
    $2.Duration? maxWriteTimeLag,
    MultipleWindowsStat? bytesRead,
    $core.String? readerName,
    $core.int? connectionNodeId,
    $2.Duration? maxCommittedTimeLag,
  }) {
    final result = create();
    if (lastReadOffset != null) result.lastReadOffset = lastReadOffset;
    if (committedOffset != null) result.committedOffset = committedOffset;
    if (readSessionId != null) result.readSessionId = readSessionId;
    if (partitionReadSessionCreateTime != null)
      result.partitionReadSessionCreateTime = partitionReadSessionCreateTime;
    if (lastReadTime != null) result.lastReadTime = lastReadTime;
    if (maxReadTimeLag != null) result.maxReadTimeLag = maxReadTimeLag;
    if (maxWriteTimeLag != null) result.maxWriteTimeLag = maxWriteTimeLag;
    if (bytesRead != null) result.bytesRead = bytesRead;
    if (readerName != null) result.readerName = readerName;
    if (connectionNodeId != null) result.connectionNodeId = connectionNodeId;
    if (maxCommittedTimeLag != null)
      result.maxCommittedTimeLag = maxCommittedTimeLag;
    return result;
  }

  DescribeConsumerResult_PartitionConsumerStats._();

  factory DescribeConsumerResult_PartitionConsumerStats.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeConsumerResult_PartitionConsumerStats.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeConsumerResult.PartitionConsumerStats',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'lastReadOffset')
    ..aInt64(2, _omitFieldNames ? '' : 'committedOffset')
    ..aOS(3, _omitFieldNames ? '' : 'readSessionId')
    ..aOM<$1.Timestamp>(
        4, _omitFieldNames ? '' : 'partitionReadSessionCreateTime',
        subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'lastReadTime',
        subBuilder: $1.Timestamp.create)
    ..aOM<$2.Duration>(6, _omitFieldNames ? '' : 'maxReadTimeLag',
        subBuilder: $2.Duration.create)
    ..aOM<$2.Duration>(7, _omitFieldNames ? '' : 'maxWriteTimeLag',
        subBuilder: $2.Duration.create)
    ..aOM<MultipleWindowsStat>(8, _omitFieldNames ? '' : 'bytesRead',
        subBuilder: MultipleWindowsStat.create)
    ..aOS(11, _omitFieldNames ? '' : 'readerName')
    ..aI(12, _omitFieldNames ? '' : 'connectionNodeId')
    ..aOM<$2.Duration>(13, _omitFieldNames ? '' : 'maxCommittedTimeLag',
        subBuilder: $2.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeConsumerResult_PartitionConsumerStats clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeConsumerResult_PartitionConsumerStats copyWith(
          void Function(DescribeConsumerResult_PartitionConsumerStats)
              updates) =>
      super.copyWith((message) =>
              updates(message as DescribeConsumerResult_PartitionConsumerStats))
          as DescribeConsumerResult_PartitionConsumerStats;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeConsumerResult_PartitionConsumerStats create() =>
      DescribeConsumerResult_PartitionConsumerStats._();
  @$core.override
  DescribeConsumerResult_PartitionConsumerStats createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static DescribeConsumerResult_PartitionConsumerStats getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          DescribeConsumerResult_PartitionConsumerStats>(create);
  static DescribeConsumerResult_PartitionConsumerStats? _defaultInstance;

  /// Last read offset from this partition.
  @$pb.TagNumber(1)
  $fixnum.Int64 get lastReadOffset => $_getI64(0);
  @$pb.TagNumber(1)
  set lastReadOffset($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLastReadOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastReadOffset() => $_clearField(1);

  /// Committed offset for this partition.
  @$pb.TagNumber(2)
  $fixnum.Int64 get committedOffset => $_getI64(1);
  @$pb.TagNumber(2)
  set committedOffset($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCommittedOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommittedOffset() => $_clearField(2);

  /// Reading this partition read session identifier.
  @$pb.TagNumber(3)
  $core.String get readSessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set readSessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReadSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearReadSessionId() => $_clearField(3);

  /// Timestamp of providing this partition to this session by server.
  @$pb.TagNumber(4)
  $1.Timestamp get partitionReadSessionCreateTime => $_getN(3);
  @$pb.TagNumber(4)
  set partitionReadSessionCreateTime($1.Timestamp value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPartitionReadSessionCreateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearPartitionReadSessionCreateTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensurePartitionReadSessionCreateTime() => $_ensure(3);

  /// Timestamp of last read from this partition.
  @$pb.TagNumber(5)
  $1.Timestamp get lastReadTime => $_getN(4);
  @$pb.TagNumber(5)
  set lastReadTime($1.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasLastReadTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastReadTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureLastReadTime() => $_ensure(4);

  /// Maximum of differences between timestamp of read and write timestamp for all messages, read during last minute.
  @$pb.TagNumber(6)
  $2.Duration get maxReadTimeLag => $_getN(5);
  @$pb.TagNumber(6)
  set maxReadTimeLag($2.Duration value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMaxReadTimeLag() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxReadTimeLag() => $_clearField(6);
  @$pb.TagNumber(6)
  $2.Duration ensureMaxReadTimeLag() => $_ensure(5);

  /// Maximum of differences between write timestamp and create timestamp for all messages, read during last minute.
  @$pb.TagNumber(7)
  $2.Duration get maxWriteTimeLag => $_getN(6);
  @$pb.TagNumber(7)
  set maxWriteTimeLag($2.Duration value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasMaxWriteTimeLag() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaxWriteTimeLag() => $_clearField(7);
  @$pb.TagNumber(7)
  $2.Duration ensureMaxWriteTimeLag() => $_ensure(6);

  /// How much bytes were read during several windows statistics from this partition.
  @$pb.TagNumber(8)
  MultipleWindowsStat get bytesRead => $_getN(7);
  @$pb.TagNumber(8)
  set bytesRead(MultipleWindowsStat value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasBytesRead() => $_has(7);
  @$pb.TagNumber(8)
  void clearBytesRead() => $_clearField(8);
  @$pb.TagNumber(8)
  MultipleWindowsStat ensureBytesRead() => $_ensure(7);

  /// Read session name, provided by client.
  @$pb.TagNumber(11)
  $core.String get readerName => $_getSZ(8);
  @$pb.TagNumber(11)
  set readerName($core.String value) => $_setString(8, value);
  @$pb.TagNumber(11)
  $core.bool hasReaderName() => $_has(8);
  @$pb.TagNumber(11)
  void clearReaderName() => $_clearField(11);

  /// Host where read session connected.
  @$pb.TagNumber(12)
  $core.int get connectionNodeId => $_getIZ(9);
  @$pb.TagNumber(12)
  set connectionNodeId($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(12)
  $core.bool hasConnectionNodeId() => $_has(9);
  @$pb.TagNumber(12)
  void clearConnectionNodeId() => $_clearField(12);

  /// The difference between the write timestamp of the last commited message and the current time.
  @$pb.TagNumber(13)
  $2.Duration get maxCommittedTimeLag => $_getN(10);
  @$pb.TagNumber(13)
  set maxCommittedTimeLag($2.Duration value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasMaxCommittedTimeLag() => $_has(10);
  @$pb.TagNumber(13)
  void clearMaxCommittedTimeLag() => $_clearField(13);
  @$pb.TagNumber(13)
  $2.Duration ensureMaxCommittedTimeLag() => $_ensure(10);
}

/// Describe topic's consumer result message that will be inside DescribeConsumerResponse.operation.
class DescribeConsumerResult extends $pb.GeneratedMessage {
  factory DescribeConsumerResult({
    $5.Entry? self,
    Consumer? consumer,
    $core.Iterable<DescribeConsumerResult_PartitionInfo>? partitions,
  }) {
    final result = create();
    if (self != null) result.self = self;
    if (consumer != null) result.consumer = consumer;
    if (partitions != null) result.partitions.addAll(partitions);
    return result;
  }

  DescribeConsumerResult._();

  factory DescribeConsumerResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeConsumerResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeConsumerResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$5.Entry>(1, _omitFieldNames ? '' : 'self',
        subBuilder: $5.Entry.create)
    ..aOM<Consumer>(2, _omitFieldNames ? '' : 'consumer',
        subBuilder: Consumer.create)
    ..pPM<DescribeConsumerResult_PartitionInfo>(
        3, _omitFieldNames ? '' : 'partitions',
        subBuilder: DescribeConsumerResult_PartitionInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeConsumerResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeConsumerResult copyWith(
          void Function(DescribeConsumerResult) updates) =>
      super.copyWith((message) => updates(message as DescribeConsumerResult))
          as DescribeConsumerResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeConsumerResult create() => DescribeConsumerResult._();
  @$core.override
  DescribeConsumerResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeConsumerResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeConsumerResult>(create);
  static DescribeConsumerResult? _defaultInstance;

  /// Description of scheme object.
  @$pb.TagNumber(1)
  $5.Entry get self => $_getN(0);
  @$pb.TagNumber(1)
  set self($5.Entry value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSelf() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelf() => $_clearField(1);
  @$pb.TagNumber(1)
  $5.Entry ensureSelf() => $_ensure(0);

  @$pb.TagNumber(2)
  Consumer get consumer => $_getN(1);
  @$pb.TagNumber(2)
  set consumer(Consumer value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasConsumer() => $_has(1);
  @$pb.TagNumber(2)
  void clearConsumer() => $_clearField(2);
  @$pb.TagNumber(2)
  Consumer ensureConsumer() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<DescribeConsumerResult_PartitionInfo> get partitions =>
      $_getList(2);
}

class PartitionStats extends $pb.GeneratedMessage {
  factory PartitionStats({
    OffsetsRange? partitionOffsets,
    $fixnum.Int64? storeSizeBytes,
    $1.Timestamp? lastWriteTime,
    $2.Duration? maxWriteTimeLag,
    MultipleWindowsStat? bytesWritten,
    @$core.Deprecated('This field is deprecated.') $core.int? partitionNodeId,
  }) {
    final result = create();
    if (partitionOffsets != null) result.partitionOffsets = partitionOffsets;
    if (storeSizeBytes != null) result.storeSizeBytes = storeSizeBytes;
    if (lastWriteTime != null) result.lastWriteTime = lastWriteTime;
    if (maxWriteTimeLag != null) result.maxWriteTimeLag = maxWriteTimeLag;
    if (bytesWritten != null) result.bytesWritten = bytesWritten;
    if (partitionNodeId != null) result.partitionNodeId = partitionNodeId;
    return result;
  }

  PartitionStats._();

  factory PartitionStats.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PartitionStats.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PartitionStats',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<OffsetsRange>(1, _omitFieldNames ? '' : 'partitionOffsets',
        subBuilder: OffsetsRange.create)
    ..aInt64(2, _omitFieldNames ? '' : 'storeSizeBytes')
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'lastWriteTime',
        subBuilder: $1.Timestamp.create)
    ..aOM<$2.Duration>(4, _omitFieldNames ? '' : 'maxWriteTimeLag',
        subBuilder: $2.Duration.create)
    ..aOM<MultipleWindowsStat>(5, _omitFieldNames ? '' : 'bytesWritten',
        subBuilder: MultipleWindowsStat.create)
    ..aI(8, _omitFieldNames ? '' : 'partitionNodeId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitionStats clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitionStats copyWith(void Function(PartitionStats) updates) =>
      super.copyWith((message) => updates(message as PartitionStats))
          as PartitionStats;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartitionStats create() => PartitionStats._();
  @$core.override
  PartitionStats createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PartitionStats getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PartitionStats>(create);
  static PartitionStats? _defaultInstance;

  /// Partition contains messages with offsets in range [start, end).
  @$pb.TagNumber(1)
  OffsetsRange get partitionOffsets => $_getN(0);
  @$pb.TagNumber(1)
  set partitionOffsets(OffsetsRange value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPartitionOffsets() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartitionOffsets() => $_clearField(1);
  @$pb.TagNumber(1)
  OffsetsRange ensurePartitionOffsets() => $_ensure(0);

  /// Approximate size of partition.
  @$pb.TagNumber(2)
  $fixnum.Int64 get storeSizeBytes => $_getI64(1);
  @$pb.TagNumber(2)
  set storeSizeBytes($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStoreSizeBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreSizeBytes() => $_clearField(2);

  /// Timestamp of last write.
  @$pb.TagNumber(3)
  $1.Timestamp get lastWriteTime => $_getN(2);
  @$pb.TagNumber(3)
  set lastWriteTime($1.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLastWriteTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastWriteTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureLastWriteTime() => $_ensure(2);

  /// Maximum of differences between write timestamp and create timestamp for all messages, written during last minute.
  @$pb.TagNumber(4)
  $2.Duration get maxWriteTimeLag => $_getN(3);
  @$pb.TagNumber(4)
  set maxWriteTimeLag($2.Duration value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMaxWriteTimeLag() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxWriteTimeLag() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.Duration ensureMaxWriteTimeLag() => $_ensure(3);

  /// How much bytes were written during several windows in this partition.
  @$pb.TagNumber(5)
  MultipleWindowsStat get bytesWritten => $_getN(4);
  @$pb.TagNumber(5)
  set bytesWritten(MultipleWindowsStat value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBytesWritten() => $_has(4);
  @$pb.TagNumber(5)
  void clearBytesWritten() => $_clearField(5);
  @$pb.TagNumber(5)
  MultipleWindowsStat ensureBytesWritten() => $_ensure(4);

  /// Partition host. Useful for debugging purposes.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  $core.int get partitionNodeId => $_getIZ(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  set partitionNodeId($core.int value) => $_setSignedInt32(5, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  $core.bool hasPartitionNodeId() => $_has(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  void clearPartitionNodeId() => $_clearField(8);
}

/// Update existing topic request sent from client to server.
class AlterTopicRequest extends $pb.GeneratedMessage {
  factory AlterTopicRequest({
    $3.OperationParams? operationParams,
    $core.String? path,
    AlterPartitioningSettings? alterPartitioningSettings,
    $2.Duration? setRetentionPeriod,
    $fixnum.Int64? setRetentionStorageMb,
    SupportedCodecs? setSupportedCodecs,
    $fixnum.Int64? setPartitionWriteSpeedBytesPerSecond,
    $fixnum.Int64? setPartitionWriteBurstBytes,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? alterAttributes,
    $core.Iterable<Consumer>? addConsumers,
    $core.Iterable<$core.String>? dropConsumers,
    $core.Iterable<AlterConsumer>? alterConsumers,
    MeteringMode? setMeteringMode,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (path != null) result.path = path;
    if (alterPartitioningSettings != null)
      result.alterPartitioningSettings = alterPartitioningSettings;
    if (setRetentionPeriod != null)
      result.setRetentionPeriod = setRetentionPeriod;
    if (setRetentionStorageMb != null)
      result.setRetentionStorageMb = setRetentionStorageMb;
    if (setSupportedCodecs != null)
      result.setSupportedCodecs = setSupportedCodecs;
    if (setPartitionWriteSpeedBytesPerSecond != null)
      result.setPartitionWriteSpeedBytesPerSecond =
          setPartitionWriteSpeedBytesPerSecond;
    if (setPartitionWriteBurstBytes != null)
      result.setPartitionWriteBurstBytes = setPartitionWriteBurstBytes;
    if (alterAttributes != null)
      result.alterAttributes.addEntries(alterAttributes);
    if (addConsumers != null) result.addConsumers.addAll(addConsumers);
    if (dropConsumers != null) result.dropConsumers.addAll(dropConsumers);
    if (alterConsumers != null) result.alterConsumers.addAll(alterConsumers);
    if (setMeteringMode != null) result.setMeteringMode = setMeteringMode;
    return result;
  }

  AlterTopicRequest._();

  factory AlterTopicRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlterTopicRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlterTopicRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $3.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aOM<AlterPartitioningSettings>(
        3, _omitFieldNames ? '' : 'alterPartitioningSettings',
        subBuilder: AlterPartitioningSettings.create)
    ..aOM<$2.Duration>(4, _omitFieldNames ? '' : 'setRetentionPeriod',
        subBuilder: $2.Duration.create)
    ..aInt64(5, _omitFieldNames ? '' : 'setRetentionStorageMb')
    ..aOM<SupportedCodecs>(7, _omitFieldNames ? '' : 'setSupportedCodecs',
        subBuilder: SupportedCodecs.create)
    ..aInt64(8, _omitFieldNames ? '' : 'setPartitionWriteSpeedBytesPerSecond')
    ..aInt64(9, _omitFieldNames ? '' : 'setPartitionWriteBurstBytes')
    ..m<$core.String, $core.String>(
        10, _omitFieldNames ? '' : 'alterAttributes',
        entryClassName: 'AlterTopicRequest.AlterAttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Topic'))
    ..pPM<Consumer>(11, _omitFieldNames ? '' : 'addConsumers',
        subBuilder: Consumer.create)
    ..pPS(12, _omitFieldNames ? '' : 'dropConsumers')
    ..pPM<AlterConsumer>(13, _omitFieldNames ? '' : 'alterConsumers',
        subBuilder: AlterConsumer.create)
    ..aE<MeteringMode>(14, _omitFieldNames ? '' : 'setMeteringMode',
        enumValues: MeteringMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterTopicRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterTopicRequest copyWith(void Function(AlterTopicRequest) updates) =>
      super.copyWith((message) => updates(message as AlterTopicRequest))
          as AlterTopicRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlterTopicRequest create() => AlterTopicRequest._();
  @$core.override
  AlterTopicRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlterTopicRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlterTopicRequest>(create);
  static AlterTopicRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $3.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($3.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.OperationParams ensureOperationParams() => $_ensure(0);

  /// Topic path.
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  @$pb.TagNumber(3)
  AlterPartitioningSettings get alterPartitioningSettings => $_getN(2);
  @$pb.TagNumber(3)
  set alterPartitioningSettings(AlterPartitioningSettings value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAlterPartitioningSettings() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlterPartitioningSettings() => $_clearField(3);
  @$pb.TagNumber(3)
  AlterPartitioningSettings ensureAlterPartitioningSettings() => $_ensure(2);

  /// Retention settings.
  /// Currently, only one limit may be set, so other should not be set.
  ///
  /// How long data in partition should be stored. Must be greater than 0 and less than limit for this database.
  /// Default limit - 36 hours.
  @$pb.TagNumber(4)
  $2.Duration get setRetentionPeriod => $_getN(3);
  @$pb.TagNumber(4)
  set setRetentionPeriod($2.Duration value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSetRetentionPeriod() => $_has(3);
  @$pb.TagNumber(4)
  void clearSetRetentionPeriod() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.Duration ensureSetRetentionPeriod() => $_ensure(3);

  /// How much data in partition should be stored. Must be greater than 0 and less than limit for this database.
  @$pb.TagNumber(5)
  $fixnum.Int64 get setRetentionStorageMb => $_getI64(4);
  @$pb.TagNumber(5)
  set setRetentionStorageMb($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSetRetentionStorageMb() => $_has(4);
  @$pb.TagNumber(5)
  void clearSetRetentionStorageMb() => $_clearField(5);

  /// List of allowed codecs for writers.
  /// Writes with codec not from this list are forbidden.
  /// If empty, codec compatibility check for the topic is disabled.
  @$pb.TagNumber(7)
  SupportedCodecs get setSupportedCodecs => $_getN(5);
  @$pb.TagNumber(7)
  set setSupportedCodecs(SupportedCodecs value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSetSupportedCodecs() => $_has(5);
  @$pb.TagNumber(7)
  void clearSetSupportedCodecs() => $_clearField(7);
  @$pb.TagNumber(7)
  SupportedCodecs ensureSetSupportedCodecs() => $_ensure(5);

  /// Partition write speed in bytes per second. Must be less than database limit. Default limit - 1 MB/s.
  @$pb.TagNumber(8)
  $fixnum.Int64 get setPartitionWriteSpeedBytesPerSecond => $_getI64(6);
  @$pb.TagNumber(8)
  set setPartitionWriteSpeedBytesPerSecond($fixnum.Int64 value) =>
      $_setInt64(6, value);
  @$pb.TagNumber(8)
  $core.bool hasSetPartitionWriteSpeedBytesPerSecond() => $_has(6);
  @$pb.TagNumber(8)
  void clearSetPartitionWriteSpeedBytesPerSecond() => $_clearField(8);

  /// Burst size for write in partition, in bytes. Must be less than database limit. Default limit - 1 MB.
  @$pb.TagNumber(9)
  $fixnum.Int64 get setPartitionWriteBurstBytes => $_getI64(7);
  @$pb.TagNumber(9)
  set setPartitionWriteBurstBytes($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(9)
  $core.bool hasSetPartitionWriteBurstBytes() => $_has(7);
  @$pb.TagNumber(9)
  void clearSetPartitionWriteBurstBytes() => $_clearField(9);

  /// User and server attributes of topic. Server attributes starts from "_" and will be validated by server.
  /// Leave the value blank to drop an attribute.
  @$pb.TagNumber(10)
  $pb.PbMap<$core.String, $core.String> get alterAttributes => $_getMap(8);

  /// Add consumers.
  @$pb.TagNumber(11)
  $pb.PbList<Consumer> get addConsumers => $_getList(9);

  /// Remove consumers (by their names)
  @$pb.TagNumber(12)
  $pb.PbList<$core.String> get dropConsumers => $_getList(10);

  /// Alter consumers
  @$pb.TagNumber(13)
  $pb.PbList<AlterConsumer> get alterConsumers => $_getList(11);

  /// Set metering mode for topic in serverless database.
  @$pb.TagNumber(14)
  MeteringMode get setMeteringMode => $_getN(12);
  @$pb.TagNumber(14)
  set setMeteringMode(MeteringMode value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasSetMeteringMode() => $_has(12);
  @$pb.TagNumber(14)
  void clearSetMeteringMode() => $_clearField(14);
}

/// Update topic response sent from server to client.
class AlterTopicResponse extends $pb.GeneratedMessage {
  factory AlterTopicResponse({
    $3.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  AlterTopicResponse._();

  factory AlterTopicResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlterTopicResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlterTopicResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $3.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterTopicResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterTopicResponse copyWith(void Function(AlterTopicResponse) updates) =>
      super.copyWith((message) => updates(message as AlterTopicResponse))
          as AlterTopicResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlterTopicResponse create() => AlterTopicResponse._();
  @$core.override
  AlterTopicResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlterTopicResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlterTopicResponse>(create);
  static AlterTopicResponse? _defaultInstance;

  /// Result of request will be inside operation.
  @$pb.TagNumber(1)
  $3.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($3.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Operation ensureOperation() => $_ensure(0);
}

/// Update topic result message that will be inside UpdateTopicResponse.operation.
class AlterTopicResult extends $pb.GeneratedMessage {
  factory AlterTopicResult() => create();

  AlterTopicResult._();

  factory AlterTopicResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlterTopicResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlterTopicResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterTopicResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterTopicResult copyWith(void Function(AlterTopicResult) updates) =>
      super.copyWith((message) => updates(message as AlterTopicResult))
          as AlterTopicResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlterTopicResult create() => AlterTopicResult._();
  @$core.override
  AlterTopicResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlterTopicResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlterTopicResult>(create);
  static AlterTopicResult? _defaultInstance;
}

/// Drop topic request sent from client to server.
class DropTopicRequest extends $pb.GeneratedMessage {
  factory DropTopicRequest({
    $3.OperationParams? operationParams,
    $core.String? path,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (path != null) result.path = path;
    return result;
  }

  DropTopicRequest._();

  factory DropTopicRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DropTopicRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DropTopicRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $3.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DropTopicRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DropTopicRequest copyWith(void Function(DropTopicRequest) updates) =>
      super.copyWith((message) => updates(message as DropTopicRequest))
          as DropTopicRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DropTopicRequest create() => DropTopicRequest._();
  @$core.override
  DropTopicRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DropTopicRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DropTopicRequest>(create);
  static DropTopicRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $3.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($3.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.OperationParams ensureOperationParams() => $_ensure(0);

  /// Topic path.
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);
}

/// Drop topic response sent from server to client.
/// If topic not exists then response status will be "SCHEME_ERROR".
class DropTopicResponse extends $pb.GeneratedMessage {
  factory DropTopicResponse({
    $3.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  DropTopicResponse._();

  factory DropTopicResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DropTopicResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DropTopicResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..aOM<$3.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $3.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DropTopicResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DropTopicResponse copyWith(void Function(DropTopicResponse) updates) =>
      super.copyWith((message) => updates(message as DropTopicResponse))
          as DropTopicResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DropTopicResponse create() => DropTopicResponse._();
  @$core.override
  DropTopicResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DropTopicResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DropTopicResponse>(create);
  static DropTopicResponse? _defaultInstance;

  /// Result of request will be inside operation.
  @$pb.TagNumber(1)
  $3.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($3.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Operation ensureOperation() => $_ensure(0);
}

/// Drop topic result message that will be inside DropTopicResponse.operation.
class DropTopicResult extends $pb.GeneratedMessage {
  factory DropTopicResult() => create();

  DropTopicResult._();

  factory DropTopicResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DropTopicResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DropTopicResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Topic'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DropTopicResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DropTopicResult copyWith(void Function(DropTopicResult) updates) =>
      super.copyWith((message) => updates(message as DropTopicResult))
          as DropTopicResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DropTopicResult create() => DropTopicResult._();
  @$core.override
  DropTopicResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DropTopicResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DropTopicResult>(create);
  static DropTopicResult? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

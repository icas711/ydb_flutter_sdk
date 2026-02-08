// This is a generated file - do not edit.
//
// Generated from ydb_table.proto.

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
    as $1;
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as $5;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $4;

import 'ydb_common.pb.dart' as $9;
import 'ydb_formats.pb.dart' as $10;
import 'ydb_issue_message.pb.dart' as $8;
import 'ydb_operation.pb.dart' as $0;
import 'ydb_query_stats.pb.dart' as $7;
import 'ydb_scheme.pb.dart' as $6;
import 'ydb_status_codes.pbenum.dart' as $11;
import 'ydb_table.pbenum.dart';
import 'ydb_topic.pb.dart' as $2;
import 'ydb_value.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ydb_table.pbenum.dart';

/// Create new session
class CreateSessionRequest extends $pb.GeneratedMessage {
  factory CreateSessionRequest({
    $0.OperationParams? operationParams,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    return result;
  }

  CreateSessionRequest._();

  factory CreateSessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateSessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
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

  @$pb.TagNumber(1)
  $0.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($0.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.OperationParams ensureOperationParams() => $_ensure(0);
}

/// Create new session
class CreateSessionResponse extends $pb.GeneratedMessage {
  factory CreateSessionResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
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

  /// Holds CreateSessionResult in case of CreateSessionResult
  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class CreateSessionResult extends $pb.GeneratedMessage {
  factory CreateSessionResult({
    $core.String? sessionId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  CreateSessionResult._();

  factory CreateSessionResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateSessionResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateSessionResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSessionResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSessionResult copyWith(void Function(CreateSessionResult) updates) =>
      super.copyWith((message) => updates(message as CreateSessionResult))
          as CreateSessionResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionResult create() => CreateSessionResult._();
  @$core.override
  CreateSessionResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateSessionResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSessionResult>(create);
  static CreateSessionResult? _defaultInstance;

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
}

/// Delete session with given id string
class DeleteSessionRequest extends $pb.GeneratedMessage {
  factory DeleteSessionRequest({
    $core.String? sessionId,
    $0.OperationParams? operationParams,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (operationParams != null) result.operationParams = operationParams;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOM<$0.OperationParams>(2, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
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

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.OperationParams get operationParams => $_getN(1);
  @$pb.TagNumber(2)
  set operationParams($0.OperationParams value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOperationParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperationParams() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.OperationParams ensureOperationParams() => $_ensure(1);
}

class DeleteSessionResponse extends $pb.GeneratedMessage {
  factory DeleteSessionResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
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
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class GlobalIndex extends $pb.GeneratedMessage {
  factory GlobalIndex() => create();

  GlobalIndex._();

  factory GlobalIndex.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GlobalIndex.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GlobalIndex',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlobalIndex clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlobalIndex copyWith(void Function(GlobalIndex) updates) =>
      super.copyWith((message) => updates(message as GlobalIndex))
          as GlobalIndex;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GlobalIndex create() => GlobalIndex._();
  @$core.override
  GlobalIndex createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GlobalIndex getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GlobalIndex>(create);
  static GlobalIndex? _defaultInstance;
}

class GlobalAsyncIndex extends $pb.GeneratedMessage {
  factory GlobalAsyncIndex() => create();

  GlobalAsyncIndex._();

  factory GlobalAsyncIndex.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GlobalAsyncIndex.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GlobalAsyncIndex',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlobalAsyncIndex clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlobalAsyncIndex copyWith(void Function(GlobalAsyncIndex) updates) =>
      super.copyWith((message) => updates(message as GlobalAsyncIndex))
          as GlobalAsyncIndex;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GlobalAsyncIndex create() => GlobalAsyncIndex._();
  @$core.override
  GlobalAsyncIndex createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GlobalAsyncIndex getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GlobalAsyncIndex>(create);
  static GlobalAsyncIndex? _defaultInstance;
}

class GlobalUniqueIndex extends $pb.GeneratedMessage {
  factory GlobalUniqueIndex() => create();

  GlobalUniqueIndex._();

  factory GlobalUniqueIndex.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GlobalUniqueIndex.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GlobalUniqueIndex',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlobalUniqueIndex clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlobalUniqueIndex copyWith(void Function(GlobalUniqueIndex) updates) =>
      super.copyWith((message) => updates(message as GlobalUniqueIndex))
          as GlobalUniqueIndex;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GlobalUniqueIndex create() => GlobalUniqueIndex._();
  @$core.override
  GlobalUniqueIndex createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GlobalUniqueIndex getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GlobalUniqueIndex>(create);
  static GlobalUniqueIndex? _defaultInstance;
}

enum TableIndex_Type {
  globalIndex,
  globalAsyncIndex,
  globalUniqueIndex,
  notSet
}

/// Represent secondary index
class TableIndex extends $pb.GeneratedMessage {
  factory TableIndex({
    $core.String? name,
    $core.Iterable<$core.String>? indexColumns,
    GlobalIndex? globalIndex,
    GlobalAsyncIndex? globalAsyncIndex,
    $core.Iterable<$core.String>? dataColumns,
    GlobalUniqueIndex? globalUniqueIndex,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (indexColumns != null) result.indexColumns.addAll(indexColumns);
    if (globalIndex != null) result.globalIndex = globalIndex;
    if (globalAsyncIndex != null) result.globalAsyncIndex = globalAsyncIndex;
    if (dataColumns != null) result.dataColumns.addAll(dataColumns);
    if (globalUniqueIndex != null) result.globalUniqueIndex = globalUniqueIndex;
    return result;
  }

  TableIndex._();

  factory TableIndex.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TableIndex.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TableIndex_Type> _TableIndex_TypeByTag = {
    3: TableIndex_Type.globalIndex,
    4: TableIndex_Type.globalAsyncIndex,
    6: TableIndex_Type.globalUniqueIndex,
    0: TableIndex_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TableIndex',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 6])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(2, _omitFieldNames ? '' : 'indexColumns')
    ..aOM<GlobalIndex>(3, _omitFieldNames ? '' : 'globalIndex',
        subBuilder: GlobalIndex.create)
    ..aOM<GlobalAsyncIndex>(4, _omitFieldNames ? '' : 'globalAsyncIndex',
        subBuilder: GlobalAsyncIndex.create)
    ..pPS(5, _omitFieldNames ? '' : 'dataColumns')
    ..aOM<GlobalUniqueIndex>(6, _omitFieldNames ? '' : 'globalUniqueIndex',
        subBuilder: GlobalUniqueIndex.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TableIndex clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TableIndex copyWith(void Function(TableIndex) updates) =>
      super.copyWith((message) => updates(message as TableIndex)) as TableIndex;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TableIndex create() => TableIndex._();
  @$core.override
  TableIndex createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TableIndex getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TableIndex>(create);
  static TableIndex? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(6)
  TableIndex_Type whichType() => _TableIndex_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(6)
  void clearType() => $_clearField($_whichOneof(0));

  /// Name of index
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// list of columns
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get indexColumns => $_getList(1);

  @$pb.TagNumber(3)
  GlobalIndex get globalIndex => $_getN(2);
  @$pb.TagNumber(3)
  set globalIndex(GlobalIndex value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGlobalIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearGlobalIndex() => $_clearField(3);
  @$pb.TagNumber(3)
  GlobalIndex ensureGlobalIndex() => $_ensure(2);

  @$pb.TagNumber(4)
  GlobalAsyncIndex get globalAsyncIndex => $_getN(3);
  @$pb.TagNumber(4)
  set globalAsyncIndex(GlobalAsyncIndex value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasGlobalAsyncIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearGlobalAsyncIndex() => $_clearField(4);
  @$pb.TagNumber(4)
  GlobalAsyncIndex ensureGlobalAsyncIndex() => $_ensure(3);

  /// list of columns content to be copied in to index table
  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get dataColumns => $_getList(4);

  @$pb.TagNumber(6)
  GlobalUniqueIndex get globalUniqueIndex => $_getN(5);
  @$pb.TagNumber(6)
  set globalUniqueIndex(GlobalUniqueIndex value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasGlobalUniqueIndex() => $_has(5);
  @$pb.TagNumber(6)
  void clearGlobalUniqueIndex() => $_clearField(6);
  @$pb.TagNumber(6)
  GlobalUniqueIndex ensureGlobalUniqueIndex() => $_ensure(5);
}

enum TableIndexDescription_Type {
  globalIndex,
  globalAsyncIndex,
  globalUniqueIndex,
  notSet
}

/// Represent secondary index with index state
class TableIndexDescription extends $pb.GeneratedMessage {
  factory TableIndexDescription({
    $core.String? name,
    $core.Iterable<$core.String>? indexColumns,
    GlobalIndex? globalIndex,
    TableIndexDescription_Status? status,
    GlobalAsyncIndex? globalAsyncIndex,
    $core.Iterable<$core.String>? dataColumns,
    $fixnum.Int64? sizeBytes,
    GlobalUniqueIndex? globalUniqueIndex,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (indexColumns != null) result.indexColumns.addAll(indexColumns);
    if (globalIndex != null) result.globalIndex = globalIndex;
    if (status != null) result.status = status;
    if (globalAsyncIndex != null) result.globalAsyncIndex = globalAsyncIndex;
    if (dataColumns != null) result.dataColumns.addAll(dataColumns);
    if (sizeBytes != null) result.sizeBytes = sizeBytes;
    if (globalUniqueIndex != null) result.globalUniqueIndex = globalUniqueIndex;
    return result;
  }

  TableIndexDescription._();

  factory TableIndexDescription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TableIndexDescription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TableIndexDescription_Type>
      _TableIndexDescription_TypeByTag = {
    3: TableIndexDescription_Type.globalIndex,
    5: TableIndexDescription_Type.globalAsyncIndex,
    8: TableIndexDescription_Type.globalUniqueIndex,
    0: TableIndexDescription_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TableIndexDescription',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..oo(0, [3, 5, 8])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(2, _omitFieldNames ? '' : 'indexColumns')
    ..aOM<GlobalIndex>(3, _omitFieldNames ? '' : 'globalIndex',
        subBuilder: GlobalIndex.create)
    ..aE<TableIndexDescription_Status>(4, _omitFieldNames ? '' : 'status',
        enumValues: TableIndexDescription_Status.values)
    ..aOM<GlobalAsyncIndex>(5, _omitFieldNames ? '' : 'globalAsyncIndex',
        subBuilder: GlobalAsyncIndex.create)
    ..pPS(6, _omitFieldNames ? '' : 'dataColumns')
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'sizeBytes', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<GlobalUniqueIndex>(8, _omitFieldNames ? '' : 'globalUniqueIndex',
        subBuilder: GlobalUniqueIndex.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TableIndexDescription clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TableIndexDescription copyWith(
          void Function(TableIndexDescription) updates) =>
      super.copyWith((message) => updates(message as TableIndexDescription))
          as TableIndexDescription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TableIndexDescription create() => TableIndexDescription._();
  @$core.override
  TableIndexDescription createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TableIndexDescription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TableIndexDescription>(create);
  static TableIndexDescription? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(5)
  @$pb.TagNumber(8)
  TableIndexDescription_Type whichType() =>
      _TableIndexDescription_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(5)
  @$pb.TagNumber(8)
  void clearType() => $_clearField($_whichOneof(0));

  /// Name of index
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// list of columns
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get indexColumns => $_getList(1);

  @$pb.TagNumber(3)
  GlobalIndex get globalIndex => $_getN(2);
  @$pb.TagNumber(3)
  set globalIndex(GlobalIndex value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGlobalIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearGlobalIndex() => $_clearField(3);
  @$pb.TagNumber(3)
  GlobalIndex ensureGlobalIndex() => $_ensure(2);

  @$pb.TagNumber(4)
  TableIndexDescription_Status get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(TableIndexDescription_Status value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => $_clearField(4);

  @$pb.TagNumber(5)
  GlobalAsyncIndex get globalAsyncIndex => $_getN(4);
  @$pb.TagNumber(5)
  set globalAsyncIndex(GlobalAsyncIndex value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasGlobalAsyncIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearGlobalAsyncIndex() => $_clearField(5);
  @$pb.TagNumber(5)
  GlobalAsyncIndex ensureGlobalAsyncIndex() => $_ensure(4);

  /// list of columns content to be copied in to index table
  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get dataColumns => $_getList(5);

  /// Size of index data in bytes
  @$pb.TagNumber(7)
  $fixnum.Int64 get sizeBytes => $_getI64(6);
  @$pb.TagNumber(7)
  set sizeBytes($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSizeBytes() => $_has(6);
  @$pb.TagNumber(7)
  void clearSizeBytes() => $_clearField(7);

  @$pb.TagNumber(8)
  GlobalUniqueIndex get globalUniqueIndex => $_getN(7);
  @$pb.TagNumber(8)
  set globalUniqueIndex(GlobalUniqueIndex value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasGlobalUniqueIndex() => $_has(7);
  @$pb.TagNumber(8)
  void clearGlobalUniqueIndex() => $_clearField(8);
  @$pb.TagNumber(8)
  GlobalUniqueIndex ensureGlobalUniqueIndex() => $_ensure(7);
}

/// State of index building operation
class IndexBuildState extends $pb.GeneratedMessage {
  factory IndexBuildState() => create();

  IndexBuildState._();

  factory IndexBuildState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IndexBuildState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IndexBuildState',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IndexBuildState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IndexBuildState copyWith(void Function(IndexBuildState) updates) =>
      super.copyWith((message) => updates(message as IndexBuildState))
          as IndexBuildState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IndexBuildState create() => IndexBuildState._();
  @$core.override
  IndexBuildState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IndexBuildState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IndexBuildState>(create);
  static IndexBuildState? _defaultInstance;
}

/// Description of index building operation
class IndexBuildDescription extends $pb.GeneratedMessage {
  factory IndexBuildDescription({
    $core.String? path,
    TableIndex? index,
  }) {
    final result = create();
    if (path != null) result.path = path;
    if (index != null) result.index = index;
    return result;
  }

  IndexBuildDescription._();

  factory IndexBuildDescription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IndexBuildDescription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IndexBuildDescription',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aOM<TableIndex>(2, _omitFieldNames ? '' : 'index',
        subBuilder: TableIndex.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IndexBuildDescription clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IndexBuildDescription copyWith(
          void Function(IndexBuildDescription) updates) =>
      super.copyWith((message) => updates(message as IndexBuildDescription))
          as IndexBuildDescription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IndexBuildDescription create() => IndexBuildDescription._();
  @$core.override
  IndexBuildDescription createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IndexBuildDescription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IndexBuildDescription>(create);
  static IndexBuildDescription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);

  @$pb.TagNumber(2)
  TableIndex get index => $_getN(1);
  @$pb.TagNumber(2)
  set index(TableIndex value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => $_clearField(2);
  @$pb.TagNumber(2)
  TableIndex ensureIndex() => $_ensure(1);
}

class IndexBuildMetadata extends $pb.GeneratedMessage {
  factory IndexBuildMetadata({
    IndexBuildDescription? description,
    IndexBuildState_State? state,
    $core.double? progress,
  }) {
    final result = create();
    if (description != null) result.description = description;
    if (state != null) result.state = state;
    if (progress != null) result.progress = progress;
    return result;
  }

  IndexBuildMetadata._();

  factory IndexBuildMetadata.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IndexBuildMetadata.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IndexBuildMetadata',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<IndexBuildDescription>(1, _omitFieldNames ? '' : 'description',
        subBuilder: IndexBuildDescription.create)
    ..aE<IndexBuildState_State>(2, _omitFieldNames ? '' : 'state',
        enumValues: IndexBuildState_State.values)
    ..aD(3, _omitFieldNames ? '' : 'progress', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IndexBuildMetadata clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IndexBuildMetadata copyWith(void Function(IndexBuildMetadata) updates) =>
      super.copyWith((message) => updates(message as IndexBuildMetadata))
          as IndexBuildMetadata;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IndexBuildMetadata create() => IndexBuildMetadata._();
  @$core.override
  IndexBuildMetadata createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IndexBuildMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IndexBuildMetadata>(create);
  static IndexBuildMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  IndexBuildDescription get description => $_getN(0);
  @$pb.TagNumber(1)
  set description(IndexBuildDescription value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => $_clearField(1);
  @$pb.TagNumber(1)
  IndexBuildDescription ensureDescription() => $_ensure(0);

  @$pb.TagNumber(2)
  IndexBuildState_State get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(IndexBuildState_State value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get progress => $_getN(2);
  @$pb.TagNumber(3)
  set progress($core.double value) => $_setFloat(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProgress() => $_has(2);
  @$pb.TagNumber(3)
  void clearProgress() => $_clearField(3);
}

class ChangefeedMode extends $pb.GeneratedMessage {
  factory ChangefeedMode() => create();

  ChangefeedMode._();

  factory ChangefeedMode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChangefeedMode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChangefeedMode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangefeedMode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangefeedMode copyWith(void Function(ChangefeedMode) updates) =>
      super.copyWith((message) => updates(message as ChangefeedMode))
          as ChangefeedMode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangefeedMode create() => ChangefeedMode._();
  @$core.override
  ChangefeedMode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChangefeedMode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangefeedMode>(create);
  static ChangefeedMode? _defaultInstance;
}

class ChangefeedFormat extends $pb.GeneratedMessage {
  factory ChangefeedFormat() => create();

  ChangefeedFormat._();

  factory ChangefeedFormat.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChangefeedFormat.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChangefeedFormat',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangefeedFormat clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangefeedFormat copyWith(void Function(ChangefeedFormat) updates) =>
      super.copyWith((message) => updates(message as ChangefeedFormat))
          as ChangefeedFormat;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangefeedFormat create() => ChangefeedFormat._();
  @$core.override
  ChangefeedFormat createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChangefeedFormat getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangefeedFormat>(create);
  static ChangefeedFormat? _defaultInstance;
}

class Changefeed extends $pb.GeneratedMessage {
  factory Changefeed({
    $core.String? name,
    ChangefeedMode_Mode? mode,
    ChangefeedFormat_Format? format,
    $1.Duration? retentionPeriod,
    $core.bool? virtualTimestamps,
    $core.bool? initialScan,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? attributes,
    $core.String? awsRegion,
    $1.Duration? resolvedTimestampsInterval,
    $2.PartitioningSettings? topicPartitioningSettings,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (mode != null) result.mode = mode;
    if (format != null) result.format = format;
    if (retentionPeriod != null) result.retentionPeriod = retentionPeriod;
    if (virtualTimestamps != null) result.virtualTimestamps = virtualTimestamps;
    if (initialScan != null) result.initialScan = initialScan;
    if (attributes != null) result.attributes.addEntries(attributes);
    if (awsRegion != null) result.awsRegion = awsRegion;
    if (resolvedTimestampsInterval != null)
      result.resolvedTimestampsInterval = resolvedTimestampsInterval;
    if (topicPartitioningSettings != null)
      result.topicPartitioningSettings = topicPartitioningSettings;
    return result;
  }

  Changefeed._();

  factory Changefeed.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Changefeed.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Changefeed',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aE<ChangefeedMode_Mode>(2, _omitFieldNames ? '' : 'mode',
        enumValues: ChangefeedMode_Mode.values)
    ..aE<ChangefeedFormat_Format>(3, _omitFieldNames ? '' : 'format',
        enumValues: ChangefeedFormat_Format.values)
    ..aOM<$1.Duration>(4, _omitFieldNames ? '' : 'retentionPeriod',
        subBuilder: $1.Duration.create)
    ..aOB(5, _omitFieldNames ? '' : 'virtualTimestamps')
    ..aOB(6, _omitFieldNames ? '' : 'initialScan')
    ..m<$core.String, $core.String>(7, _omitFieldNames ? '' : 'attributes',
        entryClassName: 'Changefeed.AttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..aOS(8, _omitFieldNames ? '' : 'awsRegion')
    ..aOM<$1.Duration>(9, _omitFieldNames ? '' : 'resolvedTimestampsInterval',
        subBuilder: $1.Duration.create)
    ..aOM<$2.PartitioningSettings>(
        10, _omitFieldNames ? '' : 'topicPartitioningSettings',
        subBuilder: $2.PartitioningSettings.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Changefeed clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Changefeed copyWith(void Function(Changefeed) updates) =>
      super.copyWith((message) => updates(message as Changefeed)) as Changefeed;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Changefeed create() => Changefeed._();
  @$core.override
  Changefeed createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Changefeed getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Changefeed>(create);
  static Changefeed? _defaultInstance;

  /// Name of the feed
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Mode specifies the information that will be written to the feed
  @$pb.TagNumber(2)
  ChangefeedMode_Mode get mode => $_getN(1);
  @$pb.TagNumber(2)
  set mode(ChangefeedMode_Mode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => $_clearField(2);

  /// Format of the data
  @$pb.TagNumber(3)
  ChangefeedFormat_Format get format => $_getN(2);
  @$pb.TagNumber(3)
  set format(ChangefeedFormat_Format value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFormat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFormat() => $_clearField(3);

  /// How long data in changefeed's underlying topic should be stored
  @$pb.TagNumber(4)
  $1.Duration get retentionPeriod => $_getN(3);
  @$pb.TagNumber(4)
  set retentionPeriod($1.Duration value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRetentionPeriod() => $_has(3);
  @$pb.TagNumber(4)
  void clearRetentionPeriod() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Duration ensureRetentionPeriod() => $_ensure(3);

  /// Emit virtual timestamps of changes along with data or not
  @$pb.TagNumber(5)
  $core.bool get virtualTimestamps => $_getBF(4);
  @$pb.TagNumber(5)
  set virtualTimestamps($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVirtualTimestamps() => $_has(4);
  @$pb.TagNumber(5)
  void clearVirtualTimestamps() => $_clearField(5);

  /// Initial scan will output the current state of the table first
  @$pb.TagNumber(6)
  $core.bool get initialScan => $_getBF(5);
  @$pb.TagNumber(6)
  set initialScan($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasInitialScan() => $_has(5);
  @$pb.TagNumber(6)
  void clearInitialScan() => $_clearField(6);

  /// Attributes. Total size is limited to 10 KB.
  @$pb.TagNumber(7)
  $pb.PbMap<$core.String, $core.String> get attributes => $_getMap(6);

  /// Value that will be emitted in the `awsRegion` field of the record in DYNAMODB_STREAMS_JSON format
  @$pb.TagNumber(8)
  $core.String get awsRegion => $_getSZ(7);
  @$pb.TagNumber(8)
  set awsRegion($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasAwsRegion() => $_has(7);
  @$pb.TagNumber(8)
  void clearAwsRegion() => $_clearField(8);

  /// Periodically emit resolved timestamps. If unspecified, resolved timestamps are not emitted.
  @$pb.TagNumber(9)
  $1.Duration get resolvedTimestampsInterval => $_getN(8);
  @$pb.TagNumber(9)
  set resolvedTimestampsInterval($1.Duration value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasResolvedTimestampsInterval() => $_has(8);
  @$pb.TagNumber(9)
  void clearResolvedTimestampsInterval() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.Duration ensureResolvedTimestampsInterval() => $_ensure(8);

  /// Partitioning settings of underlying topic.
  @$pb.TagNumber(10)
  $2.PartitioningSettings get topicPartitioningSettings => $_getN(9);
  @$pb.TagNumber(10)
  set topicPartitioningSettings($2.PartitioningSettings value) =>
      $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasTopicPartitioningSettings() => $_has(9);
  @$pb.TagNumber(10)
  void clearTopicPartitioningSettings() => $_clearField(10);
  @$pb.TagNumber(10)
  $2.PartitioningSettings ensureTopicPartitioningSettings() => $_ensure(9);
}

class ChangefeedDescription extends $pb.GeneratedMessage {
  factory ChangefeedDescription({
    $core.String? name,
    ChangefeedMode_Mode? mode,
    ChangefeedFormat_Format? format,
    ChangefeedDescription_State? state,
    $core.bool? virtualTimestamps,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? attributes,
    $core.String? awsRegion,
    $1.Duration? resolvedTimestampsInterval,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (mode != null) result.mode = mode;
    if (format != null) result.format = format;
    if (state != null) result.state = state;
    if (virtualTimestamps != null) result.virtualTimestamps = virtualTimestamps;
    if (attributes != null) result.attributes.addEntries(attributes);
    if (awsRegion != null) result.awsRegion = awsRegion;
    if (resolvedTimestampsInterval != null)
      result.resolvedTimestampsInterval = resolvedTimestampsInterval;
    return result;
  }

  ChangefeedDescription._();

  factory ChangefeedDescription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChangefeedDescription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChangefeedDescription',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aE<ChangefeedMode_Mode>(2, _omitFieldNames ? '' : 'mode',
        enumValues: ChangefeedMode_Mode.values)
    ..aE<ChangefeedFormat_Format>(3, _omitFieldNames ? '' : 'format',
        enumValues: ChangefeedFormat_Format.values)
    ..aE<ChangefeedDescription_State>(4, _omitFieldNames ? '' : 'state',
        enumValues: ChangefeedDescription_State.values)
    ..aOB(5, _omitFieldNames ? '' : 'virtualTimestamps')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'attributes',
        entryClassName: 'ChangefeedDescription.AttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..aOS(7, _omitFieldNames ? '' : 'awsRegion')
    ..aOM<$1.Duration>(8, _omitFieldNames ? '' : 'resolvedTimestampsInterval',
        subBuilder: $1.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangefeedDescription clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangefeedDescription copyWith(
          void Function(ChangefeedDescription) updates) =>
      super.copyWith((message) => updates(message as ChangefeedDescription))
          as ChangefeedDescription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangefeedDescription create() => ChangefeedDescription._();
  @$core.override
  ChangefeedDescription createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChangefeedDescription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangefeedDescription>(create);
  static ChangefeedDescription? _defaultInstance;

  /// Name of the feed
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Mode specifies the information that will be written to the feed
  @$pb.TagNumber(2)
  ChangefeedMode_Mode get mode => $_getN(1);
  @$pb.TagNumber(2)
  set mode(ChangefeedMode_Mode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => $_clearField(2);

  /// Format of the data
  @$pb.TagNumber(3)
  ChangefeedFormat_Format get format => $_getN(2);
  @$pb.TagNumber(3)
  set format(ChangefeedFormat_Format value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFormat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFormat() => $_clearField(3);

  /// State of the feed
  @$pb.TagNumber(4)
  ChangefeedDescription_State get state => $_getN(3);
  @$pb.TagNumber(4)
  set state(ChangefeedDescription_State value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(4)
  void clearState() => $_clearField(4);

  /// State of emitting of virtual timestamps along with data
  @$pb.TagNumber(5)
  $core.bool get virtualTimestamps => $_getBF(4);
  @$pb.TagNumber(5)
  set virtualTimestamps($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVirtualTimestamps() => $_has(4);
  @$pb.TagNumber(5)
  void clearVirtualTimestamps() => $_clearField(5);

  /// Attributes
  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $core.String> get attributes => $_getMap(5);

  /// Value that will be emitted in the `awsRegion` field of the record in DYNAMODB_STREAMS_JSON format
  @$pb.TagNumber(7)
  $core.String get awsRegion => $_getSZ(6);
  @$pb.TagNumber(7)
  set awsRegion($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAwsRegion() => $_has(6);
  @$pb.TagNumber(7)
  void clearAwsRegion() => $_clearField(7);

  /// Interval of emitting of resolved timestamps. If unspecified, resolved timestamps are not emitted.
  @$pb.TagNumber(8)
  $1.Duration get resolvedTimestampsInterval => $_getN(7);
  @$pb.TagNumber(8)
  set resolvedTimestampsInterval($1.Duration value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasResolvedTimestampsInterval() => $_has(7);
  @$pb.TagNumber(8)
  void clearResolvedTimestampsInterval() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.Duration ensureResolvedTimestampsInterval() => $_ensure(7);
}

class StoragePool extends $pb.GeneratedMessage {
  factory StoragePool({
    $core.String? media,
  }) {
    final result = create();
    if (media != null) result.media = media;
    return result;
  }

  StoragePool._();

  factory StoragePool.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StoragePool.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StoragePool',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'media')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StoragePool clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StoragePool copyWith(void Function(StoragePool) updates) =>
      super.copyWith((message) => updates(message as StoragePool))
          as StoragePool;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoragePool create() => StoragePool._();
  @$core.override
  StoragePool createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StoragePool getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StoragePool>(create);
  static StoragePool? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get media => $_getSZ(0);
  @$pb.TagNumber(1)
  set media($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMedia() => $_has(0);
  @$pb.TagNumber(1)
  void clearMedia() => $_clearField(1);
}

class StoragePolicy extends $pb.GeneratedMessage {
  factory StoragePolicy({
    $core.String? presetName,
    StoragePool? syslog,
    StoragePool? log,
    StoragePool? data,
    StoragePool? external,
    $9.FeatureFlag_Status? keepInMemory,
    $core.Iterable<ColumnFamilyPolicy>? columnFamilies,
  }) {
    final result = create();
    if (presetName != null) result.presetName = presetName;
    if (syslog != null) result.syslog = syslog;
    if (log != null) result.log = log;
    if (data != null) result.data = data;
    if (external != null) result.external = external;
    if (keepInMemory != null) result.keepInMemory = keepInMemory;
    if (columnFamilies != null) result.columnFamilies.addAll(columnFamilies);
    return result;
  }

  StoragePolicy._();

  factory StoragePolicy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StoragePolicy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StoragePolicy',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'presetName')
    ..aOM<StoragePool>(2, _omitFieldNames ? '' : 'syslog',
        subBuilder: StoragePool.create)
    ..aOM<StoragePool>(3, _omitFieldNames ? '' : 'log',
        subBuilder: StoragePool.create)
    ..aOM<StoragePool>(4, _omitFieldNames ? '' : 'data',
        subBuilder: StoragePool.create)
    ..aOM<StoragePool>(5, _omitFieldNames ? '' : 'external',
        subBuilder: StoragePool.create)
    ..aE<$9.FeatureFlag_Status>(6, _omitFieldNames ? '' : 'keepInMemory',
        enumValues: $9.FeatureFlag_Status.values)
    ..pPM<ColumnFamilyPolicy>(7, _omitFieldNames ? '' : 'columnFamilies',
        subBuilder: ColumnFamilyPolicy.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StoragePolicy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StoragePolicy copyWith(void Function(StoragePolicy) updates) =>
      super.copyWith((message) => updates(message as StoragePolicy))
          as StoragePolicy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoragePolicy create() => StoragePolicy._();
  @$core.override
  StoragePolicy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StoragePolicy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StoragePolicy>(create);
  static StoragePolicy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get presetName => $_getSZ(0);
  @$pb.TagNumber(1)
  set presetName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPresetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPresetName() => $_clearField(1);

  @$pb.TagNumber(2)
  StoragePool get syslog => $_getN(1);
  @$pb.TagNumber(2)
  set syslog(StoragePool value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSyslog() => $_has(1);
  @$pb.TagNumber(2)
  void clearSyslog() => $_clearField(2);
  @$pb.TagNumber(2)
  StoragePool ensureSyslog() => $_ensure(1);

  @$pb.TagNumber(3)
  StoragePool get log => $_getN(2);
  @$pb.TagNumber(3)
  set log(StoragePool value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLog() => $_has(2);
  @$pb.TagNumber(3)
  void clearLog() => $_clearField(3);
  @$pb.TagNumber(3)
  StoragePool ensureLog() => $_ensure(2);

  @$pb.TagNumber(4)
  StoragePool get data => $_getN(3);
  @$pb.TagNumber(4)
  set data(StoragePool value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasData() => $_has(3);
  @$pb.TagNumber(4)
  void clearData() => $_clearField(4);
  @$pb.TagNumber(4)
  StoragePool ensureData() => $_ensure(3);

  @$pb.TagNumber(5)
  StoragePool get external => $_getN(4);
  @$pb.TagNumber(5)
  set external(StoragePool value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExternal() => $_has(4);
  @$pb.TagNumber(5)
  void clearExternal() => $_clearField(5);
  @$pb.TagNumber(5)
  StoragePool ensureExternal() => $_ensure(4);

  @$pb.TagNumber(6)
  $9.FeatureFlag_Status get keepInMemory => $_getN(5);
  @$pb.TagNumber(6)
  set keepInMemory($9.FeatureFlag_Status value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasKeepInMemory() => $_has(5);
  @$pb.TagNumber(6)
  void clearKeepInMemory() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<ColumnFamilyPolicy> get columnFamilies => $_getList(6);
}

class ColumnFamilyPolicy extends $pb.GeneratedMessage {
  factory ColumnFamilyPolicy({
    $core.String? name,
    StoragePool? data,
    StoragePool? external,
    $9.FeatureFlag_Status? keepInMemory,
    ColumnFamilyPolicy_Compression? compression,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (data != null) result.data = data;
    if (external != null) result.external = external;
    if (keepInMemory != null) result.keepInMemory = keepInMemory;
    if (compression != null) result.compression = compression;
    return result;
  }

  ColumnFamilyPolicy._();

  factory ColumnFamilyPolicy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ColumnFamilyPolicy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColumnFamilyPolicy',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<StoragePool>(2, _omitFieldNames ? '' : 'data',
        subBuilder: StoragePool.create)
    ..aOM<StoragePool>(3, _omitFieldNames ? '' : 'external',
        subBuilder: StoragePool.create)
    ..aE<$9.FeatureFlag_Status>(4, _omitFieldNames ? '' : 'keepInMemory',
        enumValues: $9.FeatureFlag_Status.values)
    ..aE<ColumnFamilyPolicy_Compression>(
        5, _omitFieldNames ? '' : 'compression',
        enumValues: ColumnFamilyPolicy_Compression.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColumnFamilyPolicy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColumnFamilyPolicy copyWith(void Function(ColumnFamilyPolicy) updates) =>
      super.copyWith((message) => updates(message as ColumnFamilyPolicy))
          as ColumnFamilyPolicy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColumnFamilyPolicy create() => ColumnFamilyPolicy._();
  @$core.override
  ColumnFamilyPolicy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ColumnFamilyPolicy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ColumnFamilyPolicy>(create);
  static ColumnFamilyPolicy? _defaultInstance;

  /// Name of the column family, the name "default" must be used for the
  /// primary column family that contains as least primary key columns
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Storage settings for the column group (default to values in storage policy)
  @$pb.TagNumber(2)
  StoragePool get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(StoragePool value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  StoragePool ensureData() => $_ensure(1);

  @$pb.TagNumber(3)
  StoragePool get external => $_getN(2);
  @$pb.TagNumber(3)
  set external(StoragePool value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasExternal() => $_has(2);
  @$pb.TagNumber(3)
  void clearExternal() => $_clearField(3);
  @$pb.TagNumber(3)
  StoragePool ensureExternal() => $_ensure(2);

  /// When enabled table data will be kept in memory
  /// WARNING: DO NOT USE
  @$pb.TagNumber(4)
  $9.FeatureFlag_Status get keepInMemory => $_getN(3);
  @$pb.TagNumber(4)
  set keepInMemory($9.FeatureFlag_Status value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasKeepInMemory() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeepInMemory() => $_clearField(4);

  /// Optionally specify whether data should be compressed
  @$pb.TagNumber(5)
  ColumnFamilyPolicy_Compression get compression => $_getN(4);
  @$pb.TagNumber(5)
  set compression(ColumnFamilyPolicy_Compression value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCompression() => $_has(4);
  @$pb.TagNumber(5)
  void clearCompression() => $_clearField(5);
}

class CompactionPolicy extends $pb.GeneratedMessage {
  factory CompactionPolicy({
    $core.String? presetName,
  }) {
    final result = create();
    if (presetName != null) result.presetName = presetName;
    return result;
  }

  CompactionPolicy._();

  factory CompactionPolicy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CompactionPolicy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CompactionPolicy',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'presetName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompactionPolicy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompactionPolicy copyWith(void Function(CompactionPolicy) updates) =>
      super.copyWith((message) => updates(message as CompactionPolicy))
          as CompactionPolicy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompactionPolicy create() => CompactionPolicy._();
  @$core.override
  CompactionPolicy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CompactionPolicy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CompactionPolicy>(create);
  static CompactionPolicy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get presetName => $_getSZ(0);
  @$pb.TagNumber(1)
  set presetName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPresetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPresetName() => $_clearField(1);
}

class ExplicitPartitions extends $pb.GeneratedMessage {
  factory ExplicitPartitions({
    $core.Iterable<$3.TypedValue>? splitPoints,
  }) {
    final result = create();
    if (splitPoints != null) result.splitPoints.addAll(splitPoints);
    return result;
  }

  ExplicitPartitions._();

  factory ExplicitPartitions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExplicitPartitions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExplicitPartitions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..pPM<$3.TypedValue>(1, _omitFieldNames ? '' : 'splitPoints',
        subBuilder: $3.TypedValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExplicitPartitions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExplicitPartitions copyWith(void Function(ExplicitPartitions) updates) =>
      super.copyWith((message) => updates(message as ExplicitPartitions))
          as ExplicitPartitions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExplicitPartitions create() => ExplicitPartitions._();
  @$core.override
  ExplicitPartitions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExplicitPartitions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExplicitPartitions>(create);
  static ExplicitPartitions? _defaultInstance;

  /// Specify key values used to split table into partitions.
  /// Each value becomes the first key of a new partition.
  /// Key values should go in ascending order.
  /// Total number of created partitions is number of specified
  /// keys + 1.
  @$pb.TagNumber(1)
  $pb.PbList<$3.TypedValue> get splitPoints => $_getList(0);
}

class PartitionStats extends $pb.GeneratedMessage {
  factory PartitionStats({
    $fixnum.Int64? rowsEstimate,
    $fixnum.Int64? storeSize,
    $core.int? leaderNodeId,
  }) {
    final result = create();
    if (rowsEstimate != null) result.rowsEstimate = rowsEstimate;
    if (storeSize != null) result.storeSize = storeSize;
    if (leaderNodeId != null) result.leaderNodeId = leaderNodeId;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'rowsEstimate', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'storeSize', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(3, _omitFieldNames ? '' : 'leaderNodeId',
        fieldType: $pb.PbFieldType.OU3)
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

  /// Approximate number of rows in shard
  @$pb.TagNumber(1)
  $fixnum.Int64 get rowsEstimate => $_getI64(0);
  @$pb.TagNumber(1)
  set rowsEstimate($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRowsEstimate() => $_has(0);
  @$pb.TagNumber(1)
  void clearRowsEstimate() => $_clearField(1);

  /// Approximate size of shard (bytes)
  @$pb.TagNumber(2)
  $fixnum.Int64 get storeSize => $_getI64(1);
  @$pb.TagNumber(2)
  set storeSize($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStoreSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreSize() => $_clearField(2);

  /// id of node that serve shard key range
  @$pb.TagNumber(3)
  $core.int get leaderNodeId => $_getIZ(2);
  @$pb.TagNumber(3)
  set leaderNodeId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLeaderNodeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearLeaderNodeId() => $_clearField(3);
}

class TableStats extends $pb.GeneratedMessage {
  factory TableStats({
    $core.Iterable<PartitionStats>? partitionStats,
    $fixnum.Int64? rowsEstimate,
    $fixnum.Int64? storeSize,
    $fixnum.Int64? partitions,
    $4.Timestamp? creationTime,
    $4.Timestamp? modificationTime,
  }) {
    final result = create();
    if (partitionStats != null) result.partitionStats.addAll(partitionStats);
    if (rowsEstimate != null) result.rowsEstimate = rowsEstimate;
    if (storeSize != null) result.storeSize = storeSize;
    if (partitions != null) result.partitions = partitions;
    if (creationTime != null) result.creationTime = creationTime;
    if (modificationTime != null) result.modificationTime = modificationTime;
    return result;
  }

  TableStats._();

  factory TableStats.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TableStats.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TableStats',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..pPM<PartitionStats>(1, _omitFieldNames ? '' : 'partitionStats',
        subBuilder: PartitionStats.create)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'rowsEstimate', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'storeSize', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'partitions', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$4.Timestamp>(5, _omitFieldNames ? '' : 'creationTime',
        subBuilder: $4.Timestamp.create)
    ..aOM<$4.Timestamp>(6, _omitFieldNames ? '' : 'modificationTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TableStats clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TableStats copyWith(void Function(TableStats) updates) =>
      super.copyWith((message) => updates(message as TableStats)) as TableStats;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TableStats create() => TableStats._();
  @$core.override
  TableStats createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TableStats getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TableStats>(create);
  static TableStats? _defaultInstance;

  /// Stats for each partition
  @$pb.TagNumber(1)
  $pb.PbList<PartitionStats> get partitionStats => $_getList(0);

  /// Approximate number of rows in table
  @$pb.TagNumber(2)
  $fixnum.Int64 get rowsEstimate => $_getI64(1);
  @$pb.TagNumber(2)
  set rowsEstimate($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRowsEstimate() => $_has(1);
  @$pb.TagNumber(2)
  void clearRowsEstimate() => $_clearField(2);

  /// Approximate size of table (bytes)
  @$pb.TagNumber(3)
  $fixnum.Int64 get storeSize => $_getI64(2);
  @$pb.TagNumber(3)
  set storeSize($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStoreSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearStoreSize() => $_clearField(3);

  /// Number of partitions in table
  @$pb.TagNumber(4)
  $fixnum.Int64 get partitions => $_getI64(3);
  @$pb.TagNumber(4)
  set partitions($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPartitions() => $_has(3);
  @$pb.TagNumber(4)
  void clearPartitions() => $_clearField(4);

  /// Timestamp of table creation
  @$pb.TagNumber(5)
  $4.Timestamp get creationTime => $_getN(4);
  @$pb.TagNumber(5)
  set creationTime($4.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCreationTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreationTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.Timestamp ensureCreationTime() => $_ensure(4);

  /// Timestamp of last modification
  @$pb.TagNumber(6)
  $4.Timestamp get modificationTime => $_getN(5);
  @$pb.TagNumber(6)
  set modificationTime($4.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasModificationTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearModificationTime() => $_clearField(6);
  @$pb.TagNumber(6)
  $4.Timestamp ensureModificationTime() => $_ensure(5);
}

enum PartitioningPolicy_Partitions {
  uniformPartitions,
  explicitPartitions,
  notSet
}

class PartitioningPolicy extends $pb.GeneratedMessage {
  factory PartitioningPolicy({
    $core.String? presetName,
    PartitioningPolicy_AutoPartitioningPolicy? autoPartitioning,
    $fixnum.Int64? uniformPartitions,
    ExplicitPartitions? explicitPartitions,
  }) {
    final result = create();
    if (presetName != null) result.presetName = presetName;
    if (autoPartitioning != null) result.autoPartitioning = autoPartitioning;
    if (uniformPartitions != null) result.uniformPartitions = uniformPartitions;
    if (explicitPartitions != null)
      result.explicitPartitions = explicitPartitions;
    return result;
  }

  PartitioningPolicy._();

  factory PartitioningPolicy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PartitioningPolicy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PartitioningPolicy_Partitions>
      _PartitioningPolicy_PartitionsByTag = {
    3: PartitioningPolicy_Partitions.uniformPartitions,
    4: PartitioningPolicy_Partitions.explicitPartitions,
    0: PartitioningPolicy_Partitions.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PartitioningPolicy',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'presetName')
    ..aE<PartitioningPolicy_AutoPartitioningPolicy>(
        2, _omitFieldNames ? '' : 'autoPartitioning',
        enumValues: PartitioningPolicy_AutoPartitioningPolicy.values)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'uniformPartitions', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<ExplicitPartitions>(4, _omitFieldNames ? '' : 'explicitPartitions',
        subBuilder: ExplicitPartitions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitioningPolicy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitioningPolicy copyWith(void Function(PartitioningPolicy) updates) =>
      super.copyWith((message) => updates(message as PartitioningPolicy))
          as PartitioningPolicy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartitioningPolicy create() => PartitioningPolicy._();
  @$core.override
  PartitioningPolicy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PartitioningPolicy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PartitioningPolicy>(create);
  static PartitioningPolicy? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  PartitioningPolicy_Partitions whichPartitions() =>
      _PartitioningPolicy_PartitionsByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearPartitions() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get presetName => $_getSZ(0);
  @$pb.TagNumber(1)
  set presetName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPresetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPresetName() => $_clearField(1);

  @$pb.TagNumber(2)
  PartitioningPolicy_AutoPartitioningPolicy get autoPartitioning => $_getN(1);
  @$pb.TagNumber(2)
  set autoPartitioning(PartitioningPolicy_AutoPartitioningPolicy value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAutoPartitioning() => $_has(1);
  @$pb.TagNumber(2)
  void clearAutoPartitioning() => $_clearField(2);

  /// Allows to enable uniform sharding using given shards number.
  /// The first components of primary key must have Uint32/Uint64 type.
  @$pb.TagNumber(3)
  $fixnum.Int64 get uniformPartitions => $_getI64(2);
  @$pb.TagNumber(3)
  set uniformPartitions($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUniformPartitions() => $_has(2);
  @$pb.TagNumber(3)
  void clearUniformPartitions() => $_clearField(3);

  /// Explicitly specify key values which are used as borders for
  /// created partitions.
  @$pb.TagNumber(4)
  ExplicitPartitions get explicitPartitions => $_getN(3);
  @$pb.TagNumber(4)
  set explicitPartitions(ExplicitPartitions value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasExplicitPartitions() => $_has(3);
  @$pb.TagNumber(4)
  void clearExplicitPartitions() => $_clearField(4);
  @$pb.TagNumber(4)
  ExplicitPartitions ensureExplicitPartitions() => $_ensure(3);
}

class ExecutionPolicy extends $pb.GeneratedMessage {
  factory ExecutionPolicy({
    $core.String? presetName,
  }) {
    final result = create();
    if (presetName != null) result.presetName = presetName;
    return result;
  }

  ExecutionPolicy._();

  factory ExecutionPolicy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecutionPolicy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecutionPolicy',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'presetName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecutionPolicy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecutionPolicy copyWith(void Function(ExecutionPolicy) updates) =>
      super.copyWith((message) => updates(message as ExecutionPolicy))
          as ExecutionPolicy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecutionPolicy create() => ExecutionPolicy._();
  @$core.override
  ExecutionPolicy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecutionPolicy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecutionPolicy>(create);
  static ExecutionPolicy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get presetName => $_getSZ(0);
  @$pb.TagNumber(1)
  set presetName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPresetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPresetName() => $_clearField(1);
}

class ReplicationPolicy extends $pb.GeneratedMessage {
  factory ReplicationPolicy({
    $core.String? presetName,
    $core.int? replicasCount,
    $9.FeatureFlag_Status? createPerAvailabilityZone,
    $9.FeatureFlag_Status? allowPromotion,
  }) {
    final result = create();
    if (presetName != null) result.presetName = presetName;
    if (replicasCount != null) result.replicasCount = replicasCount;
    if (createPerAvailabilityZone != null)
      result.createPerAvailabilityZone = createPerAvailabilityZone;
    if (allowPromotion != null) result.allowPromotion = allowPromotion;
    return result;
  }

  ReplicationPolicy._();

  factory ReplicationPolicy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReplicationPolicy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReplicationPolicy',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'presetName')
    ..aI(2, _omitFieldNames ? '' : 'replicasCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aE<$9.FeatureFlag_Status>(
        3, _omitFieldNames ? '' : 'createPerAvailabilityZone',
        enumValues: $9.FeatureFlag_Status.values)
    ..aE<$9.FeatureFlag_Status>(4, _omitFieldNames ? '' : 'allowPromotion',
        enumValues: $9.FeatureFlag_Status.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplicationPolicy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplicationPolicy copyWith(void Function(ReplicationPolicy) updates) =>
      super.copyWith((message) => updates(message as ReplicationPolicy))
          as ReplicationPolicy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplicationPolicy create() => ReplicationPolicy._();
  @$core.override
  ReplicationPolicy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReplicationPolicy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReplicationPolicy>(create);
  static ReplicationPolicy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get presetName => $_getSZ(0);
  @$pb.TagNumber(1)
  set presetName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPresetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPresetName() => $_clearField(1);

  /// If value is non-zero then it specifies a number of read-only
  /// replicas to create for a table. Zero value means preset
  /// setting usage.
  @$pb.TagNumber(2)
  $core.int get replicasCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set replicasCount($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReplicasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearReplicasCount() => $_clearField(2);

  /// If this feature in enabled then requested number of replicas
  /// will be created in each availability zone.
  @$pb.TagNumber(3)
  $9.FeatureFlag_Status get createPerAvailabilityZone => $_getN(2);
  @$pb.TagNumber(3)
  set createPerAvailabilityZone($9.FeatureFlag_Status value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCreatePerAvailabilityZone() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatePerAvailabilityZone() => $_clearField(3);

  /// If this feature in enabled then read-only replicas can be promoted
  /// to leader.
  @$pb.TagNumber(4)
  $9.FeatureFlag_Status get allowPromotion => $_getN(3);
  @$pb.TagNumber(4)
  set allowPromotion($9.FeatureFlag_Status value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAllowPromotion() => $_has(3);
  @$pb.TagNumber(4)
  void clearAllowPromotion() => $_clearField(4);
}

class CachingPolicy extends $pb.GeneratedMessage {
  factory CachingPolicy({
    $core.String? presetName,
  }) {
    final result = create();
    if (presetName != null) result.presetName = presetName;
    return result;
  }

  CachingPolicy._();

  factory CachingPolicy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CachingPolicy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CachingPolicy',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'presetName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CachingPolicy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CachingPolicy copyWith(void Function(CachingPolicy) updates) =>
      super.copyWith((message) => updates(message as CachingPolicy))
          as CachingPolicy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CachingPolicy create() => CachingPolicy._();
  @$core.override
  CachingPolicy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CachingPolicy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CachingPolicy>(create);
  static CachingPolicy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get presetName => $_getSZ(0);
  @$pb.TagNumber(1)
  set presetName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPresetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPresetName() => $_clearField(1);
}

class TableProfile extends $pb.GeneratedMessage {
  factory TableProfile({
    $core.String? presetName,
    StoragePolicy? storagePolicy,
    CompactionPolicy? compactionPolicy,
    PartitioningPolicy? partitioningPolicy,
    ExecutionPolicy? executionPolicy,
    ReplicationPolicy? replicationPolicy,
    CachingPolicy? cachingPolicy,
  }) {
    final result = create();
    if (presetName != null) result.presetName = presetName;
    if (storagePolicy != null) result.storagePolicy = storagePolicy;
    if (compactionPolicy != null) result.compactionPolicy = compactionPolicy;
    if (partitioningPolicy != null)
      result.partitioningPolicy = partitioningPolicy;
    if (executionPolicy != null) result.executionPolicy = executionPolicy;
    if (replicationPolicy != null) result.replicationPolicy = replicationPolicy;
    if (cachingPolicy != null) result.cachingPolicy = cachingPolicy;
    return result;
  }

  TableProfile._();

  factory TableProfile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TableProfile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TableProfile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'presetName')
    ..aOM<StoragePolicy>(2, _omitFieldNames ? '' : 'storagePolicy',
        subBuilder: StoragePolicy.create)
    ..aOM<CompactionPolicy>(3, _omitFieldNames ? '' : 'compactionPolicy',
        subBuilder: CompactionPolicy.create)
    ..aOM<PartitioningPolicy>(4, _omitFieldNames ? '' : 'partitioningPolicy',
        subBuilder: PartitioningPolicy.create)
    ..aOM<ExecutionPolicy>(5, _omitFieldNames ? '' : 'executionPolicy',
        subBuilder: ExecutionPolicy.create)
    ..aOM<ReplicationPolicy>(6, _omitFieldNames ? '' : 'replicationPolicy',
        subBuilder: ReplicationPolicy.create)
    ..aOM<CachingPolicy>(7, _omitFieldNames ? '' : 'cachingPolicy',
        subBuilder: CachingPolicy.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TableProfile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TableProfile copyWith(void Function(TableProfile) updates) =>
      super.copyWith((message) => updates(message as TableProfile))
          as TableProfile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TableProfile create() => TableProfile._();
  @$core.override
  TableProfile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TableProfile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TableProfile>(create);
  static TableProfile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get presetName => $_getSZ(0);
  @$pb.TagNumber(1)
  set presetName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPresetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPresetName() => $_clearField(1);

  @$pb.TagNumber(2)
  StoragePolicy get storagePolicy => $_getN(1);
  @$pb.TagNumber(2)
  set storagePolicy(StoragePolicy value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStoragePolicy() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoragePolicy() => $_clearField(2);
  @$pb.TagNumber(2)
  StoragePolicy ensureStoragePolicy() => $_ensure(1);

  @$pb.TagNumber(3)
  CompactionPolicy get compactionPolicy => $_getN(2);
  @$pb.TagNumber(3)
  set compactionPolicy(CompactionPolicy value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCompactionPolicy() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompactionPolicy() => $_clearField(3);
  @$pb.TagNumber(3)
  CompactionPolicy ensureCompactionPolicy() => $_ensure(2);

  @$pb.TagNumber(4)
  PartitioningPolicy get partitioningPolicy => $_getN(3);
  @$pb.TagNumber(4)
  set partitioningPolicy(PartitioningPolicy value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPartitioningPolicy() => $_has(3);
  @$pb.TagNumber(4)
  void clearPartitioningPolicy() => $_clearField(4);
  @$pb.TagNumber(4)
  PartitioningPolicy ensurePartitioningPolicy() => $_ensure(3);

  @$pb.TagNumber(5)
  ExecutionPolicy get executionPolicy => $_getN(4);
  @$pb.TagNumber(5)
  set executionPolicy(ExecutionPolicy value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExecutionPolicy() => $_has(4);
  @$pb.TagNumber(5)
  void clearExecutionPolicy() => $_clearField(5);
  @$pb.TagNumber(5)
  ExecutionPolicy ensureExecutionPolicy() => $_ensure(4);

  @$pb.TagNumber(6)
  ReplicationPolicy get replicationPolicy => $_getN(5);
  @$pb.TagNumber(6)
  set replicationPolicy(ReplicationPolicy value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasReplicationPolicy() => $_has(5);
  @$pb.TagNumber(6)
  void clearReplicationPolicy() => $_clearField(6);
  @$pb.TagNumber(6)
  ReplicationPolicy ensureReplicationPolicy() => $_ensure(5);

  @$pb.TagNumber(7)
  CachingPolicy get cachingPolicy => $_getN(6);
  @$pb.TagNumber(7)
  set cachingPolicy(CachingPolicy value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCachingPolicy() => $_has(6);
  @$pb.TagNumber(7)
  void clearCachingPolicy() => $_clearField(7);
  @$pb.TagNumber(7)
  CachingPolicy ensureCachingPolicy() => $_ensure(6);
}

class SequenceDescription_SetVal extends $pb.GeneratedMessage {
  factory SequenceDescription_SetVal({
    $fixnum.Int64? nextValue,
    $core.bool? nextUsed,
  }) {
    final result = create();
    if (nextValue != null) result.nextValue = nextValue;
    if (nextUsed != null) result.nextUsed = nextUsed;
    return result;
  }

  SequenceDescription_SetVal._();

  factory SequenceDescription_SetVal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SequenceDescription_SetVal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SequenceDescription.SetVal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'nextValue', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(2, _omitFieldNames ? '' : 'nextUsed')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SequenceDescription_SetVal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SequenceDescription_SetVal copyWith(
          void Function(SequenceDescription_SetVal) updates) =>
      super.copyWith(
              (message) => updates(message as SequenceDescription_SetVal))
          as SequenceDescription_SetVal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SequenceDescription_SetVal create() => SequenceDescription_SetVal._();
  @$core.override
  SequenceDescription_SetVal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SequenceDescription_SetVal getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SequenceDescription_SetVal>(create);
  static SequenceDescription_SetVal? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nextValue => $_getI64(0);
  @$pb.TagNumber(1)
  set nextValue($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNextValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearNextValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get nextUsed => $_getBF(1);
  @$pb.TagNumber(2)
  set nextUsed($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextUsed() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextUsed() => $_clearField(2);
}

class SequenceDescription extends $pb.GeneratedMessage {
  factory SequenceDescription({
    $core.String? name,
    $fixnum.Int64? minValue,
    $fixnum.Int64? maxValue,
    $fixnum.Int64? startValue,
    $fixnum.Int64? cache,
    $fixnum.Int64? increment,
    $core.bool? cycle,
    SequenceDescription_SetVal? setVal,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (minValue != null) result.minValue = minValue;
    if (maxValue != null) result.maxValue = maxValue;
    if (startValue != null) result.startValue = startValue;
    if (cache != null) result.cache = cache;
    if (increment != null) result.increment = increment;
    if (cycle != null) result.cycle = cycle;
    if (setVal != null) result.setVal = setVal;
    return result;
  }

  SequenceDescription._();

  factory SequenceDescription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SequenceDescription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SequenceDescription',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'minValue', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'maxValue', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'startValue', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'cache', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'increment', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(7, _omitFieldNames ? '' : 'cycle')
    ..aOM<SequenceDescription_SetVal>(8, _omitFieldNames ? '' : 'setVal',
        subBuilder: SequenceDescription_SetVal.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SequenceDescription clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SequenceDescription copyWith(void Function(SequenceDescription) updates) =>
      super.copyWith((message) => updates(message as SequenceDescription))
          as SequenceDescription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SequenceDescription create() => SequenceDescription._();
  @$core.override
  SequenceDescription createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SequenceDescription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SequenceDescription>(create);
  static SequenceDescription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get minValue => $_getI64(1);
  @$pb.TagNumber(2)
  set minValue($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinValue() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get maxValue => $_getI64(2);
  @$pb.TagNumber(3)
  set maxValue($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get startValue => $_getI64(3);
  @$pb.TagNumber(4)
  set startValue($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStartValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartValue() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get cache => $_getI64(4);
  @$pb.TagNumber(5)
  set cache($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCache() => $_has(4);
  @$pb.TagNumber(5)
  void clearCache() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get increment => $_getI64(5);
  @$pb.TagNumber(6)
  set increment($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIncrement() => $_has(5);
  @$pb.TagNumber(6)
  void clearIncrement() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get cycle => $_getBF(6);
  @$pb.TagNumber(7)
  set cycle($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCycle() => $_has(6);
  @$pb.TagNumber(7)
  void clearCycle() => $_clearField(7);

  @$pb.TagNumber(8)
  SequenceDescription_SetVal get setVal => $_getN(7);
  @$pb.TagNumber(8)
  set setVal(SequenceDescription_SetVal value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasSetVal() => $_has(7);
  @$pb.TagNumber(8)
  void clearSetVal() => $_clearField(8);
  @$pb.TagNumber(8)
  SequenceDescription_SetVal ensureSetVal() => $_ensure(7);
}

enum ColumnMeta_DefaultValue { fromLiteral, fromSequence, notSet }

class ColumnMeta extends $pb.GeneratedMessage {
  factory ColumnMeta({
    $core.String? name,
    $3.Type? type,
    $core.String? family,
    $core.bool? notNull,
    $3.TypedValue? fromLiteral,
    SequenceDescription? fromSequence,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    if (family != null) result.family = family;
    if (notNull != null) result.notNull = notNull;
    if (fromLiteral != null) result.fromLiteral = fromLiteral;
    if (fromSequence != null) result.fromSequence = fromSequence;
    return result;
  }

  ColumnMeta._();

  factory ColumnMeta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ColumnMeta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ColumnMeta_DefaultValue>
      _ColumnMeta_DefaultValueByTag = {
    5: ColumnMeta_DefaultValue.fromLiteral,
    6: ColumnMeta_DefaultValue.fromSequence,
    0: ColumnMeta_DefaultValue.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColumnMeta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..oo(0, [5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$3.Type>(2, _omitFieldNames ? '' : 'type', subBuilder: $3.Type.create)
    ..aOS(3, _omitFieldNames ? '' : 'family')
    ..aOB(4, _omitFieldNames ? '' : 'notNull')
    ..aOM<$3.TypedValue>(5, _omitFieldNames ? '' : 'fromLiteral',
        subBuilder: $3.TypedValue.create)
    ..aOM<SequenceDescription>(6, _omitFieldNames ? '' : 'fromSequence',
        subBuilder: SequenceDescription.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColumnMeta clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColumnMeta copyWith(void Function(ColumnMeta) updates) =>
      super.copyWith((message) => updates(message as ColumnMeta)) as ColumnMeta;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColumnMeta create() => ColumnMeta._();
  @$core.override
  ColumnMeta createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ColumnMeta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ColumnMeta>(create);
  static ColumnMeta? _defaultInstance;

  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  ColumnMeta_DefaultValue whichDefaultValue() =>
      _ColumnMeta_DefaultValueByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearDefaultValue() => $_clearField($_whichOneof(0));

  /// Name of column
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Type of column
  @$pb.TagNumber(2)
  $3.Type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type($3.Type value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Type ensureType() => $_ensure(1);

  /// Column family name of the column
  @$pb.TagNumber(3)
  $core.String get family => $_getSZ(2);
  @$pb.TagNumber(3)
  set family($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFamily() => $_has(2);
  @$pb.TagNumber(3)
  void clearFamily() => $_clearField(3);

  /// Column nullability
  @$pb.TagNumber(4)
  $core.bool get notNull => $_getBF(3);
  @$pb.TagNumber(4)
  set notNull($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNotNull() => $_has(3);
  @$pb.TagNumber(4)
  void clearNotNull() => $_clearField(4);

  @$pb.TagNumber(5)
  $3.TypedValue get fromLiteral => $_getN(4);
  @$pb.TagNumber(5)
  set fromLiteral($3.TypedValue value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFromLiteral() => $_has(4);
  @$pb.TagNumber(5)
  void clearFromLiteral() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.TypedValue ensureFromLiteral() => $_ensure(4);

  @$pb.TagNumber(6)
  SequenceDescription get fromSequence => $_getN(5);
  @$pb.TagNumber(6)
  set fromSequence(SequenceDescription value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasFromSequence() => $_has(5);
  @$pb.TagNumber(6)
  void clearFromSequence() => $_clearField(6);
  @$pb.TagNumber(6)
  SequenceDescription ensureFromSequence() => $_ensure(5);
}

class DateTypeColumnModeSettings extends $pb.GeneratedMessage {
  factory DateTypeColumnModeSettings({
    $core.String? columnName,
    $core.int? expireAfterSeconds,
  }) {
    final result = create();
    if (columnName != null) result.columnName = columnName;
    if (expireAfterSeconds != null)
      result.expireAfterSeconds = expireAfterSeconds;
    return result;
  }

  DateTypeColumnModeSettings._();

  factory DateTypeColumnModeSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DateTypeColumnModeSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DateTypeColumnModeSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'columnName')
    ..aI(2, _omitFieldNames ? '' : 'expireAfterSeconds',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DateTypeColumnModeSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DateTypeColumnModeSettings copyWith(
          void Function(DateTypeColumnModeSettings) updates) =>
      super.copyWith(
              (message) => updates(message as DateTypeColumnModeSettings))
          as DateTypeColumnModeSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DateTypeColumnModeSettings create() => DateTypeColumnModeSettings._();
  @$core.override
  DateTypeColumnModeSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DateTypeColumnModeSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DateTypeColumnModeSettings>(create);
  static DateTypeColumnModeSettings? _defaultInstance;

  /// The column type must be a date type
  @$pb.TagNumber(1)
  $core.String get columnName => $_getSZ(0);
  @$pb.TagNumber(1)
  set columnName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasColumnName() => $_has(0);
  @$pb.TagNumber(1)
  void clearColumnName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get expireAfterSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set expireAfterSeconds($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasExpireAfterSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpireAfterSeconds() => $_clearField(2);
}

class ValueSinceUnixEpochModeSettings extends $pb.GeneratedMessage {
  factory ValueSinceUnixEpochModeSettings({
    $core.String? columnName,
    ValueSinceUnixEpochModeSettings_Unit? columnUnit,
    $core.int? expireAfterSeconds,
  }) {
    final result = create();
    if (columnName != null) result.columnName = columnName;
    if (columnUnit != null) result.columnUnit = columnUnit;
    if (expireAfterSeconds != null)
      result.expireAfterSeconds = expireAfterSeconds;
    return result;
  }

  ValueSinceUnixEpochModeSettings._();

  factory ValueSinceUnixEpochModeSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ValueSinceUnixEpochModeSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ValueSinceUnixEpochModeSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'columnName')
    ..aE<ValueSinceUnixEpochModeSettings_Unit>(
        2, _omitFieldNames ? '' : 'columnUnit',
        enumValues: ValueSinceUnixEpochModeSettings_Unit.values)
    ..aI(3, _omitFieldNames ? '' : 'expireAfterSeconds',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValueSinceUnixEpochModeSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValueSinceUnixEpochModeSettings copyWith(
          void Function(ValueSinceUnixEpochModeSettings) updates) =>
      super.copyWith(
              (message) => updates(message as ValueSinceUnixEpochModeSettings))
          as ValueSinceUnixEpochModeSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValueSinceUnixEpochModeSettings create() =>
      ValueSinceUnixEpochModeSettings._();
  @$core.override
  ValueSinceUnixEpochModeSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ValueSinceUnixEpochModeSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ValueSinceUnixEpochModeSettings>(
          create);
  static ValueSinceUnixEpochModeSettings? _defaultInstance;

  /// The column type must be one of:
  /// - Uint32
  /// - Uint64
  /// - DyNumber
  @$pb.TagNumber(1)
  $core.String get columnName => $_getSZ(0);
  @$pb.TagNumber(1)
  set columnName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasColumnName() => $_has(0);
  @$pb.TagNumber(1)
  void clearColumnName() => $_clearField(1);

  /// Interpretation of the value stored in <column_name>
  @$pb.TagNumber(2)
  ValueSinceUnixEpochModeSettings_Unit get columnUnit => $_getN(1);
  @$pb.TagNumber(2)
  set columnUnit(ValueSinceUnixEpochModeSettings_Unit value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasColumnUnit() => $_has(1);
  @$pb.TagNumber(2)
  void clearColumnUnit() => $_clearField(2);

  /// This option is always interpreted as seconds regardless of the
  /// <column_unit> value.
  @$pb.TagNumber(3)
  $core.int get expireAfterSeconds => $_getIZ(2);
  @$pb.TagNumber(3)
  set expireAfterSeconds($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExpireAfterSeconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpireAfterSeconds() => $_clearField(3);
}

enum TtlSettings_Mode { dateTypeColumn, valueSinceUnixEpoch, notSet }

class TtlSettings extends $pb.GeneratedMessage {
  factory TtlSettings({
    DateTypeColumnModeSettings? dateTypeColumn,
    ValueSinceUnixEpochModeSettings? valueSinceUnixEpoch,
    $core.int? runIntervalSeconds,
  }) {
    final result = create();
    if (dateTypeColumn != null) result.dateTypeColumn = dateTypeColumn;
    if (valueSinceUnixEpoch != null)
      result.valueSinceUnixEpoch = valueSinceUnixEpoch;
    if (runIntervalSeconds != null)
      result.runIntervalSeconds = runIntervalSeconds;
    return result;
  }

  TtlSettings._();

  factory TtlSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TtlSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TtlSettings_Mode> _TtlSettings_ModeByTag = {
    1: TtlSettings_Mode.dateTypeColumn,
    2: TtlSettings_Mode.valueSinceUnixEpoch,
    0: TtlSettings_Mode.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TtlSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<DateTypeColumnModeSettings>(
        1, _omitFieldNames ? '' : 'dateTypeColumn',
        subBuilder: DateTypeColumnModeSettings.create)
    ..aOM<ValueSinceUnixEpochModeSettings>(
        2, _omitFieldNames ? '' : 'valueSinceUnixEpoch',
        subBuilder: ValueSinceUnixEpochModeSettings.create)
    ..aI(3, _omitFieldNames ? '' : 'runIntervalSeconds',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TtlSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TtlSettings copyWith(void Function(TtlSettings) updates) =>
      super.copyWith((message) => updates(message as TtlSettings))
          as TtlSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TtlSettings create() => TtlSettings._();
  @$core.override
  TtlSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TtlSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TtlSettings>(create);
  static TtlSettings? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  TtlSettings_Mode whichMode() => _TtlSettings_ModeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearMode() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DateTypeColumnModeSettings get dateTypeColumn => $_getN(0);
  @$pb.TagNumber(1)
  set dateTypeColumn(DateTypeColumnModeSettings value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTypeColumn() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTypeColumn() => $_clearField(1);
  @$pb.TagNumber(1)
  DateTypeColumnModeSettings ensureDateTypeColumn() => $_ensure(0);

  @$pb.TagNumber(2)
  ValueSinceUnixEpochModeSettings get valueSinceUnixEpoch => $_getN(1);
  @$pb.TagNumber(2)
  set valueSinceUnixEpoch(ValueSinceUnixEpochModeSettings value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasValueSinceUnixEpoch() => $_has(1);
  @$pb.TagNumber(2)
  void clearValueSinceUnixEpoch() => $_clearField(2);
  @$pb.TagNumber(2)
  ValueSinceUnixEpochModeSettings ensureValueSinceUnixEpoch() => $_ensure(1);

  /// How often to run BRO on the same partition.
  /// BRO will not be started more often, but may be started less often.
  @$pb.TagNumber(3)
  $core.int get runIntervalSeconds => $_getIZ(2);
  @$pb.TagNumber(3)
  set runIntervalSeconds($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRunIntervalSeconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearRunIntervalSeconds() => $_clearField(3);
}

class StorageSettings extends $pb.GeneratedMessage {
  factory StorageSettings({
    StoragePool? tabletCommitLog0,
    StoragePool? tabletCommitLog1,
    StoragePool? external,
    $9.FeatureFlag_Status? storeExternalBlobs,
  }) {
    final result = create();
    if (tabletCommitLog0 != null) result.tabletCommitLog0 = tabletCommitLog0;
    if (tabletCommitLog1 != null) result.tabletCommitLog1 = tabletCommitLog1;
    if (external != null) result.external = external;
    if (storeExternalBlobs != null)
      result.storeExternalBlobs = storeExternalBlobs;
    return result;
  }

  StorageSettings._();

  factory StorageSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StorageSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<StoragePool>(1, _omitFieldNames ? '' : 'tabletCommitLog0',
        subBuilder: StoragePool.create)
    ..aOM<StoragePool>(2, _omitFieldNames ? '' : 'tabletCommitLog1',
        subBuilder: StoragePool.create)
    ..aOM<StoragePool>(4, _omitFieldNames ? '' : 'external',
        subBuilder: StoragePool.create)
    ..aE<$9.FeatureFlag_Status>(5, _omitFieldNames ? '' : 'storeExternalBlobs',
        enumValues: $9.FeatureFlag_Status.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StorageSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StorageSettings copyWith(void Function(StorageSettings) updates) =>
      super.copyWith((message) => updates(message as StorageSettings))
          as StorageSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageSettings create() => StorageSettings._();
  @$core.override
  StorageSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StorageSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageSettings>(create);
  static StorageSettings? _defaultInstance;

  /// This specifies internal channel 0 commit log storage pool
  /// Fastest available storage recommended, negligible amounts of short-lived data
  @$pb.TagNumber(1)
  StoragePool get tabletCommitLog0 => $_getN(0);
  @$pb.TagNumber(1)
  set tabletCommitLog0(StoragePool value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTabletCommitLog0() => $_has(0);
  @$pb.TagNumber(1)
  void clearTabletCommitLog0() => $_clearField(1);
  @$pb.TagNumber(1)
  StoragePool ensureTabletCommitLog0() => $_ensure(0);

  /// This specifies internal channel 1 commit log storage pool
  /// Fastest available storage recommended, small amounts of short-lived data
  @$pb.TagNumber(2)
  StoragePool get tabletCommitLog1 => $_getN(1);
  @$pb.TagNumber(2)
  set tabletCommitLog1(StoragePool value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTabletCommitLog1() => $_has(1);
  @$pb.TagNumber(2)
  void clearTabletCommitLog1() => $_clearField(2);
  @$pb.TagNumber(2)
  StoragePool ensureTabletCommitLog1() => $_ensure(1);

  /// This specifies external blobs storage pool
  @$pb.TagNumber(4)
  StoragePool get external => $_getN(2);
  @$pb.TagNumber(4)
  set external(StoragePool value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasExternal() => $_has(2);
  @$pb.TagNumber(4)
  void clearExternal() => $_clearField(4);
  @$pb.TagNumber(4)
  StoragePool ensureExternal() => $_ensure(2);

  /// Optionally store large values in "external blobs"
  /// WARNING: DO NOT USE
  /// This feature is experimental and should not be used, restrictions apply:
  /// * Table cannot split/merge when this is enabled
  /// * Table cannot be copied or backed up when this is enabled
  /// * This feature cannot be disabled once enabled for a table
  @$pb.TagNumber(5)
  $9.FeatureFlag_Status get storeExternalBlobs => $_getN(3);
  @$pb.TagNumber(5)
  set storeExternalBlobs($9.FeatureFlag_Status value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStoreExternalBlobs() => $_has(3);
  @$pb.TagNumber(5)
  void clearStoreExternalBlobs() => $_clearField(5);
}

class ColumnFamily extends $pb.GeneratedMessage {
  factory ColumnFamily({
    $core.String? name,
    StoragePool? data,
    ColumnFamily_Compression? compression,
    $9.FeatureFlag_Status? keepInMemory,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (data != null) result.data = data;
    if (compression != null) result.compression = compression;
    if (keepInMemory != null) result.keepInMemory = keepInMemory;
    return result;
  }

  ColumnFamily._();

  factory ColumnFamily.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ColumnFamily.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColumnFamily',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<StoragePool>(2, _omitFieldNames ? '' : 'data',
        subBuilder: StoragePool.create)
    ..aE<ColumnFamily_Compression>(3, _omitFieldNames ? '' : 'compression',
        enumValues: ColumnFamily_Compression.values)
    ..aE<$9.FeatureFlag_Status>(4, _omitFieldNames ? '' : 'keepInMemory',
        enumValues: $9.FeatureFlag_Status.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColumnFamily clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColumnFamily copyWith(void Function(ColumnFamily) updates) =>
      super.copyWith((message) => updates(message as ColumnFamily))
          as ColumnFamily;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColumnFamily create() => ColumnFamily._();
  @$core.override
  ColumnFamily createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ColumnFamily getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ColumnFamily>(create);
  static ColumnFamily? _defaultInstance;

  /// Name of the column family, the name "default" must be used for the
  /// primary column family that contains at least primary key columns
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// This specifies data storage settings for column family
  @$pb.TagNumber(2)
  StoragePool get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(StoragePool value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  StoragePool ensureData() => $_ensure(1);

  /// Optionally specify how data should be compressed
  @$pb.TagNumber(3)
  ColumnFamily_Compression get compression => $_getN(2);
  @$pb.TagNumber(3)
  set compression(ColumnFamily_Compression value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCompression() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompression() => $_clearField(3);

  /// When enabled table data will be kept in memory
  /// WARNING: DO NOT USE
  @$pb.TagNumber(4)
  $9.FeatureFlag_Status get keepInMemory => $_getN(3);
  @$pb.TagNumber(4)
  set keepInMemory($9.FeatureFlag_Status value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasKeepInMemory() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeepInMemory() => $_clearField(4);
}

class PartitioningSettings extends $pb.GeneratedMessage {
  factory PartitioningSettings({
    $core.Iterable<$core.String>? partitionBy,
    $9.FeatureFlag_Status? partitioningBySize,
    $fixnum.Int64? partitionSizeMb,
    $9.FeatureFlag_Status? partitioningByLoad,
    $fixnum.Int64? minPartitionsCount,
    $fixnum.Int64? maxPartitionsCount,
  }) {
    final result = create();
    if (partitionBy != null) result.partitionBy.addAll(partitionBy);
    if (partitioningBySize != null)
      result.partitioningBySize = partitioningBySize;
    if (partitionSizeMb != null) result.partitionSizeMb = partitionSizeMb;
    if (partitioningByLoad != null)
      result.partitioningByLoad = partitioningByLoad;
    if (minPartitionsCount != null)
      result.minPartitionsCount = minPartitionsCount;
    if (maxPartitionsCount != null)
      result.maxPartitionsCount = maxPartitionsCount;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'partitionBy')
    ..aE<$9.FeatureFlag_Status>(2, _omitFieldNames ? '' : 'partitioningBySize',
        enumValues: $9.FeatureFlag_Status.values)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'partitionSizeMb', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aE<$9.FeatureFlag_Status>(4, _omitFieldNames ? '' : 'partitioningByLoad',
        enumValues: $9.FeatureFlag_Status.values)
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'minPartitionsCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'maxPartitionsCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
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

  /// List of columns to partition by
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get partitionBy => $_getList(0);

  /// Enable auto partitioning on reaching upper or lower partition size bound
  @$pb.TagNumber(2)
  $9.FeatureFlag_Status get partitioningBySize => $_getN(1);
  @$pb.TagNumber(2)
  set partitioningBySize($9.FeatureFlag_Status value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPartitioningBySize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartitioningBySize() => $_clearField(2);

  /// Preferred partition size for auto partitioning by size, Mb
  @$pb.TagNumber(3)
  $fixnum.Int64 get partitionSizeMb => $_getI64(2);
  @$pb.TagNumber(3)
  set partitionSizeMb($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPartitionSizeMb() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartitionSizeMb() => $_clearField(3);

  /// Enable auto partitioning based on load on each partition
  @$pb.TagNumber(4)
  $9.FeatureFlag_Status get partitioningByLoad => $_getN(3);
  @$pb.TagNumber(4)
  set partitioningByLoad($9.FeatureFlag_Status value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPartitioningByLoad() => $_has(3);
  @$pb.TagNumber(4)
  void clearPartitioningByLoad() => $_clearField(4);

  /// Minimum partitions count auto merge would stop working at
  @$pb.TagNumber(6)
  $fixnum.Int64 get minPartitionsCount => $_getI64(4);
  @$pb.TagNumber(6)
  set minPartitionsCount($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(6)
  $core.bool hasMinPartitionsCount() => $_has(4);
  @$pb.TagNumber(6)
  void clearMinPartitionsCount() => $_clearField(6);

  /// Maximum partitions count auto split would stop working at
  @$pb.TagNumber(7)
  $fixnum.Int64 get maxPartitionsCount => $_getI64(5);
  @$pb.TagNumber(7)
  set maxPartitionsCount($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(7)
  $core.bool hasMaxPartitionsCount() => $_has(5);
  @$pb.TagNumber(7)
  void clearMaxPartitionsCount() => $_clearField(7);
}

class AzReadReplicasSettings extends $pb.GeneratedMessage {
  factory AzReadReplicasSettings({
    $core.String? name,
    $fixnum.Int64? readReplicasCount,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (readReplicasCount != null) result.readReplicasCount = readReplicasCount;
    return result;
  }

  AzReadReplicasSettings._();

  factory AzReadReplicasSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AzReadReplicasSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AzReadReplicasSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'readReplicasCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AzReadReplicasSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AzReadReplicasSettings copyWith(
          void Function(AzReadReplicasSettings) updates) =>
      super.copyWith((message) => updates(message as AzReadReplicasSettings))
          as AzReadReplicasSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AzReadReplicasSettings create() => AzReadReplicasSettings._();
  @$core.override
  AzReadReplicasSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AzReadReplicasSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AzReadReplicasSettings>(create);
  static AzReadReplicasSettings? _defaultInstance;

  /// AZ name
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Read replicas count in this AZ
  @$pb.TagNumber(2)
  $fixnum.Int64 get readReplicasCount => $_getI64(1);
  @$pb.TagNumber(2)
  set readReplicasCount($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReadReplicasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearReadReplicasCount() => $_clearField(2);
}

class ClusterReplicasSettings extends $pb.GeneratedMessage {
  factory ClusterReplicasSettings({
    $core.Iterable<AzReadReplicasSettings>? azReadReplicasSettings,
  }) {
    final result = create();
    if (azReadReplicasSettings != null)
      result.azReadReplicasSettings.addAll(azReadReplicasSettings);
    return result;
  }

  ClusterReplicasSettings._();

  factory ClusterReplicasSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClusterReplicasSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClusterReplicasSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..pPM<AzReadReplicasSettings>(
        2, _omitFieldNames ? '' : 'azReadReplicasSettings',
        subBuilder: AzReadReplicasSettings.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClusterReplicasSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClusterReplicasSettings copyWith(
          void Function(ClusterReplicasSettings) updates) =>
      super.copyWith((message) => updates(message as ClusterReplicasSettings))
          as ClusterReplicasSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClusterReplicasSettings create() => ClusterReplicasSettings._();
  @$core.override
  ClusterReplicasSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClusterReplicasSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClusterReplicasSettings>(create);
  static ClusterReplicasSettings? _defaultInstance;

  /// List of read replicas settings for each AZ
  @$pb.TagNumber(2)
  $pb.PbList<AzReadReplicasSettings> get azReadReplicasSettings => $_getList(0);
}

enum ReadReplicasSettings_Settings {
  perAzReadReplicasCount,
  anyAzReadReplicasCount,
  notSet
}

class ReadReplicasSettings extends $pb.GeneratedMessage {
  factory ReadReplicasSettings({
    $fixnum.Int64? perAzReadReplicasCount,
    $fixnum.Int64? anyAzReadReplicasCount,
  }) {
    final result = create();
    if (perAzReadReplicasCount != null)
      result.perAzReadReplicasCount = perAzReadReplicasCount;
    if (anyAzReadReplicasCount != null)
      result.anyAzReadReplicasCount = anyAzReadReplicasCount;
    return result;
  }

  ReadReplicasSettings._();

  factory ReadReplicasSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadReplicasSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ReadReplicasSettings_Settings>
      _ReadReplicasSettings_SettingsByTag = {
    1: ReadReplicasSettings_Settings.perAzReadReplicasCount,
    2: ReadReplicasSettings_Settings.anyAzReadReplicasCount,
    0: ReadReplicasSettings_Settings.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadReplicasSettings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'perAzReadReplicasCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'anyAzReadReplicasCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadReplicasSettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadReplicasSettings copyWith(void Function(ReadReplicasSettings) updates) =>
      super.copyWith((message) => updates(message as ReadReplicasSettings))
          as ReadReplicasSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadReplicasSettings create() => ReadReplicasSettings._();
  @$core.override
  ReadReplicasSettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadReplicasSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadReplicasSettings>(create);
  static ReadReplicasSettings? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  ReadReplicasSettings_Settings whichSettings() =>
      _ReadReplicasSettings_SettingsByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearSettings() => $_clearField($_whichOneof(0));

  /// Set equal read replicas count for every AZ
  @$pb.TagNumber(1)
  $fixnum.Int64 get perAzReadReplicasCount => $_getI64(0);
  @$pb.TagNumber(1)
  set perAzReadReplicasCount($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPerAzReadReplicasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearPerAzReadReplicasCount() => $_clearField(1);

  /// Set total replicas count between all AZs
  @$pb.TagNumber(2)
  $fixnum.Int64 get anyAzReadReplicasCount => $_getI64(1);
  @$pb.TagNumber(2)
  set anyAzReadReplicasCount($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAnyAzReadReplicasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnyAzReadReplicasCount() => $_clearField(2);
}

enum CreateTableRequest_Partitions {
  uniformPartitions,
  partitionAtKeys,
  notSet
}

class CreateTableRequest extends $pb.GeneratedMessage {
  factory CreateTableRequest({
    $core.String? sessionId,
    $core.String? path,
    $core.Iterable<ColumnMeta>? columns,
    $core.Iterable<$core.String>? primaryKey,
    TableProfile? profile,
    $0.OperationParams? operationParams,
    $core.Iterable<TableIndex>? indexes,
    TtlSettings? ttlSettings,
    StorageSettings? storageSettings,
    $core.Iterable<ColumnFamily>? columnFamilies,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? attributes,
    $core.String? compactionPolicy,
    $fixnum.Int64? uniformPartitions,
    ExplicitPartitions? partitionAtKeys,
    PartitioningSettings? partitioningSettings,
    $9.FeatureFlag_Status? keyBloomFilter,
    ReadReplicasSettings? readReplicasSettings,
    $core.String? tiering,
    $core.bool? temporary,
    StoreType? storeType,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (path != null) result.path = path;
    if (columns != null) result.columns.addAll(columns);
    if (primaryKey != null) result.primaryKey.addAll(primaryKey);
    if (profile != null) result.profile = profile;
    if (operationParams != null) result.operationParams = operationParams;
    if (indexes != null) result.indexes.addAll(indexes);
    if (ttlSettings != null) result.ttlSettings = ttlSettings;
    if (storageSettings != null) result.storageSettings = storageSettings;
    if (columnFamilies != null) result.columnFamilies.addAll(columnFamilies);
    if (attributes != null) result.attributes.addEntries(attributes);
    if (compactionPolicy != null) result.compactionPolicy = compactionPolicy;
    if (uniformPartitions != null) result.uniformPartitions = uniformPartitions;
    if (partitionAtKeys != null) result.partitionAtKeys = partitionAtKeys;
    if (partitioningSettings != null)
      result.partitioningSettings = partitioningSettings;
    if (keyBloomFilter != null) result.keyBloomFilter = keyBloomFilter;
    if (readReplicasSettings != null)
      result.readReplicasSettings = readReplicasSettings;
    if (tiering != null) result.tiering = tiering;
    if (temporary != null) result.temporary = temporary;
    if (storeType != null) result.storeType = storeType;
    return result;
  }

  CreateTableRequest._();

  factory CreateTableRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateTableRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CreateTableRequest_Partitions>
      _CreateTableRequest_PartitionsByTag = {
    13: CreateTableRequest_Partitions.uniformPartitions,
    14: CreateTableRequest_Partitions.partitionAtKeys,
    0: CreateTableRequest_Partitions.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateTableRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..oo(0, [13, 14])
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..pPM<ColumnMeta>(3, _omitFieldNames ? '' : 'columns',
        subBuilder: ColumnMeta.create)
    ..pPS(4, _omitFieldNames ? '' : 'primaryKey')
    ..aOM<TableProfile>(5, _omitFieldNames ? '' : 'profile',
        subBuilder: TableProfile.create)
    ..aOM<$0.OperationParams>(6, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..pPM<TableIndex>(7, _omitFieldNames ? '' : 'indexes',
        subBuilder: TableIndex.create)
    ..aOM<TtlSettings>(8, _omitFieldNames ? '' : 'ttlSettings',
        subBuilder: TtlSettings.create)
    ..aOM<StorageSettings>(9, _omitFieldNames ? '' : 'storageSettings',
        subBuilder: StorageSettings.create)
    ..pPM<ColumnFamily>(10, _omitFieldNames ? '' : 'columnFamilies',
        subBuilder: ColumnFamily.create)
    ..m<$core.String, $core.String>(11, _omitFieldNames ? '' : 'attributes',
        entryClassName: 'CreateTableRequest.AttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..aOS(12, _omitFieldNames ? '' : 'compactionPolicy')
    ..a<$fixnum.Int64>(
        13, _omitFieldNames ? '' : 'uniformPartitions', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<ExplicitPartitions>(14, _omitFieldNames ? '' : 'partitionAtKeys',
        subBuilder: ExplicitPartitions.create)
    ..aOM<PartitioningSettings>(
        15, _omitFieldNames ? '' : 'partitioningSettings',
        subBuilder: PartitioningSettings.create)
    ..aE<$9.FeatureFlag_Status>(16, _omitFieldNames ? '' : 'keyBloomFilter',
        enumValues: $9.FeatureFlag_Status.values)
    ..aOM<ReadReplicasSettings>(
        17, _omitFieldNames ? '' : 'readReplicasSettings',
        subBuilder: ReadReplicasSettings.create)
    ..aOS(18, _omitFieldNames ? '' : 'tiering')
    ..aOB(19, _omitFieldNames ? '' : 'temporary')
    ..aE<StoreType>(20, _omitFieldNames ? '' : 'storeType',
        enumValues: StoreType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTableRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTableRequest copyWith(void Function(CreateTableRequest) updates) =>
      super.copyWith((message) => updates(message as CreateTableRequest))
          as CreateTableRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTableRequest create() => CreateTableRequest._();
  @$core.override
  CreateTableRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateTableRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateTableRequest>(create);
  static CreateTableRequest? _defaultInstance;

  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  CreateTableRequest_Partitions whichPartitions() =>
      _CreateTableRequest_PartitionsByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  void clearPartitions() => $_clearField($_whichOneof(0));

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// Full path
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  /// Columns (name, type)
  @$pb.TagNumber(3)
  $pb.PbList<ColumnMeta> get columns => $_getList(2);

  /// List of columns used as primary key
  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get primaryKey => $_getList(3);

  /// Table profile
  @$pb.TagNumber(5)
  TableProfile get profile => $_getN(4);
  @$pb.TagNumber(5)
  set profile(TableProfile value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasProfile() => $_has(4);
  @$pb.TagNumber(5)
  void clearProfile() => $_clearField(5);
  @$pb.TagNumber(5)
  TableProfile ensureProfile() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.OperationParams get operationParams => $_getN(5);
  @$pb.TagNumber(6)
  set operationParams($0.OperationParams value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasOperationParams() => $_has(5);
  @$pb.TagNumber(6)
  void clearOperationParams() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.OperationParams ensureOperationParams() => $_ensure(5);

  /// List of secondary indexes
  @$pb.TagNumber(7)
  $pb.PbList<TableIndex> get indexes => $_getList(6);

  /// Table rows time to live settings
  @$pb.TagNumber(8)
  TtlSettings get ttlSettings => $_getN(7);
  @$pb.TagNumber(8)
  set ttlSettings(TtlSettings value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasTtlSettings() => $_has(7);
  @$pb.TagNumber(8)
  void clearTtlSettings() => $_clearField(8);
  @$pb.TagNumber(8)
  TtlSettings ensureTtlSettings() => $_ensure(7);

  /// Storage settings for table
  @$pb.TagNumber(9)
  StorageSettings get storageSettings => $_getN(8);
  @$pb.TagNumber(9)
  set storageSettings(StorageSettings value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasStorageSettings() => $_has(8);
  @$pb.TagNumber(9)
  void clearStorageSettings() => $_clearField(9);
  @$pb.TagNumber(9)
  StorageSettings ensureStorageSettings() => $_ensure(8);

  /// Column families
  @$pb.TagNumber(10)
  $pb.PbList<ColumnFamily> get columnFamilies => $_getList(9);

  /// Attributes. Total size is limited to 10 KB.
  @$pb.TagNumber(11)
  $pb.PbMap<$core.String, $core.String> get attributes => $_getMap(10);

  /// Predefined named set of settings for table compaction ["default", "small_table", "log_table"].
  @$pb.TagNumber(12)
  $core.String get compactionPolicy => $_getSZ(11);
  @$pb.TagNumber(12)
  set compactionPolicy($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasCompactionPolicy() => $_has(11);
  @$pb.TagNumber(12)
  void clearCompactionPolicy() => $_clearField(12);

  /// Enable uniform partitioning using given partitions count.
  /// The first components of primary key must have Uint32/Uint64 type.
  @$pb.TagNumber(13)
  $fixnum.Int64 get uniformPartitions => $_getI64(12);
  @$pb.TagNumber(13)
  set uniformPartitions($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasUniformPartitions() => $_has(12);
  @$pb.TagNumber(13)
  void clearUniformPartitions() => $_clearField(13);

  /// Explicitly specify key values which are used as borders for created partitions.
  @$pb.TagNumber(14)
  ExplicitPartitions get partitionAtKeys => $_getN(13);
  @$pb.TagNumber(14)
  set partitionAtKeys(ExplicitPartitions value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasPartitionAtKeys() => $_has(13);
  @$pb.TagNumber(14)
  void clearPartitionAtKeys() => $_clearField(14);
  @$pb.TagNumber(14)
  ExplicitPartitions ensurePartitionAtKeys() => $_ensure(13);

  /// Partitioning settings for table
  @$pb.TagNumber(15)
  PartitioningSettings get partitioningSettings => $_getN(14);
  @$pb.TagNumber(15)
  set partitioningSettings(PartitioningSettings value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasPartitioningSettings() => $_has(14);
  @$pb.TagNumber(15)
  void clearPartitioningSettings() => $_clearField(15);
  @$pb.TagNumber(15)
  PartitioningSettings ensurePartitioningSettings() => $_ensure(14);

  /// Bloom filter by key
  @$pb.TagNumber(16)
  $9.FeatureFlag_Status get keyBloomFilter => $_getN(15);
  @$pb.TagNumber(16)
  set keyBloomFilter($9.FeatureFlag_Status value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasKeyBloomFilter() => $_has(15);
  @$pb.TagNumber(16)
  void clearKeyBloomFilter() => $_clearField(16);

  /// Read replicas settings for table
  @$pb.TagNumber(17)
  ReadReplicasSettings get readReplicasSettings => $_getN(16);
  @$pb.TagNumber(17)
  set readReplicasSettings(ReadReplicasSettings value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasReadReplicasSettings() => $_has(16);
  @$pb.TagNumber(17)
  void clearReadReplicasSettings() => $_clearField(17);
  @$pb.TagNumber(17)
  ReadReplicasSettings ensureReadReplicasSettings() => $_ensure(16);

  /// Tiering rules name. It specifies how data migrates from one tier (logical storage) to another.
  @$pb.TagNumber(18)
  $core.String get tiering => $_getSZ(17);
  @$pb.TagNumber(18)
  set tiering($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasTiering() => $_has(17);
  @$pb.TagNumber(18)
  void clearTiering() => $_clearField(18);

  /// Is temporary table
  @$pb.TagNumber(19)
  $core.bool get temporary => $_getBF(18);
  @$pb.TagNumber(19)
  set temporary($core.bool value) => $_setBool(18, value);
  @$pb.TagNumber(19)
  $core.bool hasTemporary() => $_has(18);
  @$pb.TagNumber(19)
  void clearTemporary() => $_clearField(19);

  /// Is table column or row oriented
  @$pb.TagNumber(20)
  StoreType get storeType => $_getN(19);
  @$pb.TagNumber(20)
  set storeType(StoreType value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasStoreType() => $_has(19);
  @$pb.TagNumber(20)
  void clearStoreType() => $_clearField(20);
}

class CreateTableResponse extends $pb.GeneratedMessage {
  factory CreateTableResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  CreateTableResponse._();

  factory CreateTableResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateTableResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateTableResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTableResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTableResponse copyWith(void Function(CreateTableResponse) updates) =>
      super.copyWith((message) => updates(message as CreateTableResponse))
          as CreateTableResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTableResponse create() => CreateTableResponse._();
  @$core.override
  CreateTableResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateTableResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateTableResponse>(create);
  static CreateTableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

/// Drop table with given path
class DropTableRequest extends $pb.GeneratedMessage {
  factory DropTableRequest({
    $core.String? sessionId,
    $core.String? path,
    $0.OperationParams? operationParams,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (path != null) result.path = path;
    if (operationParams != null) result.operationParams = operationParams;
    return result;
  }

  DropTableRequest._();

  factory DropTableRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DropTableRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DropTableRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aOM<$0.OperationParams>(4, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DropTableRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DropTableRequest copyWith(void Function(DropTableRequest) updates) =>
      super.copyWith((message) => updates(message as DropTableRequest))
          as DropTableRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DropTableRequest create() => DropTableRequest._();
  @$core.override
  DropTableRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DropTableRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DropTableRequest>(create);
  static DropTableRequest? _defaultInstance;

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// Full path
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  @$pb.TagNumber(4)
  $0.OperationParams get operationParams => $_getN(2);
  @$pb.TagNumber(4)
  set operationParams($0.OperationParams value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOperationParams() => $_has(2);
  @$pb.TagNumber(4)
  void clearOperationParams() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.OperationParams ensureOperationParams() => $_ensure(2);
}

class DropTableResponse extends $pb.GeneratedMessage {
  factory DropTableResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  DropTableResponse._();

  factory DropTableResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DropTableResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DropTableResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DropTableResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DropTableResponse copyWith(void Function(DropTableResponse) updates) =>
      super.copyWith((message) => updates(message as DropTableResponse))
          as DropTableResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DropTableResponse create() => DropTableResponse._();
  @$core.override
  DropTableResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DropTableResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DropTableResponse>(create);
  static DropTableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class RenameIndexItem extends $pb.GeneratedMessage {
  factory RenameIndexItem({
    $core.String? sourceName,
    $core.String? destinationName,
    $core.bool? replaceDestination,
  }) {
    final result = create();
    if (sourceName != null) result.sourceName = sourceName;
    if (destinationName != null) result.destinationName = destinationName;
    if (replaceDestination != null)
      result.replaceDestination = replaceDestination;
    return result;
  }

  RenameIndexItem._();

  factory RenameIndexItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RenameIndexItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RenameIndexItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourceName')
    ..aOS(2, _omitFieldNames ? '' : 'destinationName')
    ..aOB(3, _omitFieldNames ? '' : 'replaceDestination')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenameIndexItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenameIndexItem copyWith(void Function(RenameIndexItem) updates) =>
      super.copyWith((message) => updates(message as RenameIndexItem))
          as RenameIndexItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RenameIndexItem create() => RenameIndexItem._();
  @$core.override
  RenameIndexItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RenameIndexItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RenameIndexItem>(create);
  static RenameIndexItem? _defaultInstance;

  /// Index name to rename
  @$pb.TagNumber(1)
  $core.String get sourceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceName() => $_clearField(1);

  /// Target index name
  @$pb.TagNumber(2)
  $core.String get destinationName => $_getSZ(1);
  @$pb.TagNumber(2)
  set destinationName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDestinationName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDestinationName() => $_clearField(2);

  /// Move options
  @$pb.TagNumber(3)
  $core.bool get replaceDestination => $_getBF(2);
  @$pb.TagNumber(3)
  set replaceDestination($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReplaceDestination() => $_has(2);
  @$pb.TagNumber(3)
  void clearReplaceDestination() => $_clearField(3);
}

enum AlterTableRequest_TtlAction { setTtlSettings, dropTtlSettings, notSet }

enum AlterTableRequest_TieringAction { setTiering, dropTiering, notSet }

/// Alter table with given path
class AlterTableRequest extends $pb.GeneratedMessage {
  factory AlterTableRequest({
    $core.String? sessionId,
    $core.String? path,
    $core.Iterable<ColumnMeta>? addColumns,
    $core.Iterable<$core.String>? dropColumns,
    $0.OperationParams? operationParams,
    $core.Iterable<ColumnMeta>? alterColumns,
    TtlSettings? setTtlSettings,
    $5.Empty? dropTtlSettings,
    $core.Iterable<TableIndex>? addIndexes,
    $core.Iterable<$core.String>? dropIndexes,
    StorageSettings? alterStorageSettings,
    $core.Iterable<ColumnFamily>? addColumnFamilies,
    $core.Iterable<ColumnFamily>? alterColumnFamilies,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? alterAttributes,
    $core.String? setCompactionPolicy,
    PartitioningSettings? alterPartitioningSettings,
    $9.FeatureFlag_Status? setKeyBloomFilter,
    ReadReplicasSettings? setReadReplicasSettings,
    $core.Iterable<Changefeed>? addChangefeeds,
    $core.Iterable<$core.String>? dropChangefeeds,
    $core.Iterable<RenameIndexItem>? renameIndexes,
    $core.String? setTiering,
    $5.Empty? dropTiering,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (path != null) result.path = path;
    if (addColumns != null) result.addColumns.addAll(addColumns);
    if (dropColumns != null) result.dropColumns.addAll(dropColumns);
    if (operationParams != null) result.operationParams = operationParams;
    if (alterColumns != null) result.alterColumns.addAll(alterColumns);
    if (setTtlSettings != null) result.setTtlSettings = setTtlSettings;
    if (dropTtlSettings != null) result.dropTtlSettings = dropTtlSettings;
    if (addIndexes != null) result.addIndexes.addAll(addIndexes);
    if (dropIndexes != null) result.dropIndexes.addAll(dropIndexes);
    if (alterStorageSettings != null)
      result.alterStorageSettings = alterStorageSettings;
    if (addColumnFamilies != null)
      result.addColumnFamilies.addAll(addColumnFamilies);
    if (alterColumnFamilies != null)
      result.alterColumnFamilies.addAll(alterColumnFamilies);
    if (alterAttributes != null)
      result.alterAttributes.addEntries(alterAttributes);
    if (setCompactionPolicy != null)
      result.setCompactionPolicy = setCompactionPolicy;
    if (alterPartitioningSettings != null)
      result.alterPartitioningSettings = alterPartitioningSettings;
    if (setKeyBloomFilter != null) result.setKeyBloomFilter = setKeyBloomFilter;
    if (setReadReplicasSettings != null)
      result.setReadReplicasSettings = setReadReplicasSettings;
    if (addChangefeeds != null) result.addChangefeeds.addAll(addChangefeeds);
    if (dropChangefeeds != null) result.dropChangefeeds.addAll(dropChangefeeds);
    if (renameIndexes != null) result.renameIndexes.addAll(renameIndexes);
    if (setTiering != null) result.setTiering = setTiering;
    if (dropTiering != null) result.dropTiering = dropTiering;
    return result;
  }

  AlterTableRequest._();

  factory AlterTableRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlterTableRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AlterTableRequest_TtlAction>
      _AlterTableRequest_TtlActionByTag = {
    7: AlterTableRequest_TtlAction.setTtlSettings,
    8: AlterTableRequest_TtlAction.dropTtlSettings,
    0: AlterTableRequest_TtlAction.notSet
  };
  static const $core.Map<$core.int, AlterTableRequest_TieringAction>
      _AlterTableRequest_TieringActionByTag = {
    22: AlterTableRequest_TieringAction.setTiering,
    23: AlterTableRequest_TieringAction.dropTiering,
    0: AlterTableRequest_TieringAction.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlterTableRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..oo(0, [7, 8])
    ..oo(1, [22, 23])
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..pPM<ColumnMeta>(3, _omitFieldNames ? '' : 'addColumns',
        subBuilder: ColumnMeta.create)
    ..pPS(4, _omitFieldNames ? '' : 'dropColumns')
    ..aOM<$0.OperationParams>(5, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..pPM<ColumnMeta>(6, _omitFieldNames ? '' : 'alterColumns',
        subBuilder: ColumnMeta.create)
    ..aOM<TtlSettings>(7, _omitFieldNames ? '' : 'setTtlSettings',
        subBuilder: TtlSettings.create)
    ..aOM<$5.Empty>(8, _omitFieldNames ? '' : 'dropTtlSettings',
        subBuilder: $5.Empty.create)
    ..pPM<TableIndex>(9, _omitFieldNames ? '' : 'addIndexes',
        subBuilder: TableIndex.create)
    ..pPS(10, _omitFieldNames ? '' : 'dropIndexes')
    ..aOM<StorageSettings>(11, _omitFieldNames ? '' : 'alterStorageSettings',
        subBuilder: StorageSettings.create)
    ..pPM<ColumnFamily>(12, _omitFieldNames ? '' : 'addColumnFamilies',
        subBuilder: ColumnFamily.create)
    ..pPM<ColumnFamily>(13, _omitFieldNames ? '' : 'alterColumnFamilies',
        subBuilder: ColumnFamily.create)
    ..m<$core.String, $core.String>(
        14, _omitFieldNames ? '' : 'alterAttributes',
        entryClassName: 'AlterTableRequest.AlterAttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..aOS(15, _omitFieldNames ? '' : 'setCompactionPolicy')
    ..aOM<PartitioningSettings>(
        16, _omitFieldNames ? '' : 'alterPartitioningSettings',
        subBuilder: PartitioningSettings.create)
    ..aE<$9.FeatureFlag_Status>(17, _omitFieldNames ? '' : 'setKeyBloomFilter',
        enumValues: $9.FeatureFlag_Status.values)
    ..aOM<ReadReplicasSettings>(
        18, _omitFieldNames ? '' : 'setReadReplicasSettings',
        subBuilder: ReadReplicasSettings.create)
    ..pPM<Changefeed>(19, _omitFieldNames ? '' : 'addChangefeeds',
        subBuilder: Changefeed.create)
    ..pPS(20, _omitFieldNames ? '' : 'dropChangefeeds')
    ..pPM<RenameIndexItem>(21, _omitFieldNames ? '' : 'renameIndexes',
        subBuilder: RenameIndexItem.create)
    ..aOS(22, _omitFieldNames ? '' : 'setTiering')
    ..aOM<$5.Empty>(23, _omitFieldNames ? '' : 'dropTiering',
        subBuilder: $5.Empty.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterTableRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterTableRequest copyWith(void Function(AlterTableRequest) updates) =>
      super.copyWith((message) => updates(message as AlterTableRequest))
          as AlterTableRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlterTableRequest create() => AlterTableRequest._();
  @$core.override
  AlterTableRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlterTableRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlterTableRequest>(create);
  static AlterTableRequest? _defaultInstance;

  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  AlterTableRequest_TtlAction whichTtlAction() =>
      _AlterTableRequest_TtlActionByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  void clearTtlAction() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  AlterTableRequest_TieringAction whichTieringAction() =>
      _AlterTableRequest_TieringActionByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  void clearTieringAction() => $_clearField($_whichOneof(1));

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// Full path
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  /// Columns (name, type) to add
  @$pb.TagNumber(3)
  $pb.PbList<ColumnMeta> get addColumns => $_getList(2);

  /// Columns to remove
  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get dropColumns => $_getList(3);

  @$pb.TagNumber(5)
  $0.OperationParams get operationParams => $_getN(4);
  @$pb.TagNumber(5)
  set operationParams($0.OperationParams value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasOperationParams() => $_has(4);
  @$pb.TagNumber(5)
  void clearOperationParams() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.OperationParams ensureOperationParams() => $_ensure(4);

  /// Columns to alter
  @$pb.TagNumber(6)
  $pb.PbList<ColumnMeta> get alterColumns => $_getList(5);

  @$pb.TagNumber(7)
  TtlSettings get setTtlSettings => $_getN(6);
  @$pb.TagNumber(7)
  set setTtlSettings(TtlSettings value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSetTtlSettings() => $_has(6);
  @$pb.TagNumber(7)
  void clearSetTtlSettings() => $_clearField(7);
  @$pb.TagNumber(7)
  TtlSettings ensureSetTtlSettings() => $_ensure(6);

  @$pb.TagNumber(8)
  $5.Empty get dropTtlSettings => $_getN(7);
  @$pb.TagNumber(8)
  set dropTtlSettings($5.Empty value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasDropTtlSettings() => $_has(7);
  @$pb.TagNumber(8)
  void clearDropTtlSettings() => $_clearField(8);
  @$pb.TagNumber(8)
  $5.Empty ensureDropTtlSettings() => $_ensure(7);

  /// Add secondary indexes
  @$pb.TagNumber(9)
  $pb.PbList<TableIndex> get addIndexes => $_getList(8);

  /// Remove secondary indexes
  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get dropIndexes => $_getList(9);

  /// Change table storage settings
  @$pb.TagNumber(11)
  StorageSettings get alterStorageSettings => $_getN(10);
  @$pb.TagNumber(11)
  set alterStorageSettings(StorageSettings value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAlterStorageSettings() => $_has(10);
  @$pb.TagNumber(11)
  void clearAlterStorageSettings() => $_clearField(11);
  @$pb.TagNumber(11)
  StorageSettings ensureAlterStorageSettings() => $_ensure(10);

  /// Add/alter column families
  @$pb.TagNumber(12)
  $pb.PbList<ColumnFamily> get addColumnFamilies => $_getList(11);

  @$pb.TagNumber(13)
  $pb.PbList<ColumnFamily> get alterColumnFamilies => $_getList(12);

  /// Alter attributes. Leave the value blank to drop an attribute.
  /// Cannot be used in combination with other fields (except session_id and path) at the moment.
  @$pb.TagNumber(14)
  $pb.PbMap<$core.String, $core.String> get alterAttributes => $_getMap(13);

  /// Set predefined named set of settings for table compaction ["default", "small_table", "log_table"].
  /// Set "default" to use default preset.
  @$pb.TagNumber(15)
  $core.String get setCompactionPolicy => $_getSZ(14);
  @$pb.TagNumber(15)
  set setCompactionPolicy($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasSetCompactionPolicy() => $_has(14);
  @$pb.TagNumber(15)
  void clearSetCompactionPolicy() => $_clearField(15);

  /// Change table partitioning settings
  @$pb.TagNumber(16)
  PartitioningSettings get alterPartitioningSettings => $_getN(15);
  @$pb.TagNumber(16)
  set alterPartitioningSettings(PartitioningSettings value) =>
      $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasAlterPartitioningSettings() => $_has(15);
  @$pb.TagNumber(16)
  void clearAlterPartitioningSettings() => $_clearField(16);
  @$pb.TagNumber(16)
  PartitioningSettings ensureAlterPartitioningSettings() => $_ensure(15);

  /// Enable/disable bloom filter by key
  @$pb.TagNumber(17)
  $9.FeatureFlag_Status get setKeyBloomFilter => $_getN(16);
  @$pb.TagNumber(17)
  set setKeyBloomFilter($9.FeatureFlag_Status value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasSetKeyBloomFilter() => $_has(16);
  @$pb.TagNumber(17)
  void clearSetKeyBloomFilter() => $_clearField(17);

  /// Set read replicas settings for table
  @$pb.TagNumber(18)
  ReadReplicasSettings get setReadReplicasSettings => $_getN(17);
  @$pb.TagNumber(18)
  set setReadReplicasSettings(ReadReplicasSettings value) =>
      $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasSetReadReplicasSettings() => $_has(17);
  @$pb.TagNumber(18)
  void clearSetReadReplicasSettings() => $_clearField(18);
  @$pb.TagNumber(18)
  ReadReplicasSettings ensureSetReadReplicasSettings() => $_ensure(17);

  /// Add change feeds
  @$pb.TagNumber(19)
  $pb.PbList<Changefeed> get addChangefeeds => $_getList(18);

  /// Remove change feeds (by its names)
  @$pb.TagNumber(20)
  $pb.PbList<$core.String> get dropChangefeeds => $_getList(19);

  /// Rename existed index
  @$pb.TagNumber(21)
  $pb.PbList<RenameIndexItem> get renameIndexes => $_getList(20);

  @$pb.TagNumber(22)
  $core.String get setTiering => $_getSZ(21);
  @$pb.TagNumber(22)
  set setTiering($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasSetTiering() => $_has(21);
  @$pb.TagNumber(22)
  void clearSetTiering() => $_clearField(22);

  @$pb.TagNumber(23)
  $5.Empty get dropTiering => $_getN(22);
  @$pb.TagNumber(23)
  set dropTiering($5.Empty value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasDropTiering() => $_has(22);
  @$pb.TagNumber(23)
  void clearDropTiering() => $_clearField(23);
  @$pb.TagNumber(23)
  $5.Empty ensureDropTiering() => $_ensure(22);
}

class AlterTableResponse extends $pb.GeneratedMessage {
  factory AlterTableResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  AlterTableResponse._();

  factory AlterTableResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlterTableResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlterTableResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterTableResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlterTableResponse copyWith(void Function(AlterTableResponse) updates) =>
      super.copyWith((message) => updates(message as AlterTableResponse))
          as AlterTableResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlterTableResponse create() => AlterTableResponse._();
  @$core.override
  AlterTableResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlterTableResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlterTableResponse>(create);
  static AlterTableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

/// Copy table with given path
class CopyTableRequest extends $pb.GeneratedMessage {
  factory CopyTableRequest({
    $core.String? sessionId,
    $core.String? sourcePath,
    $core.String? destinationPath,
    $0.OperationParams? operationParams,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (sourcePath != null) result.sourcePath = sourcePath;
    if (destinationPath != null) result.destinationPath = destinationPath;
    if (operationParams != null) result.operationParams = operationParams;
    return result;
  }

  CopyTableRequest._();

  factory CopyTableRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CopyTableRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CopyTableRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'sourcePath')
    ..aOS(3, _omitFieldNames ? '' : 'destinationPath')
    ..aOM<$0.OperationParams>(4, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CopyTableRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CopyTableRequest copyWith(void Function(CopyTableRequest) updates) =>
      super.copyWith((message) => updates(message as CopyTableRequest))
          as CopyTableRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CopyTableRequest create() => CopyTableRequest._();
  @$core.override
  CopyTableRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CopyTableRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CopyTableRequest>(create);
  static CopyTableRequest? _defaultInstance;

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// Copy from path
  @$pb.TagNumber(2)
  $core.String get sourcePath => $_getSZ(1);
  @$pb.TagNumber(2)
  set sourcePath($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSourcePath() => $_has(1);
  @$pb.TagNumber(2)
  void clearSourcePath() => $_clearField(2);

  /// Copy to path
  @$pb.TagNumber(3)
  $core.String get destinationPath => $_getSZ(2);
  @$pb.TagNumber(3)
  set destinationPath($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDestinationPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearDestinationPath() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.OperationParams get operationParams => $_getN(3);
  @$pb.TagNumber(4)
  set operationParams($0.OperationParams value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOperationParams() => $_has(3);
  @$pb.TagNumber(4)
  void clearOperationParams() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.OperationParams ensureOperationParams() => $_ensure(3);
}

class CopyTableResponse extends $pb.GeneratedMessage {
  factory CopyTableResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  CopyTableResponse._();

  factory CopyTableResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CopyTableResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CopyTableResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CopyTableResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CopyTableResponse copyWith(void Function(CopyTableResponse) updates) =>
      super.copyWith((message) => updates(message as CopyTableResponse))
          as CopyTableResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CopyTableResponse create() => CopyTableResponse._();
  @$core.override
  CopyTableResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CopyTableResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CopyTableResponse>(create);
  static CopyTableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class CopyTableItem extends $pb.GeneratedMessage {
  factory CopyTableItem({
    $core.String? sourcePath,
    $core.String? destinationPath,
    $core.bool? omitIndexes,
  }) {
    final result = create();
    if (sourcePath != null) result.sourcePath = sourcePath;
    if (destinationPath != null) result.destinationPath = destinationPath;
    if (omitIndexes != null) result.omitIndexes = omitIndexes;
    return result;
  }

  CopyTableItem._();

  factory CopyTableItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CopyTableItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CopyTableItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourcePath')
    ..aOS(2, _omitFieldNames ? '' : 'destinationPath')
    ..aOB(3, _omitFieldNames ? '' : 'omitIndexes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CopyTableItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CopyTableItem copyWith(void Function(CopyTableItem) updates) =>
      super.copyWith((message) => updates(message as CopyTableItem))
          as CopyTableItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CopyTableItem create() => CopyTableItem._();
  @$core.override
  CopyTableItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CopyTableItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CopyTableItem>(create);
  static CopyTableItem? _defaultInstance;

  /// Copy from path
  @$pb.TagNumber(1)
  $core.String get sourcePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourcePath($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourcePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourcePath() => $_clearField(1);

  /// Copy to path
  @$pb.TagNumber(2)
  $core.String get destinationPath => $_getSZ(1);
  @$pb.TagNumber(2)
  set destinationPath($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDestinationPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearDestinationPath() => $_clearField(2);

  /// Copy options
  @$pb.TagNumber(3)
  $core.bool get omitIndexes => $_getBF(2);
  @$pb.TagNumber(3)
  set omitIndexes($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOmitIndexes() => $_has(2);
  @$pb.TagNumber(3)
  void clearOmitIndexes() => $_clearField(3);
}

/// Creates consistent copy of given tables.
class CopyTablesRequest extends $pb.GeneratedMessage {
  factory CopyTablesRequest({
    $0.OperationParams? operationParams,
    $core.String? sessionId,
    $core.Iterable<CopyTableItem>? tables,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (sessionId != null) result.sessionId = sessionId;
    if (tables != null) result.tables.addAll(tables);
    return result;
  }

  CopyTablesRequest._();

  factory CopyTablesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CopyTablesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CopyTablesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'sessionId')
    ..pPM<CopyTableItem>(3, _omitFieldNames ? '' : 'tables',
        subBuilder: CopyTableItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CopyTablesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CopyTablesRequest copyWith(void Function(CopyTablesRequest) updates) =>
      super.copyWith((message) => updates(message as CopyTablesRequest))
          as CopyTablesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CopyTablesRequest create() => CopyTablesRequest._();
  @$core.override
  CopyTablesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CopyTablesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CopyTablesRequest>(create);
  static CopyTablesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($0.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.OperationParams ensureOperationParams() => $_ensure(0);

  /// Session identifier
  @$pb.TagNumber(2)
  $core.String get sessionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => $_clearField(2);

  /// Source and destination paths which describe copies
  @$pb.TagNumber(3)
  $pb.PbList<CopyTableItem> get tables => $_getList(2);
}

class CopyTablesResponse extends $pb.GeneratedMessage {
  factory CopyTablesResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  CopyTablesResponse._();

  factory CopyTablesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CopyTablesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CopyTablesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CopyTablesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CopyTablesResponse copyWith(void Function(CopyTablesResponse) updates) =>
      super.copyWith((message) => updates(message as CopyTablesResponse))
          as CopyTablesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CopyTablesResponse create() => CopyTablesResponse._();
  @$core.override
  CopyTablesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CopyTablesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CopyTablesResponse>(create);
  static CopyTablesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class RenameTableItem extends $pb.GeneratedMessage {
  factory RenameTableItem({
    $core.String? sourcePath,
    $core.String? destinationPath,
    $core.bool? replaceDestination,
  }) {
    final result = create();
    if (sourcePath != null) result.sourcePath = sourcePath;
    if (destinationPath != null) result.destinationPath = destinationPath;
    if (replaceDestination != null)
      result.replaceDestination = replaceDestination;
    return result;
  }

  RenameTableItem._();

  factory RenameTableItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RenameTableItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RenameTableItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourcePath')
    ..aOS(2, _omitFieldNames ? '' : 'destinationPath')
    ..aOB(3, _omitFieldNames ? '' : 'replaceDestination')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenameTableItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenameTableItem copyWith(void Function(RenameTableItem) updates) =>
      super.copyWith((message) => updates(message as RenameTableItem))
          as RenameTableItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RenameTableItem create() => RenameTableItem._();
  @$core.override
  RenameTableItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RenameTableItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RenameTableItem>(create);
  static RenameTableItem? _defaultInstance;

  /// Full path
  @$pb.TagNumber(1)
  $core.String get sourcePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourcePath($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourcePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourcePath() => $_clearField(1);

  /// Full path
  @$pb.TagNumber(2)
  $core.String get destinationPath => $_getSZ(1);
  @$pb.TagNumber(2)
  set destinationPath($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDestinationPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearDestinationPath() => $_clearField(2);

  /// Move options
  @$pb.TagNumber(3)
  $core.bool get replaceDestination => $_getBF(2);
  @$pb.TagNumber(3)
  set replaceDestination($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReplaceDestination() => $_has(2);
  @$pb.TagNumber(3)
  void clearReplaceDestination() => $_clearField(3);
}

/// Moves given tables
class RenameTablesRequest extends $pb.GeneratedMessage {
  factory RenameTablesRequest({
    $0.OperationParams? operationParams,
    $core.String? sessionId,
    $core.Iterable<RenameTableItem>? tables,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (sessionId != null) result.sessionId = sessionId;
    if (tables != null) result.tables.addAll(tables);
    return result;
  }

  RenameTablesRequest._();

  factory RenameTablesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RenameTablesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RenameTablesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'sessionId')
    ..pPM<RenameTableItem>(3, _omitFieldNames ? '' : 'tables',
        subBuilder: RenameTableItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenameTablesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenameTablesRequest copyWith(void Function(RenameTablesRequest) updates) =>
      super.copyWith((message) => updates(message as RenameTablesRequest))
          as RenameTablesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RenameTablesRequest create() => RenameTablesRequest._();
  @$core.override
  RenameTablesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RenameTablesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RenameTablesRequest>(create);
  static RenameTablesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($0.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.OperationParams ensureOperationParams() => $_ensure(0);

  /// Session identifier
  @$pb.TagNumber(2)
  $core.String get sessionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => $_clearField(2);

  /// Source and destination paths inside RenameTableItem describe rename actions
  @$pb.TagNumber(3)
  $pb.PbList<RenameTableItem> get tables => $_getList(2);
}

class RenameTablesResponse extends $pb.GeneratedMessage {
  factory RenameTablesResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  RenameTablesResponse._();

  factory RenameTablesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RenameTablesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RenameTablesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenameTablesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RenameTablesResponse copyWith(void Function(RenameTablesResponse) updates) =>
      super.copyWith((message) => updates(message as RenameTablesResponse))
          as RenameTablesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RenameTablesResponse create() => RenameTablesResponse._();
  @$core.override
  RenameTablesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RenameTablesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RenameTablesResponse>(create);
  static RenameTablesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

/// Describe table with given path
class DescribeTableRequest extends $pb.GeneratedMessage {
  factory DescribeTableRequest({
    $core.String? sessionId,
    $core.String? path,
    $0.OperationParams? operationParams,
    $core.bool? includeShardKeyBounds,
    $core.bool? includeTableStats,
    $core.bool? includePartitionStats,
    $core.bool? includeShardNodesInfo,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (path != null) result.path = path;
    if (operationParams != null) result.operationParams = operationParams;
    if (includeShardKeyBounds != null)
      result.includeShardKeyBounds = includeShardKeyBounds;
    if (includeTableStats != null) result.includeTableStats = includeTableStats;
    if (includePartitionStats != null)
      result.includePartitionStats = includePartitionStats;
    if (includeShardNodesInfo != null)
      result.includeShardNodesInfo = includeShardNodesInfo;
    return result;
  }

  DescribeTableRequest._();

  factory DescribeTableRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeTableRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeTableRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aOM<$0.OperationParams>(4, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..aOB(5, _omitFieldNames ? '' : 'includeShardKeyBounds')
    ..aOB(6, _omitFieldNames ? '' : 'includeTableStats')
    ..aOB(7, _omitFieldNames ? '' : 'includePartitionStats')
    ..aOB(9, _omitFieldNames ? '' : 'includeShardNodesInfo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTableRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTableRequest copyWith(void Function(DescribeTableRequest) updates) =>
      super.copyWith((message) => updates(message as DescribeTableRequest))
          as DescribeTableRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeTableRequest create() => DescribeTableRequest._();
  @$core.override
  DescribeTableRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeTableRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeTableRequest>(create);
  static DescribeTableRequest? _defaultInstance;

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// Full path
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  @$pb.TagNumber(4)
  $0.OperationParams get operationParams => $_getN(2);
  @$pb.TagNumber(4)
  set operationParams($0.OperationParams value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOperationParams() => $_has(2);
  @$pb.TagNumber(4)
  void clearOperationParams() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.OperationParams ensureOperationParams() => $_ensure(2);

  /// Includes shard key distribution info
  @$pb.TagNumber(5)
  $core.bool get includeShardKeyBounds => $_getBF(3);
  @$pb.TagNumber(5)
  set includeShardKeyBounds($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(5)
  $core.bool hasIncludeShardKeyBounds() => $_has(3);
  @$pb.TagNumber(5)
  void clearIncludeShardKeyBounds() => $_clearField(5);

  /// Includes table statistics
  @$pb.TagNumber(6)
  $core.bool get includeTableStats => $_getBF(4);
  @$pb.TagNumber(6)
  set includeTableStats($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(6)
  $core.bool hasIncludeTableStats() => $_has(4);
  @$pb.TagNumber(6)
  void clearIncludeTableStats() => $_clearField(6);

  /// Includes partition statistics (required include_table_statistics)
  @$pb.TagNumber(7)
  $core.bool get includePartitionStats => $_getBF(5);
  @$pb.TagNumber(7)
  set includePartitionStats($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(7)
  $core.bool hasIncludePartitionStats() => $_has(5);
  @$pb.TagNumber(7)
  void clearIncludePartitionStats() => $_clearField(7);

  /// Includes shard -> node id maping (required include_partition_stats)
  @$pb.TagNumber(9)
  $core.bool get includeShardNodesInfo => $_getBF(6);
  @$pb.TagNumber(9)
  set includeShardNodesInfo($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(9)
  $core.bool hasIncludeShardNodesInfo() => $_has(6);
  @$pb.TagNumber(9)
  void clearIncludeShardNodesInfo() => $_clearField(9);
}

class DescribeTableResponse extends $pb.GeneratedMessage {
  factory DescribeTableResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  DescribeTableResponse._();

  factory DescribeTableResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeTableResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeTableResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTableResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTableResponse copyWith(
          void Function(DescribeTableResponse) updates) =>
      super.copyWith((message) => updates(message as DescribeTableResponse))
          as DescribeTableResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeTableResponse create() => DescribeTableResponse._();
  @$core.override
  DescribeTableResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeTableResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeTableResponse>(create);
  static DescribeTableResponse? _defaultInstance;

  /// Holds DescribeTableResult in case of successful call
  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class DescribeTableResult extends $pb.GeneratedMessage {
  factory DescribeTableResult({
    $6.Entry? self,
    $core.Iterable<ColumnMeta>? columns,
    $core.Iterable<$core.String>? primaryKey,
    $core.Iterable<$3.TypedValue>? shardKeyBounds,
    $core.Iterable<TableIndexDescription>? indexes,
    TableStats? tableStats,
    TtlSettings? ttlSettings,
    StorageSettings? storageSettings,
    $core.Iterable<ColumnFamily>? columnFamilies,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? attributes,
    PartitioningSettings? partitioningSettings,
    $9.FeatureFlag_Status? keyBloomFilter,
    ReadReplicasSettings? readReplicasSettings,
    $core.Iterable<ChangefeedDescription>? changefeeds,
    $core.String? tiering,
    $core.bool? temporary,
    StoreType? storeType,
  }) {
    final result = create();
    if (self != null) result.self = self;
    if (columns != null) result.columns.addAll(columns);
    if (primaryKey != null) result.primaryKey.addAll(primaryKey);
    if (shardKeyBounds != null) result.shardKeyBounds.addAll(shardKeyBounds);
    if (indexes != null) result.indexes.addAll(indexes);
    if (tableStats != null) result.tableStats = tableStats;
    if (ttlSettings != null) result.ttlSettings = ttlSettings;
    if (storageSettings != null) result.storageSettings = storageSettings;
    if (columnFamilies != null) result.columnFamilies.addAll(columnFamilies);
    if (attributes != null) result.attributes.addEntries(attributes);
    if (partitioningSettings != null)
      result.partitioningSettings = partitioningSettings;
    if (keyBloomFilter != null) result.keyBloomFilter = keyBloomFilter;
    if (readReplicasSettings != null)
      result.readReplicasSettings = readReplicasSettings;
    if (changefeeds != null) result.changefeeds.addAll(changefeeds);
    if (tiering != null) result.tiering = tiering;
    if (temporary != null) result.temporary = temporary;
    if (storeType != null) result.storeType = storeType;
    return result;
  }

  DescribeTableResult._();

  factory DescribeTableResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeTableResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeTableResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$6.Entry>(1, _omitFieldNames ? '' : 'self',
        subBuilder: $6.Entry.create)
    ..pPM<ColumnMeta>(2, _omitFieldNames ? '' : 'columns',
        subBuilder: ColumnMeta.create)
    ..pPS(3, _omitFieldNames ? '' : 'primaryKey')
    ..pPM<$3.TypedValue>(4, _omitFieldNames ? '' : 'shardKeyBounds',
        subBuilder: $3.TypedValue.create)
    ..pPM<TableIndexDescription>(5, _omitFieldNames ? '' : 'indexes',
        subBuilder: TableIndexDescription.create)
    ..aOM<TableStats>(6, _omitFieldNames ? '' : 'tableStats',
        subBuilder: TableStats.create)
    ..aOM<TtlSettings>(7, _omitFieldNames ? '' : 'ttlSettings',
        subBuilder: TtlSettings.create)
    ..aOM<StorageSettings>(8, _omitFieldNames ? '' : 'storageSettings',
        subBuilder: StorageSettings.create)
    ..pPM<ColumnFamily>(9, _omitFieldNames ? '' : 'columnFamilies',
        subBuilder: ColumnFamily.create)
    ..m<$core.String, $core.String>(10, _omitFieldNames ? '' : 'attributes',
        entryClassName: 'DescribeTableResult.AttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..aOM<PartitioningSettings>(
        12, _omitFieldNames ? '' : 'partitioningSettings',
        subBuilder: PartitioningSettings.create)
    ..aE<$9.FeatureFlag_Status>(13, _omitFieldNames ? '' : 'keyBloomFilter',
        enumValues: $9.FeatureFlag_Status.values)
    ..aOM<ReadReplicasSettings>(
        14, _omitFieldNames ? '' : 'readReplicasSettings',
        subBuilder: ReadReplicasSettings.create)
    ..pPM<ChangefeedDescription>(15, _omitFieldNames ? '' : 'changefeeds',
        subBuilder: ChangefeedDescription.create)
    ..aOS(16, _omitFieldNames ? '' : 'tiering')
    ..aOB(17, _omitFieldNames ? '' : 'temporary')
    ..aE<StoreType>(18, _omitFieldNames ? '' : 'storeType',
        enumValues: StoreType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTableResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTableResult copyWith(void Function(DescribeTableResult) updates) =>
      super.copyWith((message) => updates(message as DescribeTableResult))
          as DescribeTableResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeTableResult create() => DescribeTableResult._();
  @$core.override
  DescribeTableResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeTableResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeTableResult>(create);
  static DescribeTableResult? _defaultInstance;

  /// Description of scheme object
  @$pb.TagNumber(1)
  $6.Entry get self => $_getN(0);
  @$pb.TagNumber(1)
  set self($6.Entry value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSelf() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelf() => $_clearField(1);
  @$pb.TagNumber(1)
  $6.Entry ensureSelf() => $_ensure(0);

  /// List of columns
  @$pb.TagNumber(2)
  $pb.PbList<ColumnMeta> get columns => $_getList(1);

  /// List of primary key columns
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get primaryKey => $_getList(2);

  /// List of key ranges for shard
  @$pb.TagNumber(4)
  $pb.PbList<$3.TypedValue> get shardKeyBounds => $_getList(3);

  /// List of indexes
  @$pb.TagNumber(5)
  $pb.PbList<TableIndexDescription> get indexes => $_getList(4);

  /// Statistics of table
  @$pb.TagNumber(6)
  TableStats get tableStats => $_getN(5);
  @$pb.TagNumber(6)
  set tableStats(TableStats value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTableStats() => $_has(5);
  @$pb.TagNumber(6)
  void clearTableStats() => $_clearField(6);
  @$pb.TagNumber(6)
  TableStats ensureTableStats() => $_ensure(5);

  /// TTL params
  @$pb.TagNumber(7)
  TtlSettings get ttlSettings => $_getN(6);
  @$pb.TagNumber(7)
  set ttlSettings(TtlSettings value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasTtlSettings() => $_has(6);
  @$pb.TagNumber(7)
  void clearTtlSettings() => $_clearField(7);
  @$pb.TagNumber(7)
  TtlSettings ensureTtlSettings() => $_ensure(6);

  /// Storage settings for table
  @$pb.TagNumber(8)
  StorageSettings get storageSettings => $_getN(7);
  @$pb.TagNumber(8)
  set storageSettings(StorageSettings value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasStorageSettings() => $_has(7);
  @$pb.TagNumber(8)
  void clearStorageSettings() => $_clearField(8);
  @$pb.TagNumber(8)
  StorageSettings ensureStorageSettings() => $_ensure(7);

  /// Column families
  @$pb.TagNumber(9)
  $pb.PbList<ColumnFamily> get columnFamilies => $_getList(8);

  /// Attributes
  @$pb.TagNumber(10)
  $pb.PbMap<$core.String, $core.String> get attributes => $_getMap(9);

  /// Partitioning settings for table
  @$pb.TagNumber(12)
  PartitioningSettings get partitioningSettings => $_getN(10);
  @$pb.TagNumber(12)
  set partitioningSettings(PartitioningSettings value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasPartitioningSettings() => $_has(10);
  @$pb.TagNumber(12)
  void clearPartitioningSettings() => $_clearField(12);
  @$pb.TagNumber(12)
  PartitioningSettings ensurePartitioningSettings() => $_ensure(10);

  /// Bloom filter by key
  @$pb.TagNumber(13)
  $9.FeatureFlag_Status get keyBloomFilter => $_getN(11);
  @$pb.TagNumber(13)
  set keyBloomFilter($9.FeatureFlag_Status value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasKeyBloomFilter() => $_has(11);
  @$pb.TagNumber(13)
  void clearKeyBloomFilter() => $_clearField(13);

  /// Read replicas settings for table
  @$pb.TagNumber(14)
  ReadReplicasSettings get readReplicasSettings => $_getN(12);
  @$pb.TagNumber(14)
  set readReplicasSettings(ReadReplicasSettings value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasReadReplicasSettings() => $_has(12);
  @$pb.TagNumber(14)
  void clearReadReplicasSettings() => $_clearField(14);
  @$pb.TagNumber(14)
  ReadReplicasSettings ensureReadReplicasSettings() => $_ensure(12);

  /// List of changefeeds
  @$pb.TagNumber(15)
  $pb.PbList<ChangefeedDescription> get changefeeds => $_getList(13);

  /// Tiering rules name
  @$pb.TagNumber(16)
  $core.String get tiering => $_getSZ(14);
  @$pb.TagNumber(16)
  set tiering($core.String value) => $_setString(14, value);
  @$pb.TagNumber(16)
  $core.bool hasTiering() => $_has(14);
  @$pb.TagNumber(16)
  void clearTiering() => $_clearField(16);

  /// Is temporary table
  @$pb.TagNumber(17)
  $core.bool get temporary => $_getBF(15);
  @$pb.TagNumber(17)
  set temporary($core.bool value) => $_setBool(15, value);
  @$pb.TagNumber(17)
  $core.bool hasTemporary() => $_has(15);
  @$pb.TagNumber(17)
  void clearTemporary() => $_clearField(17);

  /// Is table column or row oriented
  @$pb.TagNumber(18)
  StoreType get storeType => $_getN(16);
  @$pb.TagNumber(18)
  set storeType(StoreType value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasStoreType() => $_has(16);
  @$pb.TagNumber(18)
  void clearStoreType() => $_clearField(18);
}

enum Query_Query { yqlText, id, notSet }

class Query extends $pb.GeneratedMessage {
  factory Query({
    $core.String? yqlText,
    $core.String? id,
  }) {
    final result = create();
    if (yqlText != null) result.yqlText = yqlText;
    if (id != null) result.id = id;
    return result;
  }

  Query._();

  factory Query.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Query.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Query_Query> _Query_QueryByTag = {
    1: Query_Query.yqlText,
    2: Query_Query.id,
    0: Query_Query.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Query',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'yqlText')
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Query clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Query copyWith(void Function(Query) updates) =>
      super.copyWith((message) => updates(message as Query)) as Query;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Query create() => Query._();
  @$core.override
  Query createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Query getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Query>(create);
  static Query? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  Query_Query whichQuery() => _Query_QueryByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearQuery() => $_clearField($_whichOneof(0));

  /// SQL program
  @$pb.TagNumber(1)
  $core.String get yqlText => $_getSZ(0);
  @$pb.TagNumber(1)
  set yqlText($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasYqlText() => $_has(0);
  @$pb.TagNumber(1)
  void clearYqlText() => $_clearField(1);

  /// Prepared query id
  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
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

class QueryCachePolicy extends $pb.GeneratedMessage {
  factory QueryCachePolicy({
    $core.bool? keepInCache,
  }) {
    final result = create();
    if (keepInCache != null) result.keepInCache = keepInCache;
    return result;
  }

  QueryCachePolicy._();

  factory QueryCachePolicy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QueryCachePolicy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueryCachePolicy',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'keepInCache')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryCachePolicy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryCachePolicy copyWith(void Function(QueryCachePolicy) updates) =>
      super.copyWith((message) => updates(message as QueryCachePolicy))
          as QueryCachePolicy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryCachePolicy create() => QueryCachePolicy._();
  @$core.override
  QueryCachePolicy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static QueryCachePolicy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueryCachePolicy>(create);
  static QueryCachePolicy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get keepInCache => $_getBF(0);
  @$pb.TagNumber(1)
  set keepInCache($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKeepInCache() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeepInCache() => $_clearField(1);
}

/// Collect and return query execution stats
class QueryStatsCollection extends $pb.GeneratedMessage {
  factory QueryStatsCollection() => create();

  QueryStatsCollection._();

  factory QueryStatsCollection.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QueryStatsCollection.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueryStatsCollection',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryStatsCollection clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryStatsCollection copyWith(void Function(QueryStatsCollection) updates) =>
      super.copyWith((message) => updates(message as QueryStatsCollection))
          as QueryStatsCollection;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryStatsCollection create() => QueryStatsCollection._();
  @$core.override
  QueryStatsCollection createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static QueryStatsCollection getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueryStatsCollection>(create);
  static QueryStatsCollection? _defaultInstance;
}

class ExecuteDataQueryRequest extends $pb.GeneratedMessage {
  factory ExecuteDataQueryRequest({
    $core.String? sessionId,
    TransactionControl? txControl,
    Query? query,
    $core.Iterable<$core.MapEntry<$core.String, $3.TypedValue>>? parameters,
    QueryCachePolicy? queryCachePolicy,
    $0.OperationParams? operationParams,
    QueryStatsCollection_Mode? collectStats,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (txControl != null) result.txControl = txControl;
    if (query != null) result.query = query;
    if (parameters != null) result.parameters.addEntries(parameters);
    if (queryCachePolicy != null) result.queryCachePolicy = queryCachePolicy;
    if (operationParams != null) result.operationParams = operationParams;
    if (collectStats != null) result.collectStats = collectStats;
    return result;
  }

  ExecuteDataQueryRequest._();

  factory ExecuteDataQueryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteDataQueryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteDataQueryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOM<TransactionControl>(2, _omitFieldNames ? '' : 'txControl',
        subBuilder: TransactionControl.create)
    ..aOM<Query>(3, _omitFieldNames ? '' : 'query', subBuilder: Query.create)
    ..m<$core.String, $3.TypedValue>(4, _omitFieldNames ? '' : 'parameters',
        entryClassName: 'ExecuteDataQueryRequest.ParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $3.TypedValue.create,
        valueDefaultOrMaker: $3.TypedValue.getDefault,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..aOM<QueryCachePolicy>(5, _omitFieldNames ? '' : 'queryCachePolicy',
        subBuilder: QueryCachePolicy.create)
    ..aOM<$0.OperationParams>(6, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..aE<QueryStatsCollection_Mode>(7, _omitFieldNames ? '' : 'collectStats',
        enumValues: QueryStatsCollection_Mode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteDataQueryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteDataQueryRequest copyWith(
          void Function(ExecuteDataQueryRequest) updates) =>
      super.copyWith((message) => updates(message as ExecuteDataQueryRequest))
          as ExecuteDataQueryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteDataQueryRequest create() => ExecuteDataQueryRequest._();
  @$core.override
  ExecuteDataQueryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteDataQueryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteDataQueryRequest>(create);
  static ExecuteDataQueryRequest? _defaultInstance;

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  TransactionControl get txControl => $_getN(1);
  @$pb.TagNumber(2)
  set txControl(TransactionControl value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTxControl() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxControl() => $_clearField(2);
  @$pb.TagNumber(2)
  TransactionControl ensureTxControl() => $_ensure(1);

  @$pb.TagNumber(3)
  Query get query => $_getN(2);
  @$pb.TagNumber(3)
  set query(Query value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasQuery() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuery() => $_clearField(3);
  @$pb.TagNumber(3)
  Query ensureQuery() => $_ensure(2);

  /// Map of query parameters (optional)
  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $3.TypedValue> get parameters => $_getMap(3);

  @$pb.TagNumber(5)
  QueryCachePolicy get queryCachePolicy => $_getN(4);
  @$pb.TagNumber(5)
  set queryCachePolicy(QueryCachePolicy value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasQueryCachePolicy() => $_has(4);
  @$pb.TagNumber(5)
  void clearQueryCachePolicy() => $_clearField(5);
  @$pb.TagNumber(5)
  QueryCachePolicy ensureQueryCachePolicy() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.OperationParams get operationParams => $_getN(5);
  @$pb.TagNumber(6)
  set operationParams($0.OperationParams value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasOperationParams() => $_has(5);
  @$pb.TagNumber(6)
  void clearOperationParams() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.OperationParams ensureOperationParams() => $_ensure(5);

  @$pb.TagNumber(7)
  QueryStatsCollection_Mode get collectStats => $_getN(6);
  @$pb.TagNumber(7)
  set collectStats(QueryStatsCollection_Mode value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCollectStats() => $_has(6);
  @$pb.TagNumber(7)
  void clearCollectStats() => $_clearField(7);
}

class ExecuteDataQueryResponse extends $pb.GeneratedMessage {
  factory ExecuteDataQueryResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  ExecuteDataQueryResponse._();

  factory ExecuteDataQueryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteDataQueryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteDataQueryResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteDataQueryResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteDataQueryResponse copyWith(
          void Function(ExecuteDataQueryResponse) updates) =>
      super.copyWith((message) => updates(message as ExecuteDataQueryResponse))
          as ExecuteDataQueryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteDataQueryResponse create() => ExecuteDataQueryResponse._();
  @$core.override
  ExecuteDataQueryResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteDataQueryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteDataQueryResponse>(create);
  static ExecuteDataQueryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class ExecuteSchemeQueryRequest extends $pb.GeneratedMessage {
  factory ExecuteSchemeQueryRequest({
    $core.String? sessionId,
    $core.String? yqlText,
    $0.OperationParams? operationParams,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (yqlText != null) result.yqlText = yqlText;
    if (operationParams != null) result.operationParams = operationParams;
    return result;
  }

  ExecuteSchemeQueryRequest._();

  factory ExecuteSchemeQueryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteSchemeQueryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteSchemeQueryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'yqlText')
    ..aOM<$0.OperationParams>(3, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteSchemeQueryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteSchemeQueryRequest copyWith(
          void Function(ExecuteSchemeQueryRequest) updates) =>
      super.copyWith((message) => updates(message as ExecuteSchemeQueryRequest))
          as ExecuteSchemeQueryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteSchemeQueryRequest create() => ExecuteSchemeQueryRequest._();
  @$core.override
  ExecuteSchemeQueryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteSchemeQueryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteSchemeQueryRequest>(create);
  static ExecuteSchemeQueryRequest? _defaultInstance;

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// SQL text
  @$pb.TagNumber(2)
  $core.String get yqlText => $_getSZ(1);
  @$pb.TagNumber(2)
  set yqlText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasYqlText() => $_has(1);
  @$pb.TagNumber(2)
  void clearYqlText() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.OperationParams get operationParams => $_getN(2);
  @$pb.TagNumber(3)
  set operationParams($0.OperationParams value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOperationParams() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperationParams() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.OperationParams ensureOperationParams() => $_ensure(2);
}

class ExecuteSchemeQueryResponse extends $pb.GeneratedMessage {
  factory ExecuteSchemeQueryResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  ExecuteSchemeQueryResponse._();

  factory ExecuteSchemeQueryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteSchemeQueryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteSchemeQueryResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteSchemeQueryResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteSchemeQueryResponse copyWith(
          void Function(ExecuteSchemeQueryResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ExecuteSchemeQueryResponse))
          as ExecuteSchemeQueryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteSchemeQueryResponse create() => ExecuteSchemeQueryResponse._();
  @$core.override
  ExecuteSchemeQueryResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteSchemeQueryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteSchemeQueryResponse>(create);
  static ExecuteSchemeQueryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

/// Holds transaction id
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
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

/// Holds query id and type of parameters
class QueryMeta extends $pb.GeneratedMessage {
  factory QueryMeta({
    $core.String? id,
    $core.Iterable<$core.MapEntry<$core.String, $3.Type>>? parametersTypes,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (parametersTypes != null)
      result.parametersTypes.addEntries(parametersTypes);
    return result;
  }

  QueryMeta._();

  factory QueryMeta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QueryMeta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueryMeta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..m<$core.String, $3.Type>(2, _omitFieldNames ? '' : 'parametersTypes',
        entryClassName: 'QueryMeta.ParametersTypesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $3.Type.create,
        valueDefaultOrMaker: $3.Type.getDefault,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryMeta clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryMeta copyWith(void Function(QueryMeta) updates) =>
      super.copyWith((message) => updates(message as QueryMeta)) as QueryMeta;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryMeta create() => QueryMeta._();
  @$core.override
  QueryMeta createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static QueryMeta getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryMeta>(create);
  static QueryMeta? _defaultInstance;

  /// Query identifier
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Type of parameters
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $3.Type> get parametersTypes => $_getMap(1);
}

/// One QueryResult can contain multiple tables
class ExecuteQueryResult extends $pb.GeneratedMessage {
  factory ExecuteQueryResult({
    $core.Iterable<$3.ResultSet>? resultSets,
    TransactionMeta? txMeta,
    QueryMeta? queryMeta,
    $7.QueryStats? queryStats,
  }) {
    final result = create();
    if (resultSets != null) result.resultSets.addAll(resultSets);
    if (txMeta != null) result.txMeta = txMeta;
    if (queryMeta != null) result.queryMeta = queryMeta;
    if (queryStats != null) result.queryStats = queryStats;
    return result;
  }

  ExecuteQueryResult._();

  factory ExecuteQueryResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteQueryResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteQueryResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..pPM<$3.ResultSet>(1, _omitFieldNames ? '' : 'resultSets',
        subBuilder: $3.ResultSet.create)
    ..aOM<TransactionMeta>(2, _omitFieldNames ? '' : 'txMeta',
        subBuilder: TransactionMeta.create)
    ..aOM<QueryMeta>(3, _omitFieldNames ? '' : 'queryMeta',
        subBuilder: QueryMeta.create)
    ..aOM<$7.QueryStats>(4, _omitFieldNames ? '' : 'queryStats',
        subBuilder: $7.QueryStats.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteQueryResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteQueryResult copyWith(void Function(ExecuteQueryResult) updates) =>
      super.copyWith((message) => updates(message as ExecuteQueryResult))
          as ExecuteQueryResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteQueryResult create() => ExecuteQueryResult._();
  @$core.override
  ExecuteQueryResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteQueryResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteQueryResult>(create);
  static ExecuteQueryResult? _defaultInstance;

  /// Result rets (for each table)
  @$pb.TagNumber(1)
  $pb.PbList<$3.ResultSet> get resultSets => $_getList(0);

  /// Transaction metadata
  @$pb.TagNumber(2)
  TransactionMeta get txMeta => $_getN(1);
  @$pb.TagNumber(2)
  set txMeta(TransactionMeta value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTxMeta() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxMeta() => $_clearField(2);
  @$pb.TagNumber(2)
  TransactionMeta ensureTxMeta() => $_ensure(1);

  /// Query metadata
  @$pb.TagNumber(3)
  QueryMeta get queryMeta => $_getN(2);
  @$pb.TagNumber(3)
  set queryMeta(QueryMeta value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasQueryMeta() => $_has(2);
  @$pb.TagNumber(3)
  void clearQueryMeta() => $_clearField(3);
  @$pb.TagNumber(3)
  QueryMeta ensureQueryMeta() => $_ensure(2);

  /// Query execution statistics
  @$pb.TagNumber(4)
  $7.QueryStats get queryStats => $_getN(3);
  @$pb.TagNumber(4)
  set queryStats($7.QueryStats value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasQueryStats() => $_has(3);
  @$pb.TagNumber(4)
  void clearQueryStats() => $_clearField(4);
  @$pb.TagNumber(4)
  $7.QueryStats ensureQueryStats() => $_ensure(3);
}

/// Explain data query
class ExplainDataQueryRequest extends $pb.GeneratedMessage {
  factory ExplainDataQueryRequest({
    $core.String? sessionId,
    $core.String? yqlText,
    $0.OperationParams? operationParams,
    $core.bool? collectFullDiagnostics,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (yqlText != null) result.yqlText = yqlText;
    if (operationParams != null) result.operationParams = operationParams;
    if (collectFullDiagnostics != null)
      result.collectFullDiagnostics = collectFullDiagnostics;
    return result;
  }

  ExplainDataQueryRequest._();

  factory ExplainDataQueryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExplainDataQueryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExplainDataQueryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'yqlText')
    ..aOM<$0.OperationParams>(3, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..aOB(4, _omitFieldNames ? '' : 'collectFullDiagnostics')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExplainDataQueryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExplainDataQueryRequest copyWith(
          void Function(ExplainDataQueryRequest) updates) =>
      super.copyWith((message) => updates(message as ExplainDataQueryRequest))
          as ExplainDataQueryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExplainDataQueryRequest create() => ExplainDataQueryRequest._();
  @$core.override
  ExplainDataQueryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExplainDataQueryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExplainDataQueryRequest>(create);
  static ExplainDataQueryRequest? _defaultInstance;

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// SQL text to explain
  @$pb.TagNumber(2)
  $core.String get yqlText => $_getSZ(1);
  @$pb.TagNumber(2)
  set yqlText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasYqlText() => $_has(1);
  @$pb.TagNumber(2)
  void clearYqlText() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.OperationParams get operationParams => $_getN(2);
  @$pb.TagNumber(3)
  set operationParams($0.OperationParams value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOperationParams() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperationParams() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.OperationParams ensureOperationParams() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get collectFullDiagnostics => $_getBF(3);
  @$pb.TagNumber(4)
  set collectFullDiagnostics($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCollectFullDiagnostics() => $_has(3);
  @$pb.TagNumber(4)
  void clearCollectFullDiagnostics() => $_clearField(4);
}

class ExplainDataQueryResponse extends $pb.GeneratedMessage {
  factory ExplainDataQueryResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  ExplainDataQueryResponse._();

  factory ExplainDataQueryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExplainDataQueryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExplainDataQueryResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExplainDataQueryResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExplainDataQueryResponse copyWith(
          void Function(ExplainDataQueryResponse) updates) =>
      super.copyWith((message) => updates(message as ExplainDataQueryResponse))
          as ExplainDataQueryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExplainDataQueryResponse create() => ExplainDataQueryResponse._();
  @$core.override
  ExplainDataQueryResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExplainDataQueryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExplainDataQueryResponse>(create);
  static ExplainDataQueryResponse? _defaultInstance;

  /// Holds ExplainQueryResult in case of successful call
  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class ExplainQueryResult extends $pb.GeneratedMessage {
  factory ExplainQueryResult({
    $core.String? queryAst,
    $core.String? queryPlan,
    $core.String? queryFullDiagnostics,
  }) {
    final result = create();
    if (queryAst != null) result.queryAst = queryAst;
    if (queryPlan != null) result.queryPlan = queryPlan;
    if (queryFullDiagnostics != null)
      result.queryFullDiagnostics = queryFullDiagnostics;
    return result;
  }

  ExplainQueryResult._();

  factory ExplainQueryResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExplainQueryResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExplainQueryResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'queryAst')
    ..aOS(2, _omitFieldNames ? '' : 'queryPlan')
    ..aOS(3, _omitFieldNames ? '' : 'queryFullDiagnostics')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExplainQueryResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExplainQueryResult copyWith(void Function(ExplainQueryResult) updates) =>
      super.copyWith((message) => updates(message as ExplainQueryResult))
          as ExplainQueryResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExplainQueryResult create() => ExplainQueryResult._();
  @$core.override
  ExplainQueryResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExplainQueryResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExplainQueryResult>(create);
  static ExplainQueryResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get queryAst => $_getSZ(0);
  @$pb.TagNumber(1)
  set queryAst($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQueryAst() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueryAst() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get queryPlan => $_getSZ(1);
  @$pb.TagNumber(2)
  set queryPlan($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQueryPlan() => $_has(1);
  @$pb.TagNumber(2)
  void clearQueryPlan() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get queryFullDiagnostics => $_getSZ(2);
  @$pb.TagNumber(3)
  set queryFullDiagnostics($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasQueryFullDiagnostics() => $_has(2);
  @$pb.TagNumber(3)
  void clearQueryFullDiagnostics() => $_clearField(3);
}

/// Prepare given program to execute
class PrepareDataQueryRequest extends $pb.GeneratedMessage {
  factory PrepareDataQueryRequest({
    $core.String? sessionId,
    $core.String? yqlText,
    $0.OperationParams? operationParams,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (yqlText != null) result.yqlText = yqlText;
    if (operationParams != null) result.operationParams = operationParams;
    return result;
  }

  PrepareDataQueryRequest._();

  factory PrepareDataQueryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareDataQueryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareDataQueryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'yqlText')
    ..aOM<$0.OperationParams>(3, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareDataQueryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareDataQueryRequest copyWith(
          void Function(PrepareDataQueryRequest) updates) =>
      super.copyWith((message) => updates(message as PrepareDataQueryRequest))
          as PrepareDataQueryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareDataQueryRequest create() => PrepareDataQueryRequest._();
  @$core.override
  PrepareDataQueryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareDataQueryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareDataQueryRequest>(create);
  static PrepareDataQueryRequest? _defaultInstance;

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// SQL text
  @$pb.TagNumber(2)
  $core.String get yqlText => $_getSZ(1);
  @$pb.TagNumber(2)
  set yqlText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasYqlText() => $_has(1);
  @$pb.TagNumber(2)
  void clearYqlText() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.OperationParams get operationParams => $_getN(2);
  @$pb.TagNumber(3)
  set operationParams($0.OperationParams value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOperationParams() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperationParams() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.OperationParams ensureOperationParams() => $_ensure(2);
}

class PrepareDataQueryResponse extends $pb.GeneratedMessage {
  factory PrepareDataQueryResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  PrepareDataQueryResponse._();

  factory PrepareDataQueryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareDataQueryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareDataQueryResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareDataQueryResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareDataQueryResponse copyWith(
          void Function(PrepareDataQueryResponse) updates) =>
      super.copyWith((message) => updates(message as PrepareDataQueryResponse))
          as PrepareDataQueryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareDataQueryResponse create() => PrepareDataQueryResponse._();
  @$core.override
  PrepareDataQueryResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareDataQueryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareDataQueryResponse>(create);
  static PrepareDataQueryResponse? _defaultInstance;

  /// Holds PrepareQueryResult in case of successful call
  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class PrepareQueryResult extends $pb.GeneratedMessage {
  factory PrepareQueryResult({
    $core.String? queryId,
    $core.Iterable<$core.MapEntry<$core.String, $3.Type>>? parametersTypes,
  }) {
    final result = create();
    if (queryId != null) result.queryId = queryId;
    if (parametersTypes != null)
      result.parametersTypes.addEntries(parametersTypes);
    return result;
  }

  PrepareQueryResult._();

  factory PrepareQueryResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareQueryResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareQueryResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'queryId')
    ..m<$core.String, $3.Type>(2, _omitFieldNames ? '' : 'parametersTypes',
        entryClassName: 'PrepareQueryResult.ParametersTypesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $3.Type.create,
        valueDefaultOrMaker: $3.Type.getDefault,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareQueryResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareQueryResult copyWith(void Function(PrepareQueryResult) updates) =>
      super.copyWith((message) => updates(message as PrepareQueryResult))
          as PrepareQueryResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareQueryResult create() => PrepareQueryResult._();
  @$core.override
  PrepareQueryResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareQueryResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareQueryResult>(create);
  static PrepareQueryResult? _defaultInstance;

  /// Query id, used to perform ExecuteDataQuery
  @$pb.TagNumber(1)
  $core.String get queryId => $_getSZ(0);
  @$pb.TagNumber(1)
  set queryId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQueryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueryId() => $_clearField(1);

  /// Parameters type, used to fill in parameter values
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $3.Type> get parametersTypes => $_getMap(1);
}

/// Keep session alive
class KeepAliveRequest extends $pb.GeneratedMessage {
  factory KeepAliveRequest({
    $core.String? sessionId,
    $0.OperationParams? operationParams,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (operationParams != null) result.operationParams = operationParams;
    return result;
  }

  KeepAliveRequest._();

  factory KeepAliveRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory KeepAliveRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KeepAliveRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOM<$0.OperationParams>(2, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeepAliveRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeepAliveRequest copyWith(void Function(KeepAliveRequest) updates) =>
      super.copyWith((message) => updates(message as KeepAliveRequest))
          as KeepAliveRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeepAliveRequest create() => KeepAliveRequest._();
  @$core.override
  KeepAliveRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static KeepAliveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KeepAliveRequest>(create);
  static KeepAliveRequest? _defaultInstance;

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.OperationParams get operationParams => $_getN(1);
  @$pb.TagNumber(2)
  set operationParams($0.OperationParams value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOperationParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperationParams() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.OperationParams ensureOperationParams() => $_ensure(1);
}

class KeepAliveResponse extends $pb.GeneratedMessage {
  factory KeepAliveResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  KeepAliveResponse._();

  factory KeepAliveResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory KeepAliveResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KeepAliveResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeepAliveResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeepAliveResponse copyWith(void Function(KeepAliveResponse) updates) =>
      super.copyWith((message) => updates(message as KeepAliveResponse))
          as KeepAliveResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeepAliveResponse create() => KeepAliveResponse._();
  @$core.override
  KeepAliveResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static KeepAliveResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KeepAliveResponse>(create);
  static KeepAliveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class KeepAliveResult extends $pb.GeneratedMessage {
  factory KeepAliveResult({
    KeepAliveResult_SessionStatus? sessionStatus,
  }) {
    final result = create();
    if (sessionStatus != null) result.sessionStatus = sessionStatus;
    return result;
  }

  KeepAliveResult._();

  factory KeepAliveResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory KeepAliveResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KeepAliveResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aE<KeepAliveResult_SessionStatus>(
        1, _omitFieldNames ? '' : 'sessionStatus',
        enumValues: KeepAliveResult_SessionStatus.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeepAliveResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeepAliveResult copyWith(void Function(KeepAliveResult) updates) =>
      super.copyWith((message) => updates(message as KeepAliveResult))
          as KeepAliveResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeepAliveResult create() => KeepAliveResult._();
  @$core.override
  KeepAliveResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static KeepAliveResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KeepAliveResult>(create);
  static KeepAliveResult? _defaultInstance;

  @$pb.TagNumber(1)
  KeepAliveResult_SessionStatus get sessionStatus => $_getN(0);
  @$pb.TagNumber(1)
  set sessionStatus(KeepAliveResult_SessionStatus value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionStatus() => $_clearField(1);
}

/// Begin transaction on given session with given settings
class BeginTransactionRequest extends $pb.GeneratedMessage {
  factory BeginTransactionRequest({
    $core.String? sessionId,
    TransactionSettings? txSettings,
    $0.OperationParams? operationParams,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (txSettings != null) result.txSettings = txSettings;
    if (operationParams != null) result.operationParams = operationParams;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOM<TransactionSettings>(2, _omitFieldNames ? '' : 'txSettings',
        subBuilder: TransactionSettings.create)
    ..aOM<$0.OperationParams>(3, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
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

  /// Session identifier
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

  @$pb.TagNumber(3)
  $0.OperationParams get operationParams => $_getN(2);
  @$pb.TagNumber(3)
  set operationParams($0.OperationParams value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOperationParams() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperationParams() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.OperationParams ensureOperationParams() => $_ensure(2);
}

class BeginTransactionResponse extends $pb.GeneratedMessage {
  factory BeginTransactionResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
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

  /// Holds BeginTransactionResult in case of successful call
  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class BeginTransactionResult extends $pb.GeneratedMessage {
  factory BeginTransactionResult({
    TransactionMeta? txMeta,
  }) {
    final result = create();
    if (txMeta != null) result.txMeta = txMeta;
    return result;
  }

  BeginTransactionResult._();

  factory BeginTransactionResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BeginTransactionResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BeginTransactionResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<TransactionMeta>(1, _omitFieldNames ? '' : 'txMeta',
        subBuilder: TransactionMeta.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BeginTransactionResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BeginTransactionResult copyWith(
          void Function(BeginTransactionResult) updates) =>
      super.copyWith((message) => updates(message as BeginTransactionResult))
          as BeginTransactionResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BeginTransactionResult create() => BeginTransactionResult._();
  @$core.override
  BeginTransactionResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BeginTransactionResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BeginTransactionResult>(create);
  static BeginTransactionResult? _defaultInstance;

  @$pb.TagNumber(1)
  TransactionMeta get txMeta => $_getN(0);
  @$pb.TagNumber(1)
  set txMeta(TransactionMeta value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTxMeta() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxMeta() => $_clearField(1);
  @$pb.TagNumber(1)
  TransactionMeta ensureTxMeta() => $_ensure(0);
}

/// Commit transaction with given session and tx id
class CommitTransactionRequest extends $pb.GeneratedMessage {
  factory CommitTransactionRequest({
    $core.String? sessionId,
    $core.String? txId,
    $0.OperationParams? operationParams,
    QueryStatsCollection_Mode? collectStats,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (txId != null) result.txId = txId;
    if (operationParams != null) result.operationParams = operationParams;
    if (collectStats != null) result.collectStats = collectStats;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'txId')
    ..aOM<$0.OperationParams>(3, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..aE<QueryStatsCollection_Mode>(4, _omitFieldNames ? '' : 'collectStats',
        enumValues: QueryStatsCollection_Mode.values)
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

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// Transaction identifier
  @$pb.TagNumber(2)
  $core.String get txId => $_getSZ(1);
  @$pb.TagNumber(2)
  set txId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTxId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxId() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.OperationParams get operationParams => $_getN(2);
  @$pb.TagNumber(3)
  set operationParams($0.OperationParams value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOperationParams() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperationParams() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.OperationParams ensureOperationParams() => $_ensure(2);

  @$pb.TagNumber(4)
  QueryStatsCollection_Mode get collectStats => $_getN(3);
  @$pb.TagNumber(4)
  set collectStats(QueryStatsCollection_Mode value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCollectStats() => $_has(3);
  @$pb.TagNumber(4)
  void clearCollectStats() => $_clearField(4);
}

class CommitTransactionResponse extends $pb.GeneratedMessage {
  factory CommitTransactionResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
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
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class CommitTransactionResult extends $pb.GeneratedMessage {
  factory CommitTransactionResult({
    $7.QueryStats? queryStats,
  }) {
    final result = create();
    if (queryStats != null) result.queryStats = queryStats;
    return result;
  }

  CommitTransactionResult._();

  factory CommitTransactionResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommitTransactionResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommitTransactionResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$7.QueryStats>(1, _omitFieldNames ? '' : 'queryStats',
        subBuilder: $7.QueryStats.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitTransactionResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommitTransactionResult copyWith(
          void Function(CommitTransactionResult) updates) =>
      super.copyWith((message) => updates(message as CommitTransactionResult))
          as CommitTransactionResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommitTransactionResult create() => CommitTransactionResult._();
  @$core.override
  CommitTransactionResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CommitTransactionResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommitTransactionResult>(create);
  static CommitTransactionResult? _defaultInstance;

  @$pb.TagNumber(1)
  $7.QueryStats get queryStats => $_getN(0);
  @$pb.TagNumber(1)
  set queryStats($7.QueryStats value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasQueryStats() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueryStats() => $_clearField(1);
  @$pb.TagNumber(1)
  $7.QueryStats ensureQueryStats() => $_ensure(0);
}

/// Rollback transaction with given session and tx id
class RollbackTransactionRequest extends $pb.GeneratedMessage {
  factory RollbackTransactionRequest({
    $core.String? sessionId,
    $core.String? txId,
    $0.OperationParams? operationParams,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (txId != null) result.txId = txId;
    if (operationParams != null) result.operationParams = operationParams;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'txId')
    ..aOM<$0.OperationParams>(3, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
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

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// Transaction identifier
  @$pb.TagNumber(2)
  $core.String get txId => $_getSZ(1);
  @$pb.TagNumber(2)
  set txId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTxId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxId() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.OperationParams get operationParams => $_getN(2);
  @$pb.TagNumber(3)
  set operationParams($0.OperationParams value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOperationParams() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperationParams() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.OperationParams ensureOperationParams() => $_ensure(2);
}

class RollbackTransactionResponse extends $pb.GeneratedMessage {
  factory RollbackTransactionResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
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
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class StoragePolicyDescription extends $pb.GeneratedMessage {
  factory StoragePolicyDescription({
    $core.String? name,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? labels,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (labels != null) result.labels.addEntries(labels);
    return result;
  }

  StoragePolicyDescription._();

  factory StoragePolicyDescription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StoragePolicyDescription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StoragePolicyDescription',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'labels',
        entryClassName: 'StoragePolicyDescription.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StoragePolicyDescription clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StoragePolicyDescription copyWith(
          void Function(StoragePolicyDescription) updates) =>
      super.copyWith((message) => updates(message as StoragePolicyDescription))
          as StoragePolicyDescription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoragePolicyDescription create() => StoragePolicyDescription._();
  @$core.override
  StoragePolicyDescription createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StoragePolicyDescription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StoragePolicyDescription>(create);
  static StoragePolicyDescription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get labels => $_getMap(1);
}

class CompactionPolicyDescription extends $pb.GeneratedMessage {
  factory CompactionPolicyDescription({
    $core.String? name,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? labels,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (labels != null) result.labels.addEntries(labels);
    return result;
  }

  CompactionPolicyDescription._();

  factory CompactionPolicyDescription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CompactionPolicyDescription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CompactionPolicyDescription',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'labels',
        entryClassName: 'CompactionPolicyDescription.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompactionPolicyDescription clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompactionPolicyDescription copyWith(
          void Function(CompactionPolicyDescription) updates) =>
      super.copyWith(
              (message) => updates(message as CompactionPolicyDescription))
          as CompactionPolicyDescription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompactionPolicyDescription create() =>
      CompactionPolicyDescription._();
  @$core.override
  CompactionPolicyDescription createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CompactionPolicyDescription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CompactionPolicyDescription>(create);
  static CompactionPolicyDescription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get labels => $_getMap(1);
}

class PartitioningPolicyDescription extends $pb.GeneratedMessage {
  factory PartitioningPolicyDescription({
    $core.String? name,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? labels,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (labels != null) result.labels.addEntries(labels);
    return result;
  }

  PartitioningPolicyDescription._();

  factory PartitioningPolicyDescription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PartitioningPolicyDescription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PartitioningPolicyDescription',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'labels',
        entryClassName: 'PartitioningPolicyDescription.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitioningPolicyDescription clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PartitioningPolicyDescription copyWith(
          void Function(PartitioningPolicyDescription) updates) =>
      super.copyWith(
              (message) => updates(message as PartitioningPolicyDescription))
          as PartitioningPolicyDescription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartitioningPolicyDescription create() =>
      PartitioningPolicyDescription._();
  @$core.override
  PartitioningPolicyDescription createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PartitioningPolicyDescription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PartitioningPolicyDescription>(create);
  static PartitioningPolicyDescription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get labels => $_getMap(1);
}

class ExecutionPolicyDescription extends $pb.GeneratedMessage {
  factory ExecutionPolicyDescription({
    $core.String? name,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? labels,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (labels != null) result.labels.addEntries(labels);
    return result;
  }

  ExecutionPolicyDescription._();

  factory ExecutionPolicyDescription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecutionPolicyDescription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecutionPolicyDescription',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'labels',
        entryClassName: 'ExecutionPolicyDescription.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecutionPolicyDescription clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecutionPolicyDescription copyWith(
          void Function(ExecutionPolicyDescription) updates) =>
      super.copyWith(
              (message) => updates(message as ExecutionPolicyDescription))
          as ExecutionPolicyDescription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecutionPolicyDescription create() => ExecutionPolicyDescription._();
  @$core.override
  ExecutionPolicyDescription createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecutionPolicyDescription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecutionPolicyDescription>(create);
  static ExecutionPolicyDescription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get labels => $_getMap(1);
}

class ReplicationPolicyDescription extends $pb.GeneratedMessage {
  factory ReplicationPolicyDescription({
    $core.String? name,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? labels,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (labels != null) result.labels.addEntries(labels);
    return result;
  }

  ReplicationPolicyDescription._();

  factory ReplicationPolicyDescription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReplicationPolicyDescription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReplicationPolicyDescription',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'labels',
        entryClassName: 'ReplicationPolicyDescription.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplicationPolicyDescription clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplicationPolicyDescription copyWith(
          void Function(ReplicationPolicyDescription) updates) =>
      super.copyWith(
              (message) => updates(message as ReplicationPolicyDescription))
          as ReplicationPolicyDescription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplicationPolicyDescription create() =>
      ReplicationPolicyDescription._();
  @$core.override
  ReplicationPolicyDescription createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReplicationPolicyDescription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReplicationPolicyDescription>(create);
  static ReplicationPolicyDescription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get labels => $_getMap(1);
}

class CachingPolicyDescription extends $pb.GeneratedMessage {
  factory CachingPolicyDescription({
    $core.String? name,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? labels,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (labels != null) result.labels.addEntries(labels);
    return result;
  }

  CachingPolicyDescription._();

  factory CachingPolicyDescription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CachingPolicyDescription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CachingPolicyDescription',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'labels',
        entryClassName: 'CachingPolicyDescription.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CachingPolicyDescription clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CachingPolicyDescription copyWith(
          void Function(CachingPolicyDescription) updates) =>
      super.copyWith((message) => updates(message as CachingPolicyDescription))
          as CachingPolicyDescription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CachingPolicyDescription create() => CachingPolicyDescription._();
  @$core.override
  CachingPolicyDescription createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CachingPolicyDescription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CachingPolicyDescription>(create);
  static CachingPolicyDescription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get labels => $_getMap(1);
}

class TableProfileDescription extends $pb.GeneratedMessage {
  factory TableProfileDescription({
    $core.String? name,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? labels,
    $core.String? defaultStoragePolicy,
    $core.Iterable<$core.String>? allowedStoragePolicies,
    $core.String? defaultCompactionPolicy,
    $core.Iterable<$core.String>? allowedCompactionPolicies,
    $core.String? defaultPartitioningPolicy,
    $core.Iterable<$core.String>? allowedPartitioningPolicies,
    $core.String? defaultExecutionPolicy,
    $core.Iterable<$core.String>? allowedExecutionPolicies,
    $core.String? defaultReplicationPolicy,
    $core.Iterable<$core.String>? allowedReplicationPolicies,
    $core.String? defaultCachingPolicy,
    $core.Iterable<$core.String>? allowedCachingPolicies,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (labels != null) result.labels.addEntries(labels);
    if (defaultStoragePolicy != null)
      result.defaultStoragePolicy = defaultStoragePolicy;
    if (allowedStoragePolicies != null)
      result.allowedStoragePolicies.addAll(allowedStoragePolicies);
    if (defaultCompactionPolicy != null)
      result.defaultCompactionPolicy = defaultCompactionPolicy;
    if (allowedCompactionPolicies != null)
      result.allowedCompactionPolicies.addAll(allowedCompactionPolicies);
    if (defaultPartitioningPolicy != null)
      result.defaultPartitioningPolicy = defaultPartitioningPolicy;
    if (allowedPartitioningPolicies != null)
      result.allowedPartitioningPolicies.addAll(allowedPartitioningPolicies);
    if (defaultExecutionPolicy != null)
      result.defaultExecutionPolicy = defaultExecutionPolicy;
    if (allowedExecutionPolicies != null)
      result.allowedExecutionPolicies.addAll(allowedExecutionPolicies);
    if (defaultReplicationPolicy != null)
      result.defaultReplicationPolicy = defaultReplicationPolicy;
    if (allowedReplicationPolicies != null)
      result.allowedReplicationPolicies.addAll(allowedReplicationPolicies);
    if (defaultCachingPolicy != null)
      result.defaultCachingPolicy = defaultCachingPolicy;
    if (allowedCachingPolicies != null)
      result.allowedCachingPolicies.addAll(allowedCachingPolicies);
    return result;
  }

  TableProfileDescription._();

  factory TableProfileDescription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TableProfileDescription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TableProfileDescription',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'labels',
        entryClassName: 'TableProfileDescription.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..aOS(3, _omitFieldNames ? '' : 'defaultStoragePolicy')
    ..pPS(4, _omitFieldNames ? '' : 'allowedStoragePolicies')
    ..aOS(5, _omitFieldNames ? '' : 'defaultCompactionPolicy')
    ..pPS(6, _omitFieldNames ? '' : 'allowedCompactionPolicies')
    ..aOS(7, _omitFieldNames ? '' : 'defaultPartitioningPolicy')
    ..pPS(8, _omitFieldNames ? '' : 'allowedPartitioningPolicies')
    ..aOS(9, _omitFieldNames ? '' : 'defaultExecutionPolicy')
    ..pPS(10, _omitFieldNames ? '' : 'allowedExecutionPolicies')
    ..aOS(11, _omitFieldNames ? '' : 'defaultReplicationPolicy')
    ..pPS(12, _omitFieldNames ? '' : 'allowedReplicationPolicies')
    ..aOS(13, _omitFieldNames ? '' : 'defaultCachingPolicy')
    ..pPS(14, _omitFieldNames ? '' : 'allowedCachingPolicies')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TableProfileDescription clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TableProfileDescription copyWith(
          void Function(TableProfileDescription) updates) =>
      super.copyWith((message) => updates(message as TableProfileDescription))
          as TableProfileDescription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TableProfileDescription create() => TableProfileDescription._();
  @$core.override
  TableProfileDescription createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TableProfileDescription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TableProfileDescription>(create);
  static TableProfileDescription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get labels => $_getMap(1);

  @$pb.TagNumber(3)
  $core.String get defaultStoragePolicy => $_getSZ(2);
  @$pb.TagNumber(3)
  set defaultStoragePolicy($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDefaultStoragePolicy() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultStoragePolicy() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get allowedStoragePolicies => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get defaultCompactionPolicy => $_getSZ(4);
  @$pb.TagNumber(5)
  set defaultCompactionPolicy($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDefaultCompactionPolicy() => $_has(4);
  @$pb.TagNumber(5)
  void clearDefaultCompactionPolicy() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get allowedCompactionPolicies => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get defaultPartitioningPolicy => $_getSZ(6);
  @$pb.TagNumber(7)
  set defaultPartitioningPolicy($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDefaultPartitioningPolicy() => $_has(6);
  @$pb.TagNumber(7)
  void clearDefaultPartitioningPolicy() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get allowedPartitioningPolicies => $_getList(7);

  @$pb.TagNumber(9)
  $core.String get defaultExecutionPolicy => $_getSZ(8);
  @$pb.TagNumber(9)
  set defaultExecutionPolicy($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasDefaultExecutionPolicy() => $_has(8);
  @$pb.TagNumber(9)
  void clearDefaultExecutionPolicy() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get allowedExecutionPolicies => $_getList(9);

  @$pb.TagNumber(11)
  $core.String get defaultReplicationPolicy => $_getSZ(10);
  @$pb.TagNumber(11)
  set defaultReplicationPolicy($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasDefaultReplicationPolicy() => $_has(10);
  @$pb.TagNumber(11)
  void clearDefaultReplicationPolicy() => $_clearField(11);

  @$pb.TagNumber(12)
  $pb.PbList<$core.String> get allowedReplicationPolicies => $_getList(11);

  @$pb.TagNumber(13)
  $core.String get defaultCachingPolicy => $_getSZ(12);
  @$pb.TagNumber(13)
  set defaultCachingPolicy($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDefaultCachingPolicy() => $_has(12);
  @$pb.TagNumber(13)
  void clearDefaultCachingPolicy() => $_clearField(13);

  @$pb.TagNumber(14)
  $pb.PbList<$core.String> get allowedCachingPolicies => $_getList(13);
}

class DescribeTableOptionsRequest extends $pb.GeneratedMessage {
  factory DescribeTableOptionsRequest({
    $0.OperationParams? operationParams,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    return result;
  }

  DescribeTableOptionsRequest._();

  factory DescribeTableOptionsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeTableOptionsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeTableOptionsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTableOptionsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTableOptionsRequest copyWith(
          void Function(DescribeTableOptionsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as DescribeTableOptionsRequest))
          as DescribeTableOptionsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeTableOptionsRequest create() =>
      DescribeTableOptionsRequest._();
  @$core.override
  DescribeTableOptionsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeTableOptionsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeTableOptionsRequest>(create);
  static DescribeTableOptionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.OperationParams get operationParams => $_getN(0);
  @$pb.TagNumber(1)
  set operationParams($0.OperationParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.OperationParams ensureOperationParams() => $_ensure(0);
}

class DescribeTableOptionsResponse extends $pb.GeneratedMessage {
  factory DescribeTableOptionsResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  DescribeTableOptionsResponse._();

  factory DescribeTableOptionsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeTableOptionsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeTableOptionsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTableOptionsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTableOptionsResponse copyWith(
          void Function(DescribeTableOptionsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as DescribeTableOptionsResponse))
          as DescribeTableOptionsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeTableOptionsResponse create() =>
      DescribeTableOptionsResponse._();
  @$core.override
  DescribeTableOptionsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeTableOptionsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeTableOptionsResponse>(create);
  static DescribeTableOptionsResponse? _defaultInstance;

  /// operation.result holds ListTableParametersResult
  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class DescribeTableOptionsResult extends $pb.GeneratedMessage {
  factory DescribeTableOptionsResult({
    $core.Iterable<TableProfileDescription>? tableProfilePresets,
    $core.Iterable<StoragePolicyDescription>? storagePolicyPresets,
    $core.Iterable<CompactionPolicyDescription>? compactionPolicyPresets,
    $core.Iterable<PartitioningPolicyDescription>? partitioningPolicyPresets,
    $core.Iterable<ExecutionPolicyDescription>? executionPolicyPresets,
    $core.Iterable<ReplicationPolicyDescription>? replicationPolicyPresets,
    $core.Iterable<CachingPolicyDescription>? cachingPolicyPresets,
  }) {
    final result = create();
    if (tableProfilePresets != null)
      result.tableProfilePresets.addAll(tableProfilePresets);
    if (storagePolicyPresets != null)
      result.storagePolicyPresets.addAll(storagePolicyPresets);
    if (compactionPolicyPresets != null)
      result.compactionPolicyPresets.addAll(compactionPolicyPresets);
    if (partitioningPolicyPresets != null)
      result.partitioningPolicyPresets.addAll(partitioningPolicyPresets);
    if (executionPolicyPresets != null)
      result.executionPolicyPresets.addAll(executionPolicyPresets);
    if (replicationPolicyPresets != null)
      result.replicationPolicyPresets.addAll(replicationPolicyPresets);
    if (cachingPolicyPresets != null)
      result.cachingPolicyPresets.addAll(cachingPolicyPresets);
    return result;
  }

  DescribeTableOptionsResult._();

  factory DescribeTableOptionsResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribeTableOptionsResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeTableOptionsResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..pPM<TableProfileDescription>(
        1, _omitFieldNames ? '' : 'tableProfilePresets',
        subBuilder: TableProfileDescription.create)
    ..pPM<StoragePolicyDescription>(
        2, _omitFieldNames ? '' : 'storagePolicyPresets',
        subBuilder: StoragePolicyDescription.create)
    ..pPM<CompactionPolicyDescription>(
        3, _omitFieldNames ? '' : 'compactionPolicyPresets',
        subBuilder: CompactionPolicyDescription.create)
    ..pPM<PartitioningPolicyDescription>(
        4, _omitFieldNames ? '' : 'partitioningPolicyPresets',
        subBuilder: PartitioningPolicyDescription.create)
    ..pPM<ExecutionPolicyDescription>(
        5, _omitFieldNames ? '' : 'executionPolicyPresets',
        subBuilder: ExecutionPolicyDescription.create)
    ..pPM<ReplicationPolicyDescription>(
        6, _omitFieldNames ? '' : 'replicationPolicyPresets',
        subBuilder: ReplicationPolicyDescription.create)
    ..pPM<CachingPolicyDescription>(
        7, _omitFieldNames ? '' : 'cachingPolicyPresets',
        subBuilder: CachingPolicyDescription.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTableOptionsResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribeTableOptionsResult copyWith(
          void Function(DescribeTableOptionsResult) updates) =>
      super.copyWith(
              (message) => updates(message as DescribeTableOptionsResult))
          as DescribeTableOptionsResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeTableOptionsResult create() => DescribeTableOptionsResult._();
  @$core.override
  DescribeTableOptionsResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribeTableOptionsResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeTableOptionsResult>(create);
  static DescribeTableOptionsResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<TableProfileDescription> get tableProfilePresets => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<StoragePolicyDescription> get storagePolicyPresets => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<CompactionPolicyDescription> get compactionPolicyPresets =>
      $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<PartitioningPolicyDescription> get partitioningPolicyPresets =>
      $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<ExecutionPolicyDescription> get executionPolicyPresets =>
      $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<ReplicationPolicyDescription> get replicationPolicyPresets =>
      $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<CachingPolicyDescription> get cachingPolicyPresets => $_getList(6);
}

enum KeyRange_FromBound { greater, greaterOrEqual, notSet }

enum KeyRange_ToBound { less, lessOrEqual, notSet }

class KeyRange extends $pb.GeneratedMessage {
  factory KeyRange({
    $3.TypedValue? greater,
    $3.TypedValue? greaterOrEqual,
    $3.TypedValue? less,
    $3.TypedValue? lessOrEqual,
  }) {
    final result = create();
    if (greater != null) result.greater = greater;
    if (greaterOrEqual != null) result.greaterOrEqual = greaterOrEqual;
    if (less != null) result.less = less;
    if (lessOrEqual != null) result.lessOrEqual = lessOrEqual;
    return result;
  }

  KeyRange._();

  factory KeyRange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory KeyRange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, KeyRange_FromBound>
      _KeyRange_FromBoundByTag = {
    1: KeyRange_FromBound.greater,
    2: KeyRange_FromBound.greaterOrEqual,
    0: KeyRange_FromBound.notSet
  };
  static const $core.Map<$core.int, KeyRange_ToBound> _KeyRange_ToBoundByTag = {
    3: KeyRange_ToBound.less,
    4: KeyRange_ToBound.lessOrEqual,
    0: KeyRange_ToBound.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KeyRange',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..oo(1, [3, 4])
    ..aOM<$3.TypedValue>(1, _omitFieldNames ? '' : 'greater',
        subBuilder: $3.TypedValue.create)
    ..aOM<$3.TypedValue>(2, _omitFieldNames ? '' : 'greaterOrEqual',
        subBuilder: $3.TypedValue.create)
    ..aOM<$3.TypedValue>(3, _omitFieldNames ? '' : 'less',
        subBuilder: $3.TypedValue.create)
    ..aOM<$3.TypedValue>(4, _omitFieldNames ? '' : 'lessOrEqual',
        subBuilder: $3.TypedValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeyRange clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeyRange copyWith(void Function(KeyRange) updates) =>
      super.copyWith((message) => updates(message as KeyRange)) as KeyRange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyRange create() => KeyRange._();
  @$core.override
  KeyRange createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static KeyRange getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyRange>(create);
  static KeyRange? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  KeyRange_FromBound whichFromBound() =>
      _KeyRange_FromBoundByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearFromBound() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  KeyRange_ToBound whichToBound() => _KeyRange_ToBoundByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearToBound() => $_clearField($_whichOneof(1));

  /// Specify if we don't want to include given key
  @$pb.TagNumber(1)
  $3.TypedValue get greater => $_getN(0);
  @$pb.TagNumber(1)
  set greater($3.TypedValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGreater() => $_has(0);
  @$pb.TagNumber(1)
  void clearGreater() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.TypedValue ensureGreater() => $_ensure(0);

  /// Specify if we want to include given key
  @$pb.TagNumber(2)
  $3.TypedValue get greaterOrEqual => $_getN(1);
  @$pb.TagNumber(2)
  set greaterOrEqual($3.TypedValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGreaterOrEqual() => $_has(1);
  @$pb.TagNumber(2)
  void clearGreaterOrEqual() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.TypedValue ensureGreaterOrEqual() => $_ensure(1);

  /// Specify if we don't want to include given key
  @$pb.TagNumber(3)
  $3.TypedValue get less => $_getN(2);
  @$pb.TagNumber(3)
  set less($3.TypedValue value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLess() => $_has(2);
  @$pb.TagNumber(3)
  void clearLess() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.TypedValue ensureLess() => $_ensure(2);

  /// Specify if we want to include given key
  @$pb.TagNumber(4)
  $3.TypedValue get lessOrEqual => $_getN(3);
  @$pb.TagNumber(4)
  set lessOrEqual($3.TypedValue value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLessOrEqual() => $_has(3);
  @$pb.TagNumber(4)
  void clearLessOrEqual() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.TypedValue ensureLessOrEqual() => $_ensure(3);
}

/// Request to read table (without SQL)
class ReadTableRequest extends $pb.GeneratedMessage {
  factory ReadTableRequest({
    $core.String? sessionId,
    $core.String? path,
    KeyRange? keyRange,
    $core.Iterable<$core.String>? columns,
    $core.bool? ordered,
    $fixnum.Int64? rowLimit,
    $9.FeatureFlag_Status? useSnapshot,
    $fixnum.Int64? batchLimitBytes,
    $fixnum.Int64? batchLimitRows,
    $9.FeatureFlag_Status? returnNotNullDataAsOptional,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (path != null) result.path = path;
    if (keyRange != null) result.keyRange = keyRange;
    if (columns != null) result.columns.addAll(columns);
    if (ordered != null) result.ordered = ordered;
    if (rowLimit != null) result.rowLimit = rowLimit;
    if (useSnapshot != null) result.useSnapshot = useSnapshot;
    if (batchLimitBytes != null) result.batchLimitBytes = batchLimitBytes;
    if (batchLimitRows != null) result.batchLimitRows = batchLimitRows;
    if (returnNotNullDataAsOptional != null)
      result.returnNotNullDataAsOptional = returnNotNullDataAsOptional;
    return result;
  }

  ReadTableRequest._();

  factory ReadTableRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadTableRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadTableRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aOM<KeyRange>(3, _omitFieldNames ? '' : 'keyRange',
        subBuilder: KeyRange.create)
    ..pPS(4, _omitFieldNames ? '' : 'columns')
    ..aOB(5, _omitFieldNames ? '' : 'ordered')
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'rowLimit', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aE<$9.FeatureFlag_Status>(7, _omitFieldNames ? '' : 'useSnapshot',
        enumValues: $9.FeatureFlag_Status.values)
    ..a<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'batchLimitBytes', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        9, _omitFieldNames ? '' : 'batchLimitRows', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aE<$9.FeatureFlag_Status>(
        10, _omitFieldNames ? '' : 'returnNotNullDataAsOptional',
        enumValues: $9.FeatureFlag_Status.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadTableRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadTableRequest copyWith(void Function(ReadTableRequest) updates) =>
      super.copyWith((message) => updates(message as ReadTableRequest))
          as ReadTableRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadTableRequest create() => ReadTableRequest._();
  @$core.override
  ReadTableRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadTableRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadTableRequest>(create);
  static ReadTableRequest? _defaultInstance;

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// Path to table to read
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  /// Primary key range to read
  @$pb.TagNumber(3)
  KeyRange get keyRange => $_getN(2);
  @$pb.TagNumber(3)
  set keyRange(KeyRange value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasKeyRange() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyRange() => $_clearField(3);
  @$pb.TagNumber(3)
  KeyRange ensureKeyRange() => $_ensure(2);

  /// Output columns
  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get columns => $_getList(3);

  /// Require ordered reading
  @$pb.TagNumber(5)
  $core.bool get ordered => $_getBF(4);
  @$pb.TagNumber(5)
  set ordered($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOrdered() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrdered() => $_clearField(5);

  /// Limits row count to read
  @$pb.TagNumber(6)
  $fixnum.Int64 get rowLimit => $_getI64(5);
  @$pb.TagNumber(6)
  set rowLimit($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRowLimit() => $_has(5);
  @$pb.TagNumber(6)
  void clearRowLimit() => $_clearField(6);

  /// Use a server-side snapshot
  @$pb.TagNumber(7)
  $9.FeatureFlag_Status get useSnapshot => $_getN(6);
  @$pb.TagNumber(7)
  set useSnapshot($9.FeatureFlag_Status value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasUseSnapshot() => $_has(6);
  @$pb.TagNumber(7)
  void clearUseSnapshot() => $_clearField(7);

  /// Server-side best-effort policy. Can be used as a hint to limit the size
  /// of batches sent from a server. If both are specified, the server chooses
  /// the smaller one. The limits are not strict, so batch size can be slightly
  /// greater than any of the limits
  @$pb.TagNumber(8)
  $fixnum.Int64 get batchLimitBytes => $_getI64(7);
  @$pb.TagNumber(8)
  set batchLimitBytes($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBatchLimitBytes() => $_has(7);
  @$pb.TagNumber(8)
  void clearBatchLimitBytes() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get batchLimitRows => $_getI64(8);
  @$pb.TagNumber(9)
  set batchLimitRows($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBatchLimitRows() => $_has(8);
  @$pb.TagNumber(9)
  void clearBatchLimitRows() => $_clearField(9);

  @$pb.TagNumber(10)
  $9.FeatureFlag_Status get returnNotNullDataAsOptional => $_getN(9);
  @$pb.TagNumber(10)
  set returnNotNullDataAsOptional($9.FeatureFlag_Status value) =>
      $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasReturnNotNullDataAsOptional() => $_has(9);
  @$pb.TagNumber(10)
  void clearReturnNotNullDataAsOptional() => $_clearField(10);
}

/// ReadTable doesn't use Operation, returns result directly
class ReadTableResponse extends $pb.GeneratedMessage {
  factory ReadTableResponse({
    $11.StatusIds_StatusCode? status,
    $core.Iterable<$8.IssueMessage>? issues,
    ReadTableResult? result,
    $9.VirtualTimestamp? snapshot,
  }) {
    final result$ = create();
    if (status != null) result$.status = status;
    if (issues != null) result$.issues.addAll(issues);
    if (result != null) result$.result = result;
    if (snapshot != null) result$.snapshot = snapshot;
    return result$;
  }

  ReadTableResponse._();

  factory ReadTableResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadTableResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadTableResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aE<$11.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $11.StatusIds_StatusCode.values)
    ..pPM<$8.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $8.IssueMessage.create)
    ..aOM<ReadTableResult>(3, _omitFieldNames ? '' : 'result',
        subBuilder: ReadTableResult.create)
    ..aOM<$9.VirtualTimestamp>(4, _omitFieldNames ? '' : 'snapshot',
        subBuilder: $9.VirtualTimestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadTableResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadTableResponse copyWith(void Function(ReadTableResponse) updates) =>
      super.copyWith((message) => updates(message as ReadTableResponse))
          as ReadTableResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadTableResponse create() => ReadTableResponse._();
  @$core.override
  ReadTableResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadTableResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadTableResponse>(create);
  static ReadTableResponse? _defaultInstance;

  /// Status of request (same as other statuses)
  @$pb.TagNumber(1)
  $11.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($11.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  /// Issues
  @$pb.TagNumber(2)
  $pb.PbList<$8.IssueMessage> get issues => $_getList(1);

  /// Read table result
  @$pb.TagNumber(3)
  ReadTableResult get result => $_getN(2);
  @$pb.TagNumber(3)
  set result(ReadTableResult value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearResult() => $_clearField(3);
  @$pb.TagNumber(3)
  ReadTableResult ensureResult() => $_ensure(2);

  /// Optional snapshot that corresponds to the returned data
  @$pb.TagNumber(4)
  $9.VirtualTimestamp get snapshot => $_getN(3);
  @$pb.TagNumber(4)
  set snapshot($9.VirtualTimestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSnapshot() => $_has(3);
  @$pb.TagNumber(4)
  void clearSnapshot() => $_clearField(4);
  @$pb.TagNumber(4)
  $9.VirtualTimestamp ensureSnapshot() => $_ensure(3);
}

/// Result of read table request
class ReadTableResult extends $pb.GeneratedMessage {
  factory ReadTableResult({
    $3.ResultSet? resultSet,
  }) {
    final result = create();
    if (resultSet != null) result.resultSet = resultSet;
    return result;
  }

  ReadTableResult._();

  factory ReadTableResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadTableResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadTableResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$3.ResultSet>(1, _omitFieldNames ? '' : 'resultSet',
        subBuilder: $3.ResultSet.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadTableResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadTableResult copyWith(void Function(ReadTableResult) updates) =>
      super.copyWith((message) => updates(message as ReadTableResult))
          as ReadTableResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadTableResult create() => ReadTableResult._();
  @$core.override
  ReadTableResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadTableResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadTableResult>(create);
  static ReadTableResult? _defaultInstance;

  /// Result set (same as result of sql request)
  @$pb.TagNumber(1)
  $3.ResultSet get resultSet => $_getN(0);
  @$pb.TagNumber(1)
  set resultSet($3.ResultSet value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResultSet() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultSet() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.ResultSet ensureResultSet() => $_ensure(0);
}

class ReadRowsRequest extends $pb.GeneratedMessage {
  factory ReadRowsRequest({
    $core.String? sessionId,
    $core.String? path,
    $3.TypedValue? keys,
    $core.Iterable<$core.String>? columns,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (path != null) result.path = path;
    if (keys != null) result.keys = keys;
    if (columns != null) result.columns.addAll(columns);
    return result;
  }

  ReadRowsRequest._();

  factory ReadRowsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadRowsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadRowsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aOM<$3.TypedValue>(3, _omitFieldNames ? '' : 'keys',
        subBuilder: $3.TypedValue.create)
    ..pPS(4, _omitFieldNames ? '' : 'columns')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadRowsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadRowsRequest copyWith(void Function(ReadRowsRequest) updates) =>
      super.copyWith((message) => updates(message as ReadRowsRequest))
          as ReadRowsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadRowsRequest create() => ReadRowsRequest._();
  @$core.override
  ReadRowsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadRowsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadRowsRequest>(create);
  static ReadRowsRequest? _defaultInstance;

  /// Session identifier
  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  /// Path to table to read
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  /// Keys to read. Must be a list of structs where each stuct is a key
  /// for one requested row and should contain all key columns
  @$pb.TagNumber(3)
  $3.TypedValue get keys => $_getN(2);
  @$pb.TagNumber(3)
  set keys($3.TypedValue value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasKeys() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeys() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.TypedValue ensureKeys() => $_ensure(2);

  /// Output columns. If empty all columns will be requested
  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get columns => $_getList(3);
}

class ReadRowsResponse extends $pb.GeneratedMessage {
  factory ReadRowsResponse({
    $11.StatusIds_StatusCode? status,
    $core.Iterable<$8.IssueMessage>? issues,
    $3.ResultSet? resultSet,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    if (resultSet != null) result.resultSet = resultSet;
    return result;
  }

  ReadRowsResponse._();

  factory ReadRowsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadRowsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadRowsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aE<$11.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $11.StatusIds_StatusCode.values)
    ..pPM<$8.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $8.IssueMessage.create)
    ..aOM<$3.ResultSet>(3, _omitFieldNames ? '' : 'resultSet',
        subBuilder: $3.ResultSet.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadRowsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadRowsResponse copyWith(void Function(ReadRowsResponse) updates) =>
      super.copyWith((message) => updates(message as ReadRowsResponse))
          as ReadRowsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadRowsResponse create() => ReadRowsResponse._();
  @$core.override
  ReadRowsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadRowsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadRowsResponse>(create);
  static ReadRowsResponse? _defaultInstance;

  /// Status of request (same as other statuses)
  @$pb.TagNumber(1)
  $11.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($11.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  /// Issues
  @$pb.TagNumber(2)
  $pb.PbList<$8.IssueMessage> get issues => $_getList(1);

  /// Result set (same as result of sql request)
  @$pb.TagNumber(3)
  $3.ResultSet get resultSet => $_getN(2);
  @$pb.TagNumber(3)
  set resultSet($3.ResultSet value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasResultSet() => $_has(2);
  @$pb.TagNumber(3)
  void clearResultSet() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.ResultSet ensureResultSet() => $_ensure(2);
}

enum BulkUpsertRequest_DataFormat { arrowBatchSettings, csvSettings, notSet }

class BulkUpsertRequest extends $pb.GeneratedMessage {
  factory BulkUpsertRequest({
    $core.String? table,
    $3.TypedValue? rows,
    $0.OperationParams? operationParams,
    $10.ArrowBatchSettings? arrowBatchSettings,
    $10.CsvSettings? csvSettings,
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (table != null) result.table = table;
    if (rows != null) result.rows = rows;
    if (operationParams != null) result.operationParams = operationParams;
    if (arrowBatchSettings != null)
      result.arrowBatchSettings = arrowBatchSettings;
    if (csvSettings != null) result.csvSettings = csvSettings;
    if (data != null) result.data = data;
    return result;
  }

  BulkUpsertRequest._();

  factory BulkUpsertRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BulkUpsertRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BulkUpsertRequest_DataFormat>
      _BulkUpsertRequest_DataFormatByTag = {
    7: BulkUpsertRequest_DataFormat.arrowBatchSettings,
    8: BulkUpsertRequest_DataFormat.csvSettings,
    0: BulkUpsertRequest_DataFormat.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BulkUpsertRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..oo(0, [7, 8])
    ..aOS(1, _omitFieldNames ? '' : 'table')
    ..aOM<$3.TypedValue>(2, _omitFieldNames ? '' : 'rows',
        subBuilder: $3.TypedValue.create)
    ..aOM<$0.OperationParams>(3, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..aOM<$10.ArrowBatchSettings>(
        7, _omitFieldNames ? '' : 'arrowBatchSettings',
        subBuilder: $10.ArrowBatchSettings.create)
    ..aOM<$10.CsvSettings>(8, _omitFieldNames ? '' : 'csvSettings',
        subBuilder: $10.CsvSettings.create)
    ..a<$core.List<$core.int>>(
        1000, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BulkUpsertRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BulkUpsertRequest copyWith(void Function(BulkUpsertRequest) updates) =>
      super.copyWith((message) => updates(message as BulkUpsertRequest))
          as BulkUpsertRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BulkUpsertRequest create() => BulkUpsertRequest._();
  @$core.override
  BulkUpsertRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BulkUpsertRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BulkUpsertRequest>(create);
  static BulkUpsertRequest? _defaultInstance;

  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  BulkUpsertRequest_DataFormat whichDataFormat() =>
      _BulkUpsertRequest_DataFormatByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  void clearDataFormat() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get table => $_getSZ(0);
  @$pb.TagNumber(1)
  set table($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTable() => $_clearField(1);

  /// "rows" parameter must be a list of structs where each stuct represents one row.
  /// It must contain all key columns but not necessarily all non-key columns.
  /// Similar to UPSERT statement only values of specified columns will be updated.
  @$pb.TagNumber(2)
  $3.TypedValue get rows => $_getN(1);
  @$pb.TagNumber(2)
  set rows($3.TypedValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRows() => $_has(1);
  @$pb.TagNumber(2)
  void clearRows() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.TypedValue ensureRows() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.OperationParams get operationParams => $_getN(2);
  @$pb.TagNumber(3)
  set operationParams($0.OperationParams value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOperationParams() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperationParams() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.OperationParams ensureOperationParams() => $_ensure(2);

  @$pb.TagNumber(7)
  $10.ArrowBatchSettings get arrowBatchSettings => $_getN(3);
  @$pb.TagNumber(7)
  set arrowBatchSettings($10.ArrowBatchSettings value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasArrowBatchSettings() => $_has(3);
  @$pb.TagNumber(7)
  void clearArrowBatchSettings() => $_clearField(7);
  @$pb.TagNumber(7)
  $10.ArrowBatchSettings ensureArrowBatchSettings() => $_ensure(3);

  @$pb.TagNumber(8)
  $10.CsvSettings get csvSettings => $_getN(4);
  @$pb.TagNumber(8)
  set csvSettings($10.CsvSettings value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCsvSettings() => $_has(4);
  @$pb.TagNumber(8)
  void clearCsvSettings() => $_clearField(8);
  @$pb.TagNumber(8)
  $10.CsvSettings ensureCsvSettings() => $_ensure(4);

  /// It's last in the definition to help with sidecar patterns
  @$pb.TagNumber(1000)
  $core.List<$core.int> get data => $_getN(5);
  @$pb.TagNumber(1000)
  set data($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(1000)
  $core.bool hasData() => $_has(5);
  @$pb.TagNumber(1000)
  void clearData() => $_clearField(1000);
}

class BulkUpsertResponse extends $pb.GeneratedMessage {
  factory BulkUpsertResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  BulkUpsertResponse._();

  factory BulkUpsertResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BulkUpsertResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BulkUpsertResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BulkUpsertResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BulkUpsertResponse copyWith(void Function(BulkUpsertResponse) updates) =>
      super.copyWith((message) => updates(message as BulkUpsertResponse))
          as BulkUpsertResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BulkUpsertResponse create() => BulkUpsertResponse._();
  @$core.override
  BulkUpsertResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BulkUpsertResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BulkUpsertResponse>(create);
  static BulkUpsertResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation($0.Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Operation ensureOperation() => $_ensure(0);
}

class BulkUpsertResult extends $pb.GeneratedMessage {
  factory BulkUpsertResult() => create();

  BulkUpsertResult._();

  factory BulkUpsertResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BulkUpsertResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BulkUpsertResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BulkUpsertResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BulkUpsertResult copyWith(void Function(BulkUpsertResult) updates) =>
      super.copyWith((message) => updates(message as BulkUpsertResult))
          as BulkUpsertResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BulkUpsertResult create() => BulkUpsertResult._();
  @$core.override
  BulkUpsertResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BulkUpsertResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BulkUpsertResult>(create);
  static BulkUpsertResult? _defaultInstance;
}

class ExecuteScanQueryRequest extends $pb.GeneratedMessage {
  factory ExecuteScanQueryRequest({
    Query? query,
    $core.Iterable<$core.MapEntry<$core.String, $3.TypedValue>>? parameters,
    ExecuteScanQueryRequest_Mode? mode,
    QueryStatsCollection_Mode? collectStats,
    $core.bool? collectFullDiagnostics,
  }) {
    final result = create();
    if (query != null) result.query = query;
    if (parameters != null) result.parameters.addEntries(parameters);
    if (mode != null) result.mode = mode;
    if (collectStats != null) result.collectStats = collectStats;
    if (collectFullDiagnostics != null)
      result.collectFullDiagnostics = collectFullDiagnostics;
    return result;
  }

  ExecuteScanQueryRequest._();

  factory ExecuteScanQueryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteScanQueryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteScanQueryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<Query>(3, _omitFieldNames ? '' : 'query', subBuilder: Query.create)
    ..m<$core.String, $3.TypedValue>(4, _omitFieldNames ? '' : 'parameters',
        entryClassName: 'ExecuteScanQueryRequest.ParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $3.TypedValue.create,
        valueDefaultOrMaker: $3.TypedValue.getDefault,
        packageName: const $pb.PackageName('Ydb.Table'))
    ..aE<ExecuteScanQueryRequest_Mode>(6, _omitFieldNames ? '' : 'mode',
        enumValues: ExecuteScanQueryRequest_Mode.values)
    ..aE<QueryStatsCollection_Mode>(8, _omitFieldNames ? '' : 'collectStats',
        enumValues: QueryStatsCollection_Mode.values)
    ..aOB(9, _omitFieldNames ? '' : 'collectFullDiagnostics')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteScanQueryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteScanQueryRequest copyWith(
          void Function(ExecuteScanQueryRequest) updates) =>
      super.copyWith((message) => updates(message as ExecuteScanQueryRequest))
          as ExecuteScanQueryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteScanQueryRequest create() => ExecuteScanQueryRequest._();
  @$core.override
  ExecuteScanQueryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteScanQueryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteScanQueryRequest>(create);
  static ExecuteScanQueryRequest? _defaultInstance;

  @$pb.TagNumber(3)
  Query get query => $_getN(0);
  @$pb.TagNumber(3)
  set query(Query value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(3)
  void clearQuery() => $_clearField(3);
  @$pb.TagNumber(3)
  Query ensureQuery() => $_ensure(0);

  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $3.TypedValue> get parameters => $_getMap(1);

  @$pb.TagNumber(6)
  ExecuteScanQueryRequest_Mode get mode => $_getN(2);
  @$pb.TagNumber(6)
  set mode(ExecuteScanQueryRequest_Mode value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMode() => $_has(2);
  @$pb.TagNumber(6)
  void clearMode() => $_clearField(6);

  @$pb.TagNumber(8)
  QueryStatsCollection_Mode get collectStats => $_getN(3);
  @$pb.TagNumber(8)
  set collectStats(QueryStatsCollection_Mode value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCollectStats() => $_has(3);
  @$pb.TagNumber(8)
  void clearCollectStats() => $_clearField(8);

  /// works only in mode: MODE_EXPLAIN,
  /// collects additional diagnostics about query compilation, including query plan and scheme
  @$pb.TagNumber(9)
  $core.bool get collectFullDiagnostics => $_getBF(4);
  @$pb.TagNumber(9)
  set collectFullDiagnostics($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(9)
  $core.bool hasCollectFullDiagnostics() => $_has(4);
  @$pb.TagNumber(9)
  void clearCollectFullDiagnostics() => $_clearField(9);
}

class ExecuteScanQueryPartialResponse extends $pb.GeneratedMessage {
  factory ExecuteScanQueryPartialResponse({
    $11.StatusIds_StatusCode? status,
    $core.Iterable<$8.IssueMessage>? issues,
    ExecuteScanQueryPartialResult? result,
  }) {
    final result$ = create();
    if (status != null) result$.status = status;
    if (issues != null) result$.issues.addAll(issues);
    if (result != null) result$.result = result;
    return result$;
  }

  ExecuteScanQueryPartialResponse._();

  factory ExecuteScanQueryPartialResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteScanQueryPartialResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteScanQueryPartialResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aE<$11.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $11.StatusIds_StatusCode.values)
    ..pPM<$8.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $8.IssueMessage.create)
    ..aOM<ExecuteScanQueryPartialResult>(3, _omitFieldNames ? '' : 'result',
        subBuilder: ExecuteScanQueryPartialResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteScanQueryPartialResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteScanQueryPartialResponse copyWith(
          void Function(ExecuteScanQueryPartialResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ExecuteScanQueryPartialResponse))
          as ExecuteScanQueryPartialResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteScanQueryPartialResponse create() =>
      ExecuteScanQueryPartialResponse._();
  @$core.override
  ExecuteScanQueryPartialResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteScanQueryPartialResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteScanQueryPartialResponse>(
          create);
  static ExecuteScanQueryPartialResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $11.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($11.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$8.IssueMessage> get issues => $_getList(1);

  @$pb.TagNumber(3)
  ExecuteScanQueryPartialResult get result => $_getN(2);
  @$pb.TagNumber(3)
  set result(ExecuteScanQueryPartialResult value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearResult() => $_clearField(3);
  @$pb.TagNumber(3)
  ExecuteScanQueryPartialResult ensureResult() => $_ensure(2);
}

class ExecuteScanQueryPartialResult extends $pb.GeneratedMessage {
  factory ExecuteScanQueryPartialResult({
    $3.ResultSet? resultSet,
    $7.QueryStats? queryStats,
    $core.String? queryFullDiagnostics,
  }) {
    final result = create();
    if (resultSet != null) result.resultSet = resultSet;
    if (queryStats != null) result.queryStats = queryStats;
    if (queryFullDiagnostics != null)
      result.queryFullDiagnostics = queryFullDiagnostics;
    return result;
  }

  ExecuteScanQueryPartialResult._();

  factory ExecuteScanQueryPartialResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExecuteScanQueryPartialResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteScanQueryPartialResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Table'),
      createEmptyInstance: create)
    ..aOM<$3.ResultSet>(1, _omitFieldNames ? '' : 'resultSet',
        subBuilder: $3.ResultSet.create)
    ..aOM<$7.QueryStats>(6, _omitFieldNames ? '' : 'queryStats',
        subBuilder: $7.QueryStats.create)
    ..aOS(7, _omitFieldNames ? '' : 'queryFullDiagnostics')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteScanQueryPartialResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteScanQueryPartialResult copyWith(
          void Function(ExecuteScanQueryPartialResult) updates) =>
      super.copyWith(
              (message) => updates(message as ExecuteScanQueryPartialResult))
          as ExecuteScanQueryPartialResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteScanQueryPartialResult create() =>
      ExecuteScanQueryPartialResult._();
  @$core.override
  ExecuteScanQueryPartialResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExecuteScanQueryPartialResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteScanQueryPartialResult>(create);
  static ExecuteScanQueryPartialResult? _defaultInstance;

  @$pb.TagNumber(1)
  $3.ResultSet get resultSet => $_getN(0);
  @$pb.TagNumber(1)
  set resultSet($3.ResultSet value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResultSet() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultSet() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.ResultSet ensureResultSet() => $_ensure(0);

  @$pb.TagNumber(6)
  $7.QueryStats get queryStats => $_getN(1);
  @$pb.TagNumber(6)
  set queryStats($7.QueryStats value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasQueryStats() => $_has(1);
  @$pb.TagNumber(6)
  void clearQueryStats() => $_clearField(6);
  @$pb.TagNumber(6)
  $7.QueryStats ensureQueryStats() => $_ensure(1);

  /// works only in mode: MODE_EXPLAIN,
  /// collects additional diagnostics about query compilation, including query plan and scheme
  @$pb.TagNumber(7)
  $core.String get queryFullDiagnostics => $_getSZ(2);
  @$pb.TagNumber(7)
  set queryFullDiagnostics($core.String value) => $_setString(2, value);
  @$pb.TagNumber(7)
  $core.bool hasQueryFullDiagnostics() => $_has(2);
  @$pb.TagNumber(7)
  void clearQueryFullDiagnostics() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

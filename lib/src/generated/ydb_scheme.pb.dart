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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ydb_common.pb.dart' as $1;
import 'ydb_operation.pb.dart' as $0;
import 'ydb_scheme.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ydb_scheme.pbenum.dart';

/// Create directory.
/// All intermediate directories must be created
class MakeDirectoryRequest extends $pb.GeneratedMessage {
  factory MakeDirectoryRequest({
    $0.OperationParams? operationParams,
    $core.String? path,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (path != null) result.path = path;
    return result;
  }

  MakeDirectoryRequest._();

  factory MakeDirectoryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MakeDirectoryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MakeDirectoryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOM<$0.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MakeDirectoryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MakeDirectoryRequest copyWith(void Function(MakeDirectoryRequest) updates) =>
      super.copyWith((message) => updates(message as MakeDirectoryRequest))
          as MakeDirectoryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MakeDirectoryRequest create() => MakeDirectoryRequest._();
  @$core.override
  MakeDirectoryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MakeDirectoryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MakeDirectoryRequest>(create);
  static MakeDirectoryRequest? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);
}

class MakeDirectoryResponse extends $pb.GeneratedMessage {
  factory MakeDirectoryResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  MakeDirectoryResponse._();

  factory MakeDirectoryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MakeDirectoryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MakeDirectoryResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MakeDirectoryResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MakeDirectoryResponse copyWith(
          void Function(MakeDirectoryResponse) updates) =>
      super.copyWith((message) => updates(message as MakeDirectoryResponse))
          as MakeDirectoryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MakeDirectoryResponse create() => MakeDirectoryResponse._();
  @$core.override
  MakeDirectoryResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MakeDirectoryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MakeDirectoryResponse>(create);
  static MakeDirectoryResponse? _defaultInstance;

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

/// Remove directory
class RemoveDirectoryRequest extends $pb.GeneratedMessage {
  factory RemoveDirectoryRequest({
    $0.OperationParams? operationParams,
    $core.String? path,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (path != null) result.path = path;
    return result;
  }

  RemoveDirectoryRequest._();

  factory RemoveDirectoryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RemoveDirectoryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoveDirectoryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOM<$0.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveDirectoryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveDirectoryRequest copyWith(
          void Function(RemoveDirectoryRequest) updates) =>
      super.copyWith((message) => updates(message as RemoveDirectoryRequest))
          as RemoveDirectoryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveDirectoryRequest create() => RemoveDirectoryRequest._();
  @$core.override
  RemoveDirectoryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RemoveDirectoryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveDirectoryRequest>(create);
  static RemoveDirectoryRequest? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);
}

class RemoveDirectoryResponse extends $pb.GeneratedMessage {
  factory RemoveDirectoryResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  RemoveDirectoryResponse._();

  factory RemoveDirectoryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RemoveDirectoryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoveDirectoryResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveDirectoryResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveDirectoryResponse copyWith(
          void Function(RemoveDirectoryResponse) updates) =>
      super.copyWith((message) => updates(message as RemoveDirectoryResponse))
          as RemoveDirectoryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveDirectoryResponse create() => RemoveDirectoryResponse._();
  @$core.override
  RemoveDirectoryResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RemoveDirectoryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveDirectoryResponse>(create);
  static RemoveDirectoryResponse? _defaultInstance;

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

/// List directory
class ListDirectoryRequest extends $pb.GeneratedMessage {
  factory ListDirectoryRequest({
    $0.OperationParams? operationParams,
    $core.String? path,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (path != null) result.path = path;
    return result;
  }

  ListDirectoryRequest._();

  factory ListDirectoryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListDirectoryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListDirectoryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOM<$0.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDirectoryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDirectoryRequest copyWith(void Function(ListDirectoryRequest) updates) =>
      super.copyWith((message) => updates(message as ListDirectoryRequest))
          as ListDirectoryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDirectoryRequest create() => ListDirectoryRequest._();
  @$core.override
  ListDirectoryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListDirectoryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListDirectoryRequest>(create);
  static ListDirectoryRequest? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);
}

class ListDirectoryResponse extends $pb.GeneratedMessage {
  factory ListDirectoryResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  ListDirectoryResponse._();

  factory ListDirectoryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListDirectoryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListDirectoryResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDirectoryResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDirectoryResponse copyWith(
          void Function(ListDirectoryResponse) updates) =>
      super.copyWith((message) => updates(message as ListDirectoryResponse))
          as ListDirectoryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDirectoryResponse create() => ListDirectoryResponse._();
  @$core.override
  ListDirectoryResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListDirectoryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListDirectoryResponse>(create);
  static ListDirectoryResponse? _defaultInstance;

  /// Holds ListDirectoryResult in case of successful call
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

class Permissions extends $pb.GeneratedMessage {
  factory Permissions({
    $core.String? subject,
    $core.Iterable<$core.String>? permissionNames,
  }) {
    final result = create();
    if (subject != null) result.subject = subject;
    if (permissionNames != null) result.permissionNames.addAll(permissionNames);
    return result;
  }

  Permissions._();

  factory Permissions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Permissions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Permissions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subject')
    ..pPS(2, _omitFieldNames ? '' : 'permissionNames')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Permissions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Permissions copyWith(void Function(Permissions) updates) =>
      super.copyWith((message) => updates(message as Permissions))
          as Permissions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Permissions create() => Permissions._();
  @$core.override
  Permissions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Permissions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Permissions>(create);
  static Permissions? _defaultInstance;

  /// SID (Security ID) of user or group
  @$pb.TagNumber(1)
  $core.String get subject => $_getSZ(0);
  @$pb.TagNumber(1)
  set subject($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSubject() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubject() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get permissionNames => $_getList(1);
}

class Entry extends $pb.GeneratedMessage {
  factory Entry({
    $core.String? name,
    $core.String? owner,
    Entry_Type? type,
    $core.Iterable<Permissions>? effectivePermissions,
    $core.Iterable<Permissions>? permissions,
    $fixnum.Int64? sizeBytes,
    $1.VirtualTimestamp? createdAt,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (owner != null) result.owner = owner;
    if (type != null) result.type = type;
    if (effectivePermissions != null)
      result.effectivePermissions.addAll(effectivePermissions);
    if (permissions != null) result.permissions.addAll(permissions);
    if (sizeBytes != null) result.sizeBytes = sizeBytes;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  Entry._();

  factory Entry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Entry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Entry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'owner')
    ..aE<Entry_Type>(5, _omitFieldNames ? '' : 'type',
        enumValues: Entry_Type.values)
    ..pPM<Permissions>(6, _omitFieldNames ? '' : 'effectivePermissions',
        subBuilder: Permissions.create)
    ..pPM<Permissions>(7, _omitFieldNames ? '' : 'permissions',
        subBuilder: Permissions.create)
    ..a<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'sizeBytes', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$1.VirtualTimestamp>(9, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $1.VirtualTimestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Entry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Entry copyWith(void Function(Entry) updates) =>
      super.copyWith((message) => updates(message as Entry)) as Entry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Entry create() => Entry._();
  @$core.override
  Entry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Entry getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Entry>(create);
  static Entry? _defaultInstance;

  /// Name of scheme entry (dir2 of /dir1/dir2)
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// SID (Security ID) of user or group
  @$pb.TagNumber(2)
  $core.String get owner => $_getSZ(1);
  @$pb.TagNumber(2)
  set owner($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwner() => $_clearField(2);

  @$pb.TagNumber(5)
  Entry_Type get type => $_getN(2);
  @$pb.TagNumber(5)
  set type(Entry_Type value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(5)
  void clearType() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<Permissions> get effectivePermissions => $_getList(3);

  @$pb.TagNumber(7)
  $pb.PbList<Permissions> get permissions => $_getList(4);

  /// Size of entry in bytes. Currently filled for:
  /// - TABLE;
  /// - DATABASE.
  /// Empty (zero) in other cases.
  @$pb.TagNumber(8)
  $fixnum.Int64 get sizeBytes => $_getI64(5);
  @$pb.TagNumber(8)
  set sizeBytes($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(8)
  $core.bool hasSizeBytes() => $_has(5);
  @$pb.TagNumber(8)
  void clearSizeBytes() => $_clearField(8);

  /// Virtual timestamp when the object was created
  @$pb.TagNumber(9)
  $1.VirtualTimestamp get createdAt => $_getN(6);
  @$pb.TagNumber(9)
  set createdAt($1.VirtualTimestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(9)
  void clearCreatedAt() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.VirtualTimestamp ensureCreatedAt() => $_ensure(6);
}

class ListDirectoryResult extends $pb.GeneratedMessage {
  factory ListDirectoryResult({
    Entry? self,
    $core.Iterable<Entry>? children,
  }) {
    final result = create();
    if (self != null) result.self = self;
    if (children != null) result.children.addAll(children);
    return result;
  }

  ListDirectoryResult._();

  factory ListDirectoryResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListDirectoryResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListDirectoryResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOM<Entry>(1, _omitFieldNames ? '' : 'self', subBuilder: Entry.create)
    ..pPM<Entry>(2, _omitFieldNames ? '' : 'children', subBuilder: Entry.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDirectoryResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDirectoryResult copyWith(void Function(ListDirectoryResult) updates) =>
      super.copyWith((message) => updates(message as ListDirectoryResult))
          as ListDirectoryResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDirectoryResult create() => ListDirectoryResult._();
  @$core.override
  ListDirectoryResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListDirectoryResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListDirectoryResult>(create);
  static ListDirectoryResult? _defaultInstance;

  @$pb.TagNumber(1)
  Entry get self => $_getN(0);
  @$pb.TagNumber(1)
  set self(Entry value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSelf() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelf() => $_clearField(1);
  @$pb.TagNumber(1)
  Entry ensureSelf() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<Entry> get children => $_getList(1);
}

/// Returns information about object with given path
class DescribePathRequest extends $pb.GeneratedMessage {
  factory DescribePathRequest({
    $0.OperationParams? operationParams,
    $core.String? path,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (path != null) result.path = path;
    return result;
  }

  DescribePathRequest._();

  factory DescribePathRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribePathRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribePathRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOM<$0.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribePathRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribePathRequest copyWith(void Function(DescribePathRequest) updates) =>
      super.copyWith((message) => updates(message as DescribePathRequest))
          as DescribePathRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribePathRequest create() => DescribePathRequest._();
  @$core.override
  DescribePathRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribePathRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribePathRequest>(create);
  static DescribePathRequest? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);
}

class DescribePathResponse extends $pb.GeneratedMessage {
  factory DescribePathResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  DescribePathResponse._();

  factory DescribePathResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribePathResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribePathResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribePathResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribePathResponse copyWith(void Function(DescribePathResponse) updates) =>
      super.copyWith((message) => updates(message as DescribePathResponse))
          as DescribePathResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribePathResponse create() => DescribePathResponse._();
  @$core.override
  DescribePathResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribePathResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribePathResponse>(create);
  static DescribePathResponse? _defaultInstance;

  /// Holds DescribePathResult in case of DescribePathResult
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

class DescribePathResult extends $pb.GeneratedMessage {
  factory DescribePathResult({
    Entry? self,
  }) {
    final result = create();
    if (self != null) result.self = self;
    return result;
  }

  DescribePathResult._();

  factory DescribePathResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DescribePathResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribePathResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOM<Entry>(1, _omitFieldNames ? '' : 'self', subBuilder: Entry.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribePathResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DescribePathResult copyWith(void Function(DescribePathResult) updates) =>
      super.copyWith((message) => updates(message as DescribePathResult))
          as DescribePathResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribePathResult create() => DescribePathResult._();
  @$core.override
  DescribePathResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DescribePathResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribePathResult>(create);
  static DescribePathResult? _defaultInstance;

  @$pb.TagNumber(1)
  Entry get self => $_getN(0);
  @$pb.TagNumber(1)
  set self(Entry value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSelf() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelf() => $_clearField(1);
  @$pb.TagNumber(1)
  Entry ensureSelf() => $_ensure(0);
}

enum PermissionsAction_Action { grant, revoke, set, changeOwner, notSet }

class PermissionsAction extends $pb.GeneratedMessage {
  factory PermissionsAction({
    Permissions? grant,
    Permissions? revoke,
    Permissions? set,
    $core.String? changeOwner,
  }) {
    final result = create();
    if (grant != null) result.grant = grant;
    if (revoke != null) result.revoke = revoke;
    if (set != null) result.set = set;
    if (changeOwner != null) result.changeOwner = changeOwner;
    return result;
  }

  PermissionsAction._();

  factory PermissionsAction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PermissionsAction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PermissionsAction_Action>
      _PermissionsAction_ActionByTag = {
    1: PermissionsAction_Action.grant,
    2: PermissionsAction_Action.revoke,
    3: PermissionsAction_Action.set,
    4: PermissionsAction_Action.changeOwner,
    0: PermissionsAction_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PermissionsAction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<Permissions>(1, _omitFieldNames ? '' : 'grant',
        subBuilder: Permissions.create)
    ..aOM<Permissions>(2, _omitFieldNames ? '' : 'revoke',
        subBuilder: Permissions.create)
    ..aOM<Permissions>(3, _omitFieldNames ? '' : 'set',
        subBuilder: Permissions.create)
    ..aOS(4, _omitFieldNames ? '' : 'changeOwner')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PermissionsAction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PermissionsAction copyWith(void Function(PermissionsAction) updates) =>
      super.copyWith((message) => updates(message as PermissionsAction))
          as PermissionsAction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PermissionsAction create() => PermissionsAction._();
  @$core.override
  PermissionsAction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PermissionsAction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PermissionsAction>(create);
  static PermissionsAction? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  PermissionsAction_Action whichAction() =>
      _PermissionsAction_ActionByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearAction() => $_clearField($_whichOneof(0));

  /// Grant permissions
  @$pb.TagNumber(1)
  Permissions get grant => $_getN(0);
  @$pb.TagNumber(1)
  set grant(Permissions value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGrant() => $_has(0);
  @$pb.TagNumber(1)
  void clearGrant() => $_clearField(1);
  @$pb.TagNumber(1)
  Permissions ensureGrant() => $_ensure(0);

  /// Revoke permissions
  @$pb.TagNumber(2)
  Permissions get revoke => $_getN(1);
  @$pb.TagNumber(2)
  set revoke(Permissions value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRevoke() => $_has(1);
  @$pb.TagNumber(2)
  void clearRevoke() => $_clearField(2);
  @$pb.TagNumber(2)
  Permissions ensureRevoke() => $_ensure(1);

  /// Rewrite permissions for given subject (last set win in case of multiple set for one subject)
  @$pb.TagNumber(3)
  Permissions get set => $_getN(2);
  @$pb.TagNumber(3)
  set set(Permissions value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSet() => $_has(2);
  @$pb.TagNumber(3)
  void clearSet() => $_clearField(3);
  @$pb.TagNumber(3)
  Permissions ensureSet() => $_ensure(2);

  /// New owner for object
  @$pb.TagNumber(4)
  $core.String get changeOwner => $_getSZ(3);
  @$pb.TagNumber(4)
  set changeOwner($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasChangeOwner() => $_has(3);
  @$pb.TagNumber(4)
  void clearChangeOwner() => $_clearField(4);
}

enum ModifyPermissionsRequest_Inheritance { interruptInheritance, notSet }

/// Modify permissions of given object
class ModifyPermissionsRequest extends $pb.GeneratedMessage {
  factory ModifyPermissionsRequest({
    $0.OperationParams? operationParams,
    $core.String? path,
    $core.Iterable<PermissionsAction>? actions,
    $core.bool? clearPermissions,
    $core.bool? interruptInheritance,
  }) {
    final result = create();
    if (operationParams != null) result.operationParams = operationParams;
    if (path != null) result.path = path;
    if (actions != null) result.actions.addAll(actions);
    if (clearPermissions != null) result.clearPermissions = clearPermissions;
    if (interruptInheritance != null)
      result.interruptInheritance = interruptInheritance;
    return result;
  }

  ModifyPermissionsRequest._();

  factory ModifyPermissionsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModifyPermissionsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ModifyPermissionsRequest_Inheritance>
      _ModifyPermissionsRequest_InheritanceByTag = {
    5: ModifyPermissionsRequest_Inheritance.interruptInheritance,
    0: ModifyPermissionsRequest_Inheritance.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModifyPermissionsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..oo(0, [5])
    ..aOM<$0.OperationParams>(1, _omitFieldNames ? '' : 'operationParams',
        subBuilder: $0.OperationParams.create)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..pPM<PermissionsAction>(3, _omitFieldNames ? '' : 'actions',
        subBuilder: PermissionsAction.create)
    ..aOB(4, _omitFieldNames ? '' : 'clearPermissions')
    ..aOB(5, _omitFieldNames ? '' : 'interruptInheritance')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModifyPermissionsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModifyPermissionsRequest copyWith(
          void Function(ModifyPermissionsRequest) updates) =>
      super.copyWith((message) => updates(message as ModifyPermissionsRequest))
          as ModifyPermissionsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModifyPermissionsRequest create() => ModifyPermissionsRequest._();
  @$core.override
  ModifyPermissionsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ModifyPermissionsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModifyPermissionsRequest>(create);
  static ModifyPermissionsRequest? _defaultInstance;

  @$pb.TagNumber(5)
  ModifyPermissionsRequest_Inheritance whichInheritance() =>
      _ModifyPermissionsRequest_InheritanceByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(5)
  void clearInheritance() => $_clearField($_whichOneof(0));

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

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<PermissionsAction> get actions => $_getList(2);

  /// Clear all permissions on the object for all subjects
  @$pb.TagNumber(4)
  $core.bool get clearPermissions => $_getBF(3);
  @$pb.TagNumber(4)
  set clearPermissions($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasClearPermissions() => $_has(3);
  @$pb.TagNumber(4)
  void clearClearPermissions() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get interruptInheritance => $_getBF(4);
  @$pb.TagNumber(5)
  set interruptInheritance($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasInterruptInheritance() => $_has(4);
  @$pb.TagNumber(5)
  void clearInterruptInheritance() => $_clearField(5);
}

class ModifyPermissionsResponse extends $pb.GeneratedMessage {
  factory ModifyPermissionsResponse({
    $0.Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  ModifyPermissionsResponse._();

  factory ModifyPermissionsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModifyPermissionsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModifyPermissionsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Scheme'),
      createEmptyInstance: create)
    ..aOM<$0.Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: $0.Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModifyPermissionsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModifyPermissionsResponse copyWith(
          void Function(ModifyPermissionsResponse) updates) =>
      super.copyWith((message) => updates(message as ModifyPermissionsResponse))
          as ModifyPermissionsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModifyPermissionsResponse create() => ModifyPermissionsResponse._();
  @$core.override
  ModifyPermissionsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ModifyPermissionsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModifyPermissionsResponse>(create);
  static ModifyPermissionsResponse? _defaultInstance;

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

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

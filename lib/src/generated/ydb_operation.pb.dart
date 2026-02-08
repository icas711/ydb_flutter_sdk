// This is a generated file - do not edit.
//
// Generated from ydb_operation.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/any.pb.dart' as $2;
import 'package:protobuf/well_known_types/google/protobuf/duration.pb.dart'
    as $0;

import 'ydb_common.pb.dart' as $3;
import 'ydb_issue_message.pb.dart' as $1;
import 'ydb_operation.pbenum.dart';
import 'ydb_status_codes.pbenum.dart' as $4;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ydb_operation.pbenum.dart';

class OperationParams extends $pb.GeneratedMessage {
  factory OperationParams({
    OperationParams_OperationMode? operationMode,
    $0.Duration? operationTimeout,
    $0.Duration? cancelAfter,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? labels,
    $3.FeatureFlag_Status? reportCostInfo,
  }) {
    final result = create();
    if (operationMode != null) result.operationMode = operationMode;
    if (operationTimeout != null) result.operationTimeout = operationTimeout;
    if (cancelAfter != null) result.cancelAfter = cancelAfter;
    if (labels != null) result.labels.addEntries(labels);
    if (reportCostInfo != null) result.reportCostInfo = reportCostInfo;
    return result;
  }

  OperationParams._();

  factory OperationParams.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OperationParams.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OperationParams',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Operations'),
      createEmptyInstance: create)
    ..aE<OperationParams_OperationMode>(
        1, _omitFieldNames ? '' : 'operationMode',
        enumValues: OperationParams_OperationMode.values)
    ..aOM<$0.Duration>(2, _omitFieldNames ? '' : 'operationTimeout',
        subBuilder: $0.Duration.create)
    ..aOM<$0.Duration>(3, _omitFieldNames ? '' : 'cancelAfter',
        subBuilder: $0.Duration.create)
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'labels',
        entryClassName: 'OperationParams.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('Ydb.Operations'))
    ..aE<$3.FeatureFlag_Status>(5, _omitFieldNames ? '' : 'reportCostInfo',
        enumValues: $3.FeatureFlag_Status.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OperationParams clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OperationParams copyWith(void Function(OperationParams) updates) =>
      super.copyWith((message) => updates(message as OperationParams))
          as OperationParams;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OperationParams create() => OperationParams._();
  @$core.override
  OperationParams createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OperationParams getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OperationParams>(create);
  static OperationParams? _defaultInstance;

  @$pb.TagNumber(1)
  OperationParams_OperationMode get operationMode => $_getN(0);
  @$pb.TagNumber(1)
  set operationMode(OperationParams_OperationMode value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperationMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationMode() => $_clearField(1);

  /// Indicates that client is no longer interested in the result of operation after the specified duration
  /// starting from the time operation arrives at the server.
  /// Server will try to stop the execution of operation and if no result is currently available the operation
  /// will receive TIMEOUT status code, which will be sent back to client if it was waiting for the operation result.
  /// Timeout of operation does not tell anything about its result, it might be completed successfully
  /// or cancelled on server.
  @$pb.TagNumber(2)
  $0.Duration get operationTimeout => $_getN(1);
  @$pb.TagNumber(2)
  set operationTimeout($0.Duration value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOperationTimeout() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperationTimeout() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Duration ensureOperationTimeout() => $_ensure(1);

  /// Server will try to cancel the operation after the specified duration starting from the time
  /// the operation arrives at server.
  /// In case of successful cancellation operation will receive CANCELLED status code, which will be
  /// sent back to client if it was waiting for the operation result.
  /// In case when cancellation isn't possible, no action will be performed.
  @$pb.TagNumber(3)
  $0.Duration get cancelAfter => $_getN(2);
  @$pb.TagNumber(3)
  set cancelAfter($0.Duration value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCancelAfter() => $_has(2);
  @$pb.TagNumber(3)
  void clearCancelAfter() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Duration ensureCancelAfter() => $_ensure(2);

  /// User-defined labels of operation.
  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.String> get labels => $_getMap(3);

  /// If enabled, server will report cost information, if supported by the operation.
  /// This flag is mostly useful for SYNC operations, to get the cost information in the response.
  @$pb.TagNumber(5)
  $3.FeatureFlag_Status get reportCostInfo => $_getN(4);
  @$pb.TagNumber(5)
  set reportCostInfo($3.FeatureFlag_Status value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasReportCostInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearReportCostInfo() => $_clearField(5);
}

class GetOperationRequest extends $pb.GeneratedMessage {
  factory GetOperationRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  GetOperationRequest._();

  factory GetOperationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetOperationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetOperationRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Operations'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetOperationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetOperationRequest copyWith(void Function(GetOperationRequest) updates) =>
      super.copyWith((message) => updates(message as GetOperationRequest))
          as GetOperationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOperationRequest create() => GetOperationRequest._();
  @$core.override
  GetOperationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetOperationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetOperationRequest>(create);
  static GetOperationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class GetOperationResponse extends $pb.GeneratedMessage {
  factory GetOperationResponse({
    Operation? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  GetOperationResponse._();

  factory GetOperationResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetOperationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetOperationResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Operations'),
      createEmptyInstance: create)
    ..aOM<Operation>(1, _omitFieldNames ? '' : 'operation',
        subBuilder: Operation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetOperationResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetOperationResponse copyWith(void Function(GetOperationResponse) updates) =>
      super.copyWith((message) => updates(message as GetOperationResponse))
          as GetOperationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOperationResponse create() => GetOperationResponse._();
  @$core.override
  GetOperationResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetOperationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetOperationResponse>(create);
  static GetOperationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Operation get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation(Operation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
  @$pb.TagNumber(1)
  Operation ensureOperation() => $_ensure(0);
}

class CancelOperationRequest extends $pb.GeneratedMessage {
  factory CancelOperationRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  CancelOperationRequest._();

  factory CancelOperationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CancelOperationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CancelOperationRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Operations'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CancelOperationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CancelOperationRequest copyWith(
          void Function(CancelOperationRequest) updates) =>
      super.copyWith((message) => updates(message as CancelOperationRequest))
          as CancelOperationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelOperationRequest create() => CancelOperationRequest._();
  @$core.override
  CancelOperationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CancelOperationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CancelOperationRequest>(create);
  static CancelOperationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class CancelOperationResponse extends $pb.GeneratedMessage {
  factory CancelOperationResponse({
    $4.StatusIds_StatusCode? status,
    $core.Iterable<$1.IssueMessage>? issues,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    return result;
  }

  CancelOperationResponse._();

  factory CancelOperationResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CancelOperationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CancelOperationResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Operations'),
      createEmptyInstance: create)
    ..aE<$4.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $4.StatusIds_StatusCode.values)
    ..pPM<$1.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $1.IssueMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CancelOperationResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CancelOperationResponse copyWith(
          void Function(CancelOperationResponse) updates) =>
      super.copyWith((message) => updates(message as CancelOperationResponse))
          as CancelOperationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelOperationResponse create() => CancelOperationResponse._();
  @$core.override
  CancelOperationResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CancelOperationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CancelOperationResponse>(create);
  static CancelOperationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $4.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($4.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$1.IssueMessage> get issues => $_getList(1);
}

class ForgetOperationRequest extends $pb.GeneratedMessage {
  factory ForgetOperationRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  ForgetOperationRequest._();

  factory ForgetOperationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForgetOperationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForgetOperationRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Operations'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForgetOperationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForgetOperationRequest copyWith(
          void Function(ForgetOperationRequest) updates) =>
      super.copyWith((message) => updates(message as ForgetOperationRequest))
          as ForgetOperationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForgetOperationRequest create() => ForgetOperationRequest._();
  @$core.override
  ForgetOperationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForgetOperationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForgetOperationRequest>(create);
  static ForgetOperationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class ForgetOperationResponse extends $pb.GeneratedMessage {
  factory ForgetOperationResponse({
    $4.StatusIds_StatusCode? status,
    $core.Iterable<$1.IssueMessage>? issues,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    return result;
  }

  ForgetOperationResponse._();

  factory ForgetOperationResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForgetOperationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForgetOperationResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Operations'),
      createEmptyInstance: create)
    ..aE<$4.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $4.StatusIds_StatusCode.values)
    ..pPM<$1.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $1.IssueMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForgetOperationResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForgetOperationResponse copyWith(
          void Function(ForgetOperationResponse) updates) =>
      super.copyWith((message) => updates(message as ForgetOperationResponse))
          as ForgetOperationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForgetOperationResponse create() => ForgetOperationResponse._();
  @$core.override
  ForgetOperationResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForgetOperationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForgetOperationResponse>(create);
  static ForgetOperationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $4.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($4.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$1.IssueMessage> get issues => $_getList(1);
}

class ListOperationsRequest extends $pb.GeneratedMessage {
  factory ListOperationsRequest({
    $core.String? kind,
    $fixnum.Int64? pageSize,
    $core.String? pageToken,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (pageSize != null) result.pageSize = pageSize;
    if (pageToken != null) result.pageToken = pageToken;
    return result;
  }

  ListOperationsRequest._();

  factory ListOperationsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListOperationsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListOperationsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Operations'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kind')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'pageToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListOperationsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListOperationsRequest copyWith(
          void Function(ListOperationsRequest) updates) =>
      super.copyWith((message) => updates(message as ListOperationsRequest))
          as ListOperationsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListOperationsRequest create() => ListOperationsRequest._();
  @$core.override
  ListOperationsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListOperationsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListOperationsRequest>(create);
  static ListOperationsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kind => $_getSZ(0);
  @$pb.TagNumber(1)
  set kind($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get pageToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set pageToken($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPageToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageToken() => $_clearField(3);
}

class ListOperationsResponse extends $pb.GeneratedMessage {
  factory ListOperationsResponse({
    $4.StatusIds_StatusCode? status,
    $core.Iterable<$1.IssueMessage>? issues,
    $core.Iterable<Operation>? operations,
    $core.String? nextPageToken,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (issues != null) result.issues.addAll(issues);
    if (operations != null) result.operations.addAll(operations);
    if (nextPageToken != null) result.nextPageToken = nextPageToken;
    return result;
  }

  ListOperationsResponse._();

  factory ListOperationsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListOperationsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListOperationsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Operations'),
      createEmptyInstance: create)
    ..aE<$4.StatusIds_StatusCode>(1, _omitFieldNames ? '' : 'status',
        enumValues: $4.StatusIds_StatusCode.values)
    ..pPM<$1.IssueMessage>(2, _omitFieldNames ? '' : 'issues',
        subBuilder: $1.IssueMessage.create)
    ..pPM<Operation>(3, _omitFieldNames ? '' : 'operations',
        subBuilder: Operation.create)
    ..aOS(4, _omitFieldNames ? '' : 'nextPageToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListOperationsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListOperationsResponse copyWith(
          void Function(ListOperationsResponse) updates) =>
      super.copyWith((message) => updates(message as ListOperationsResponse))
          as ListOperationsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListOperationsResponse create() => ListOperationsResponse._();
  @$core.override
  ListOperationsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListOperationsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListOperationsResponse>(create);
  static ListOperationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $4.StatusIds_StatusCode get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($4.StatusIds_StatusCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$1.IssueMessage> get issues => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<Operation> get operations => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get nextPageToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set nextPageToken($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNextPageToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearNextPageToken() => $_clearField(4);
}

class Operation extends $pb.GeneratedMessage {
  factory Operation({
    $core.String? id,
    $core.bool? ready,
    $4.StatusIds_StatusCode? status,
    $core.Iterable<$1.IssueMessage>? issues,
    $2.Any? result,
    $2.Any? metadata,
    $3.CostInfo? costInfo,
  }) {
    final result$ = create();
    if (id != null) result$.id = id;
    if (ready != null) result$.ready = ready;
    if (status != null) result$.status = status;
    if (issues != null) result$.issues.addAll(issues);
    if (result != null) result$.result = result;
    if (metadata != null) result$.metadata = metadata;
    if (costInfo != null) result$.costInfo = costInfo;
    return result$;
  }

  Operation._();

  factory Operation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Operation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Operation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.Operations'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'ready')
    ..aE<$4.StatusIds_StatusCode>(3, _omitFieldNames ? '' : 'status',
        enumValues: $4.StatusIds_StatusCode.values)
    ..pPM<$1.IssueMessage>(4, _omitFieldNames ? '' : 'issues',
        subBuilder: $1.IssueMessage.create)
    ..aOM<$2.Any>(5, _omitFieldNames ? '' : 'result', subBuilder: $2.Any.create)
    ..aOM<$2.Any>(6, _omitFieldNames ? '' : 'metadata',
        subBuilder: $2.Any.create)
    ..aOM<$3.CostInfo>(7, _omitFieldNames ? '' : 'costInfo',
        subBuilder: $3.CostInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Operation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Operation copyWith(void Function(Operation) updates) =>
      super.copyWith((message) => updates(message as Operation)) as Operation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Operation create() => Operation._();
  @$core.override
  Operation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Operation getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Operation>(create);
  static Operation? _defaultInstance;

  /// Identifier of the operation, empty value means no active operation object is present (it was forgotten or
  /// not created in the first place, as in SYNC operation mode).
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// true - this operation has beed finished (doesn't matter successful or not),
  /// so Status field has status code, and Result field can contains result data.
  /// false - this operation still running. You can repeat request using operation Id.
  @$pb.TagNumber(2)
  $core.bool get ready => $_getBF(1);
  @$pb.TagNumber(2)
  set ready($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReady() => $_has(1);
  @$pb.TagNumber(2)
  void clearReady() => $_clearField(2);

  @$pb.TagNumber(3)
  $4.StatusIds_StatusCode get status => $_getN(2);
  @$pb.TagNumber(3)
  set status($4.StatusIds_StatusCode value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$1.IssueMessage> get issues => $_getList(3);

  /// Result data
  @$pb.TagNumber(5)
  $2.Any get result => $_getN(4);
  @$pb.TagNumber(5)
  set result($2.Any value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasResult() => $_has(4);
  @$pb.TagNumber(5)
  void clearResult() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.Any ensureResult() => $_ensure(4);

  @$pb.TagNumber(6)
  $2.Any get metadata => $_getN(5);
  @$pb.TagNumber(6)
  set metadata($2.Any value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMetadata() => $_has(5);
  @$pb.TagNumber(6)
  void clearMetadata() => $_clearField(6);
  @$pb.TagNumber(6)
  $2.Any ensureMetadata() => $_ensure(5);

  /// Contains information about the cost of the operation.
  /// For completed operations, it shows the final cost of the operation.
  /// For operations in progress, it might indicate the current cost of the operation (if supported).
  @$pb.TagNumber(7)
  $3.CostInfo get costInfo => $_getN(6);
  @$pb.TagNumber(7)
  set costInfo($3.CostInfo value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCostInfo() => $_has(6);
  @$pb.TagNumber(7)
  void clearCostInfo() => $_clearField(7);
  @$pb.TagNumber(7)
  $3.CostInfo ensureCostInfo() => $_ensure(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

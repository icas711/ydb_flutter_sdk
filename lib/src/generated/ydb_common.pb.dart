// This is a generated file - do not edit.
//
// Generated from ydb_common.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ydb_common.pbenum.dart';

class FeatureFlag extends $pb.GeneratedMessage {
  factory FeatureFlag() => create();

  FeatureFlag._();

  factory FeatureFlag.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeatureFlag.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeatureFlag',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeatureFlag clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeatureFlag copyWith(void Function(FeatureFlag) updates) =>
      super.copyWith((message) => updates(message as FeatureFlag))
          as FeatureFlag;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeatureFlag create() => FeatureFlag._();
  @$core.override
  FeatureFlag createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeatureFlag getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeatureFlag>(create);
  static FeatureFlag? _defaultInstance;
}

class CostInfo extends $pb.GeneratedMessage {
  factory CostInfo({
    $core.double? consumedUnits,
  }) {
    final result = create();
    if (consumedUnits != null) result.consumedUnits = consumedUnits;
    return result;
  }

  CostInfo._();

  factory CostInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CostInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CostInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'consumedUnits')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CostInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CostInfo copyWith(void Function(CostInfo) updates) =>
      super.copyWith((message) => updates(message as CostInfo)) as CostInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CostInfo create() => CostInfo._();
  @$core.override
  CostInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CostInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CostInfo>(create);
  static CostInfo? _defaultInstance;

  /// Total amount of request units (RU), consumed by the operation.
  @$pb.TagNumber(1)
  $core.double get consumedUnits => $_getN(0);
  @$pb.TagNumber(1)
  set consumedUnits($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConsumedUnits() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsumedUnits() => $_clearField(1);
}

class QuotaExceeded extends $pb.GeneratedMessage {
  factory QuotaExceeded({
    $core.bool? disk,
  }) {
    final result = create();
    if (disk != null) result.disk = disk;
    return result;
  }

  QuotaExceeded._();

  factory QuotaExceeded.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QuotaExceeded.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QuotaExceeded',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'disk')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QuotaExceeded clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QuotaExceeded copyWith(void Function(QuotaExceeded) updates) =>
      super.copyWith((message) => updates(message as QuotaExceeded))
          as QuotaExceeded;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuotaExceeded create() => QuotaExceeded._();
  @$core.override
  QuotaExceeded createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static QuotaExceeded getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QuotaExceeded>(create);
  static QuotaExceeded? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get disk => $_getBF(0);
  @$pb.TagNumber(1)
  set disk($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDisk() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisk() => $_clearField(1);
}

/// Specifies a point in database time
class VirtualTimestamp extends $pb.GeneratedMessage {
  factory VirtualTimestamp({
    $fixnum.Int64? planStep,
    $fixnum.Int64? txId,
  }) {
    final result = create();
    if (planStep != null) result.planStep = planStep;
    if (txId != null) result.txId = txId;
    return result;
  }

  VirtualTimestamp._();

  factory VirtualTimestamp.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VirtualTimestamp.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VirtualTimestamp',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'planStep', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'txId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VirtualTimestamp clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VirtualTimestamp copyWith(void Function(VirtualTimestamp) updates) =>
      super.copyWith((message) => updates(message as VirtualTimestamp))
          as VirtualTimestamp;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VirtualTimestamp create() => VirtualTimestamp._();
  @$core.override
  VirtualTimestamp createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VirtualTimestamp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VirtualTimestamp>(create);
  static VirtualTimestamp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get planStep => $_getI64(0);
  @$pb.TagNumber(1)
  set planStep($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPlanStep() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlanStep() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txId => $_getI64(1);
  @$pb.TagNumber(2)
  set txId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTxId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxId() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

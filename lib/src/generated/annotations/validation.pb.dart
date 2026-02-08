// This is a generated file - do not edit.
//
// Generated from annotations/validation.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Limit_Range extends $pb.GeneratedMessage {
  factory Limit_Range({
    $core.int? min,
    $core.int? max,
  }) {
    final result = create();
    if (min != null) result.min = min;
    if (max != null) result.max = max;
    return result;
  }

  Limit_Range._();

  factory Limit_Range.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Limit_Range.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Limit.Range',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'min', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'max', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Limit_Range clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Limit_Range copyWith(void Function(Limit_Range) updates) =>
      super.copyWith((message) => updates(message as Limit_Range))
          as Limit_Range;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Limit_Range create() => Limit_Range._();
  @$core.override
  Limit_Range createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Limit_Range getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Limit_Range>(create);
  static Limit_Range? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get min => $_getIZ(0);
  @$pb.TagNumber(1)
  set min($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearMin() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get max => $_getIZ(1);
  @$pb.TagNumber(2)
  set max($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearMax() => $_clearField(2);
}

enum Limit_Kind { range, lt, le, eq, ge, gt, notSet }

class Limit extends $pb.GeneratedMessage {
  factory Limit({
    Limit_Range? range,
    $core.int? lt,
    $core.int? le,
    $core.int? eq,
    $core.int? ge,
    $core.int? gt,
  }) {
    final result = create();
    if (range != null) result.range = range;
    if (lt != null) result.lt = lt;
    if (le != null) result.le = le;
    if (eq != null) result.eq = eq;
    if (ge != null) result.ge = ge;
    if (gt != null) result.gt = gt;
    return result;
  }

  Limit._();

  factory Limit.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Limit.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Limit_Kind> _Limit_KindByTag = {
    1: Limit_Kind.range,
    2: Limit_Kind.lt,
    3: Limit_Kind.le,
    4: Limit_Kind.eq,
    5: Limit_Kind.ge,
    6: Limit_Kind.gt,
    0: Limit_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Limit',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<Limit_Range>(1, _omitFieldNames ? '' : 'range',
        subBuilder: Limit_Range.create)
    ..aI(2, _omitFieldNames ? '' : 'lt', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'le', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'eq', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'ge', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'gt', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Limit clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Limit copyWith(void Function(Limit) updates) =>
      super.copyWith((message) => updates(message as Limit)) as Limit;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Limit create() => Limit._();
  @$core.override
  Limit createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Limit getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Limit>(create);
  static Limit? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  Limit_Kind whichKind() => _Limit_KindByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearKind() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Limit_Range get range => $_getN(0);
  @$pb.TagNumber(1)
  set range(Limit_Range value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearRange() => $_clearField(1);
  @$pb.TagNumber(1)
  Limit_Range ensureRange() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get lt => $_getIZ(1);
  @$pb.TagNumber(2)
  set lt($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get le => $_getIZ(2);
  @$pb.TagNumber(3)
  set le($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLe() => $_has(2);
  @$pb.TagNumber(3)
  void clearLe() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get eq => $_getIZ(3);
  @$pb.TagNumber(4)
  set eq($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEq() => $_has(3);
  @$pb.TagNumber(4)
  void clearEq() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get ge => $_getIZ(4);
  @$pb.TagNumber(5)
  set ge($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGe() => $_has(4);
  @$pb.TagNumber(5)
  void clearGe() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get gt => $_getIZ(5);
  @$pb.TagNumber(6)
  set gt($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasGt() => $_has(5);
  @$pb.TagNumber(6)
  void clearGt() => $_clearField(6);
}

class MapKey extends $pb.GeneratedMessage {
  factory MapKey({
    Limit? length,
    $core.String? value,
  }) {
    final result = create();
    if (length != null) result.length = length;
    if (value != null) result.value = value;
    return result;
  }

  MapKey._();

  factory MapKey.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapKey.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapKey',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aOM<Limit>(1, _omitFieldNames ? '' : 'length', subBuilder: Limit.create)
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapKey clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapKey copyWith(void Function(MapKey) updates) =>
      super.copyWith((message) => updates(message as MapKey)) as MapKey;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapKey create() => MapKey._();
  @$core.override
  MapKey createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapKey getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapKey>(create);
  static MapKey? _defaultInstance;

  @$pb.TagNumber(1)
  Limit get length => $_getN(0);
  @$pb.TagNumber(1)
  set length(Limit value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearLength() => $_clearField(1);
  @$pb.TagNumber(1)
  Limit ensureLength() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

class Validation {
  static final required = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'google.protobuf.FieldOptions',
      _omitFieldNames ? '' : 'required',
      87650,
      $pb.PbFieldType.OB);
  static final size = $pb.Extension<Limit>(
      _omitMessageNames ? '' : 'google.protobuf.FieldOptions',
      _omitFieldNames ? '' : 'size',
      87651,
      $pb.PbFieldType.OM,
      defaultOrMaker: Limit.getDefault,
      subBuilder: Limit.create);
  static final length = $pb.Extension<Limit>(
      _omitMessageNames ? '' : 'google.protobuf.FieldOptions',
      _omitFieldNames ? '' : 'length',
      87652,
      $pb.PbFieldType.OM,
      defaultOrMaker: Limit.getDefault,
      subBuilder: Limit.create);
  static final mapKey = $pb.Extension<MapKey>(
      _omitMessageNames ? '' : 'google.protobuf.FieldOptions',
      _omitFieldNames ? '' : 'mapKey',
      87653,
      $pb.PbFieldType.OM,
      defaultOrMaker: MapKey.getDefault,
      subBuilder: MapKey.create);
  static final value = $pb.Extension<$core.String>(
      _omitMessageNames ? '' : 'google.protobuf.FieldOptions',
      _omitFieldNames ? '' : 'value',
      87654,
      $pb.PbFieldType.OS);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(required);
    registry.add(size);
    registry.add(length);
    registry.add(mapKey);
    registry.add(value);
  }
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

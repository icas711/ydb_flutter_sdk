// This is a generated file - do not edit.
//
// Generated from ydb_value.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/struct.pbenum.dart'
    as $1;

import 'ydb_formats.pb.dart' as $0;
import 'ydb_value.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ydb_value.pbenum.dart';

class DecimalType extends $pb.GeneratedMessage {
  factory DecimalType({
    $core.int? precision,
    $core.int? scale,
  }) {
    final result = create();
    if (precision != null) result.precision = precision;
    if (scale != null) result.scale = scale;
    return result;
  }

  DecimalType._();

  factory DecimalType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DecimalType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DecimalType',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'precision', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'scale', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DecimalType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DecimalType copyWith(void Function(DecimalType) updates) =>
      super.copyWith((message) => updates(message as DecimalType))
          as DecimalType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DecimalType create() => DecimalType._();
  @$core.override
  DecimalType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DecimalType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DecimalType>(create);
  static DecimalType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get precision => $_getIZ(0);
  @$pb.TagNumber(1)
  set precision($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPrecision() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrecision() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get scale => $_getIZ(1);
  @$pb.TagNumber(2)
  set scale($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasScale() => $_has(1);
  @$pb.TagNumber(2)
  void clearScale() => $_clearField(2);
}

class OptionalType extends $pb.GeneratedMessage {
  factory OptionalType({
    Type? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  OptionalType._();

  factory OptionalType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OptionalType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OptionalType',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aOM<Type>(1, _omitFieldNames ? '' : 'item', subBuilder: Type.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OptionalType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OptionalType copyWith(void Function(OptionalType) updates) =>
      super.copyWith((message) => updates(message as OptionalType))
          as OptionalType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OptionalType create() => OptionalType._();
  @$core.override
  OptionalType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OptionalType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OptionalType>(create);
  static OptionalType? _defaultInstance;

  @$pb.TagNumber(1)
  Type get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  Type ensureItem() => $_ensure(0);
}

class ListType extends $pb.GeneratedMessage {
  factory ListType({
    Type? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  ListType._();

  factory ListType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListType',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aOM<Type>(1, _omitFieldNames ? '' : 'item', subBuilder: Type.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListType copyWith(void Function(ListType) updates) =>
      super.copyWith((message) => updates(message as ListType)) as ListType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListType create() => ListType._();
  @$core.override
  ListType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListType getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListType>(create);
  static ListType? _defaultInstance;

  @$pb.TagNumber(1)
  Type get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  Type ensureItem() => $_ensure(0);
}

enum VariantType_Type { tupleItems, structItems, notSet }

class VariantType extends $pb.GeneratedMessage {
  factory VariantType({
    TupleType? tupleItems,
    StructType? structItems,
  }) {
    final result = create();
    if (tupleItems != null) result.tupleItems = tupleItems;
    if (structItems != null) result.structItems = structItems;
    return result;
  }

  VariantType._();

  factory VariantType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VariantType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, VariantType_Type> _VariantType_TypeByTag = {
    1: VariantType_Type.tupleItems,
    2: VariantType_Type.structItems,
    0: VariantType_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VariantType',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<TupleType>(1, _omitFieldNames ? '' : 'tupleItems',
        subBuilder: TupleType.create)
    ..aOM<StructType>(2, _omitFieldNames ? '' : 'structItems',
        subBuilder: StructType.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariantType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariantType copyWith(void Function(VariantType) updates) =>
      super.copyWith((message) => updates(message as VariantType))
          as VariantType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VariantType create() => VariantType._();
  @$core.override
  VariantType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VariantType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VariantType>(create);
  static VariantType? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  VariantType_Type whichType() => _VariantType_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TupleType get tupleItems => $_getN(0);
  @$pb.TagNumber(1)
  set tupleItems(TupleType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTupleItems() => $_has(0);
  @$pb.TagNumber(1)
  void clearTupleItems() => $_clearField(1);
  @$pb.TagNumber(1)
  TupleType ensureTupleItems() => $_ensure(0);

  @$pb.TagNumber(2)
  StructType get structItems => $_getN(1);
  @$pb.TagNumber(2)
  set structItems(StructType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStructItems() => $_has(1);
  @$pb.TagNumber(2)
  void clearStructItems() => $_clearField(2);
  @$pb.TagNumber(2)
  StructType ensureStructItems() => $_ensure(1);
}

class TupleType extends $pb.GeneratedMessage {
  factory TupleType({
    $core.Iterable<Type>? elements,
  }) {
    final result = create();
    if (elements != null) result.elements.addAll(elements);
    return result;
  }

  TupleType._();

  factory TupleType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TupleType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TupleType',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..pPM<Type>(1, _omitFieldNames ? '' : 'elements', subBuilder: Type.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TupleType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TupleType copyWith(void Function(TupleType) updates) =>
      super.copyWith((message) => updates(message as TupleType)) as TupleType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TupleType create() => TupleType._();
  @$core.override
  TupleType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TupleType getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TupleType>(create);
  static TupleType? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Type> get elements => $_getList(0);
}

class StructMember extends $pb.GeneratedMessage {
  factory StructMember({
    $core.String? name,
    Type? type,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    return result;
  }

  StructMember._();

  factory StructMember.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StructMember.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructMember',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<Type>(2, _omitFieldNames ? '' : 'type', subBuilder: Type.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StructMember clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StructMember copyWith(void Function(StructMember) updates) =>
      super.copyWith((message) => updates(message as StructMember))
          as StructMember;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StructMember create() => StructMember._();
  @$core.override
  StructMember createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StructMember getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructMember>(create);
  static StructMember? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  Type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(Type value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);
  @$pb.TagNumber(2)
  Type ensureType() => $_ensure(1);
}

class StructType extends $pb.GeneratedMessage {
  factory StructType({
    $core.Iterable<StructMember>? members,
  }) {
    final result = create();
    if (members != null) result.members.addAll(members);
    return result;
  }

  StructType._();

  factory StructType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StructType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructType',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..pPM<StructMember>(1, _omitFieldNames ? '' : 'members',
        subBuilder: StructMember.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StructType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StructType copyWith(void Function(StructType) updates) =>
      super.copyWith((message) => updates(message as StructType)) as StructType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StructType create() => StructType._();
  @$core.override
  StructType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StructType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructType>(create);
  static StructType? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<StructMember> get members => $_getList(0);
}

class DictType extends $pb.GeneratedMessage {
  factory DictType({
    Type? key,
    Type? payload,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (payload != null) result.payload = payload;
    return result;
  }

  DictType._();

  factory DictType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DictType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DictType',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aOM<Type>(1, _omitFieldNames ? '' : 'key', subBuilder: Type.create)
    ..aOM<Type>(2, _omitFieldNames ? '' : 'payload', subBuilder: Type.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DictType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DictType copyWith(void Function(DictType) updates) =>
      super.copyWith((message) => updates(message as DictType)) as DictType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictType create() => DictType._();
  @$core.override
  DictType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DictType getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DictType>(create);
  static DictType? _defaultInstance;

  @$pb.TagNumber(1)
  Type get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);
  @$pb.TagNumber(1)
  Type ensureKey() => $_ensure(0);

  @$pb.TagNumber(2)
  Type get payload => $_getN(1);
  @$pb.TagNumber(2)
  set payload(Type value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPayload() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayload() => $_clearField(2);
  @$pb.TagNumber(2)
  Type ensurePayload() => $_ensure(1);
}

class TaggedType extends $pb.GeneratedMessage {
  factory TaggedType({
    $core.String? tag,
    Type? type,
  }) {
    final result = create();
    if (tag != null) result.tag = tag;
    if (type != null) result.type = type;
    return result;
  }

  TaggedType._();

  factory TaggedType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaggedType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaggedType',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tag')
    ..aOM<Type>(2, _omitFieldNames ? '' : 'type', subBuilder: Type.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaggedType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaggedType copyWith(void Function(TaggedType) updates) =>
      super.copyWith((message) => updates(message as TaggedType)) as TaggedType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaggedType create() => TaggedType._();
  @$core.override
  TaggedType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaggedType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TaggedType>(create);
  static TaggedType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tag => $_getSZ(0);
  @$pb.TagNumber(1)
  set tag($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => $_clearField(1);

  @$pb.TagNumber(2)
  Type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(Type value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);
  @$pb.TagNumber(2)
  Type ensureType() => $_ensure(1);
}

class PgType extends $pb.GeneratedMessage {
  factory PgType({
    $core.int? oid,
    $core.int? typlen,
    $core.int? typmod,
    $core.String? typeName,
    $core.String? typeModifier,
  }) {
    final result = create();
    if (oid != null) result.oid = oid;
    if (typlen != null) result.typlen = typlen;
    if (typmod != null) result.typmod = typmod;
    if (typeName != null) result.typeName = typeName;
    if (typeModifier != null) result.typeModifier = typeModifier;
    return result;
  }

  PgType._();

  factory PgType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PgType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PgType',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'oid', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'typlen')
    ..aI(3, _omitFieldNames ? '' : 'typmod')
    ..aOS(10, _omitFieldNames ? '' : 'typeName')
    ..aOS(11, _omitFieldNames ? '' : 'typeModifier')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PgType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PgType copyWith(void Function(PgType) updates) =>
      super.copyWith((message) => updates(message as PgType)) as PgType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PgType create() => PgType._();
  @$core.override
  PgType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PgType getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PgType>(create);
  static PgType? _defaultInstance;

  /// pg object id of the type
  /// full registry could be found here: https://github.com/postgres/postgres/blob/master/src/include/catalog/pg_type.dat
  @$pb.TagNumber(1)
  $core.int get oid => $_getIZ(0);
  @$pb.TagNumber(1)
  set oid($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => $_clearField(1);

  /// advanced type details useful for pg wire format proxying
  @$pb.TagNumber(2)
  $core.int get typlen => $_getIZ(1);
  @$pb.TagNumber(2)
  set typlen($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTyplen() => $_has(1);
  @$pb.TagNumber(2)
  void clearTyplen() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get typmod => $_getIZ(2);
  @$pb.TagNumber(3)
  set typmod($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTypmod() => $_has(2);
  @$pb.TagNumber(3)
  void clearTypmod() => $_clearField(3);

  @$pb.TagNumber(10)
  $core.String get typeName => $_getSZ(3);
  @$pb.TagNumber(10)
  set typeName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(10)
  $core.bool hasTypeName() => $_has(3);
  @$pb.TagNumber(10)
  void clearTypeName() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get typeModifier => $_getSZ(4);
  @$pb.TagNumber(11)
  set typeModifier($core.String value) => $_setString(4, value);
  @$pb.TagNumber(11)
  $core.bool hasTypeModifier() => $_has(4);
  @$pb.TagNumber(11)
  void clearTypeModifier() => $_clearField(11);
}

enum Type_Type {
  typeId,
  decimalType,
  optionalType,
  listType,
  tupleType,
  structType,
  dictType,
  variantType,
  taggedType,
  voidType,
  nullType,
  emptyListType,
  emptyDictType,
  pgType,
  notSet
}

class Type extends $pb.GeneratedMessage {
  factory Type({
    Type_PrimitiveTypeId? typeId,
    DecimalType? decimalType,
    OptionalType? optionalType,
    ListType? listType,
    TupleType? tupleType,
    StructType? structType,
    DictType? dictType,
    VariantType? variantType,
    TaggedType? taggedType,
    $1.NullValue? voidType,
    $1.NullValue? nullType,
    $1.NullValue? emptyListType,
    $1.NullValue? emptyDictType,
    PgType? pgType,
  }) {
    final result = create();
    if (typeId != null) result.typeId = typeId;
    if (decimalType != null) result.decimalType = decimalType;
    if (optionalType != null) result.optionalType = optionalType;
    if (listType != null) result.listType = listType;
    if (tupleType != null) result.tupleType = tupleType;
    if (structType != null) result.structType = structType;
    if (dictType != null) result.dictType = dictType;
    if (variantType != null) result.variantType = variantType;
    if (taggedType != null) result.taggedType = taggedType;
    if (voidType != null) result.voidType = voidType;
    if (nullType != null) result.nullType = nullType;
    if (emptyListType != null) result.emptyListType = emptyListType;
    if (emptyDictType != null) result.emptyDictType = emptyDictType;
    if (pgType != null) result.pgType = pgType;
    return result;
  }

  Type._();

  factory Type.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Type.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Type_Type> _Type_TypeByTag = {
    1: Type_Type.typeId,
    2: Type_Type.decimalType,
    101: Type_Type.optionalType,
    102: Type_Type.listType,
    103: Type_Type.tupleType,
    104: Type_Type.structType,
    105: Type_Type.dictType,
    106: Type_Type.variantType,
    107: Type_Type.taggedType,
    201: Type_Type.voidType,
    202: Type_Type.nullType,
    203: Type_Type.emptyListType,
    204: Type_Type.emptyDictType,
    205: Type_Type.pgType,
    0: Type_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Type',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 101, 102, 103, 104, 105, 106, 107, 201, 202, 203, 204, 205])
    ..aE<Type_PrimitiveTypeId>(1, _omitFieldNames ? '' : 'typeId',
        enumValues: Type_PrimitiveTypeId.values)
    ..aOM<DecimalType>(2, _omitFieldNames ? '' : 'decimalType',
        subBuilder: DecimalType.create)
    ..aOM<OptionalType>(101, _omitFieldNames ? '' : 'optionalType',
        subBuilder: OptionalType.create)
    ..aOM<ListType>(102, _omitFieldNames ? '' : 'listType',
        subBuilder: ListType.create)
    ..aOM<TupleType>(103, _omitFieldNames ? '' : 'tupleType',
        subBuilder: TupleType.create)
    ..aOM<StructType>(104, _omitFieldNames ? '' : 'structType',
        subBuilder: StructType.create)
    ..aOM<DictType>(105, _omitFieldNames ? '' : 'dictType',
        subBuilder: DictType.create)
    ..aOM<VariantType>(106, _omitFieldNames ? '' : 'variantType',
        subBuilder: VariantType.create)
    ..aOM<TaggedType>(107, _omitFieldNames ? '' : 'taggedType',
        subBuilder: TaggedType.create)
    ..aE<$1.NullValue>(201, _omitFieldNames ? '' : 'voidType',
        enumValues: $1.NullValue.values)
    ..aE<$1.NullValue>(202, _omitFieldNames ? '' : 'nullType',
        enumValues: $1.NullValue.values)
    ..aE<$1.NullValue>(203, _omitFieldNames ? '' : 'emptyListType',
        enumValues: $1.NullValue.values)
    ..aE<$1.NullValue>(204, _omitFieldNames ? '' : 'emptyDictType',
        enumValues: $1.NullValue.values)
    ..aOM<PgType>(205, _omitFieldNames ? '' : 'pgType',
        subBuilder: PgType.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Type clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Type copyWith(void Function(Type) updates) =>
      super.copyWith((message) => updates(message as Type)) as Type;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Type create() => Type._();
  @$core.override
  Type createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Type getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Type>(create);
  static Type? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(101)
  @$pb.TagNumber(102)
  @$pb.TagNumber(103)
  @$pb.TagNumber(104)
  @$pb.TagNumber(105)
  @$pb.TagNumber(106)
  @$pb.TagNumber(107)
  @$pb.TagNumber(201)
  @$pb.TagNumber(202)
  @$pb.TagNumber(203)
  @$pb.TagNumber(204)
  @$pb.TagNumber(205)
  Type_Type whichType() => _Type_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(101)
  @$pb.TagNumber(102)
  @$pb.TagNumber(103)
  @$pb.TagNumber(104)
  @$pb.TagNumber(105)
  @$pb.TagNumber(106)
  @$pb.TagNumber(107)
  @$pb.TagNumber(201)
  @$pb.TagNumber(202)
  @$pb.TagNumber(203)
  @$pb.TagNumber(204)
  @$pb.TagNumber(205)
  void clearType() => $_clearField($_whichOneof(0));

  /// Data types
  @$pb.TagNumber(1)
  Type_PrimitiveTypeId get typeId => $_getN(0);
  @$pb.TagNumber(1)
  set typeId(Type_PrimitiveTypeId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTypeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeId() => $_clearField(1);

  @$pb.TagNumber(2)
  DecimalType get decimalType => $_getN(1);
  @$pb.TagNumber(2)
  set decimalType(DecimalType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDecimalType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDecimalType() => $_clearField(2);
  @$pb.TagNumber(2)
  DecimalType ensureDecimalType() => $_ensure(1);

  /// Container types
  @$pb.TagNumber(101)
  OptionalType get optionalType => $_getN(2);
  @$pb.TagNumber(101)
  set optionalType(OptionalType value) => $_setField(101, value);
  @$pb.TagNumber(101)
  $core.bool hasOptionalType() => $_has(2);
  @$pb.TagNumber(101)
  void clearOptionalType() => $_clearField(101);
  @$pb.TagNumber(101)
  OptionalType ensureOptionalType() => $_ensure(2);

  @$pb.TagNumber(102)
  ListType get listType => $_getN(3);
  @$pb.TagNumber(102)
  set listType(ListType value) => $_setField(102, value);
  @$pb.TagNumber(102)
  $core.bool hasListType() => $_has(3);
  @$pb.TagNumber(102)
  void clearListType() => $_clearField(102);
  @$pb.TagNumber(102)
  ListType ensureListType() => $_ensure(3);

  @$pb.TagNumber(103)
  TupleType get tupleType => $_getN(4);
  @$pb.TagNumber(103)
  set tupleType(TupleType value) => $_setField(103, value);
  @$pb.TagNumber(103)
  $core.bool hasTupleType() => $_has(4);
  @$pb.TagNumber(103)
  void clearTupleType() => $_clearField(103);
  @$pb.TagNumber(103)
  TupleType ensureTupleType() => $_ensure(4);

  @$pb.TagNumber(104)
  StructType get structType => $_getN(5);
  @$pb.TagNumber(104)
  set structType(StructType value) => $_setField(104, value);
  @$pb.TagNumber(104)
  $core.bool hasStructType() => $_has(5);
  @$pb.TagNumber(104)
  void clearStructType() => $_clearField(104);
  @$pb.TagNumber(104)
  StructType ensureStructType() => $_ensure(5);

  @$pb.TagNumber(105)
  DictType get dictType => $_getN(6);
  @$pb.TagNumber(105)
  set dictType(DictType value) => $_setField(105, value);
  @$pb.TagNumber(105)
  $core.bool hasDictType() => $_has(6);
  @$pb.TagNumber(105)
  void clearDictType() => $_clearField(105);
  @$pb.TagNumber(105)
  DictType ensureDictType() => $_ensure(6);

  @$pb.TagNumber(106)
  VariantType get variantType => $_getN(7);
  @$pb.TagNumber(106)
  set variantType(VariantType value) => $_setField(106, value);
  @$pb.TagNumber(106)
  $core.bool hasVariantType() => $_has(7);
  @$pb.TagNumber(106)
  void clearVariantType() => $_clearField(106);
  @$pb.TagNumber(106)
  VariantType ensureVariantType() => $_ensure(7);

  @$pb.TagNumber(107)
  TaggedType get taggedType => $_getN(8);
  @$pb.TagNumber(107)
  set taggedType(TaggedType value) => $_setField(107, value);
  @$pb.TagNumber(107)
  $core.bool hasTaggedType() => $_has(8);
  @$pb.TagNumber(107)
  void clearTaggedType() => $_clearField(107);
  @$pb.TagNumber(107)
  TaggedType ensureTaggedType() => $_ensure(8);

  /// Special types
  @$pb.TagNumber(201)
  $1.NullValue get voidType => $_getN(9);
  @$pb.TagNumber(201)
  set voidType($1.NullValue value) => $_setField(201, value);
  @$pb.TagNumber(201)
  $core.bool hasVoidType() => $_has(9);
  @$pb.TagNumber(201)
  void clearVoidType() => $_clearField(201);

  @$pb.TagNumber(202)
  $1.NullValue get nullType => $_getN(10);
  @$pb.TagNumber(202)
  set nullType($1.NullValue value) => $_setField(202, value);
  @$pb.TagNumber(202)
  $core.bool hasNullType() => $_has(10);
  @$pb.TagNumber(202)
  void clearNullType() => $_clearField(202);

  @$pb.TagNumber(203)
  $1.NullValue get emptyListType => $_getN(11);
  @$pb.TagNumber(203)
  set emptyListType($1.NullValue value) => $_setField(203, value);
  @$pb.TagNumber(203)
  $core.bool hasEmptyListType() => $_has(11);
  @$pb.TagNumber(203)
  void clearEmptyListType() => $_clearField(203);

  @$pb.TagNumber(204)
  $1.NullValue get emptyDictType => $_getN(12);
  @$pb.TagNumber(204)
  set emptyDictType($1.NullValue value) => $_setField(204, value);
  @$pb.TagNumber(204)
  $core.bool hasEmptyDictType() => $_has(12);
  @$pb.TagNumber(204)
  void clearEmptyDictType() => $_clearField(204);

  @$pb.TagNumber(205)
  PgType get pgType => $_getN(13);
  @$pb.TagNumber(205)
  set pgType(PgType value) => $_setField(205, value);
  @$pb.TagNumber(205)
  $core.bool hasPgType() => $_has(13);
  @$pb.TagNumber(205)
  void clearPgType() => $_clearField(205);
  @$pb.TagNumber(205)
  PgType ensurePgType() => $_ensure(13);
}

class ValuePair extends $pb.GeneratedMessage {
  factory ValuePair({
    Value? key,
    Value? payload,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (payload != null) result.payload = payload;
    return result;
  }

  ValuePair._();

  factory ValuePair.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ValuePair.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ValuePair',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aOM<Value>(1, _omitFieldNames ? '' : 'key', subBuilder: Value.create)
    ..aOM<Value>(2, _omitFieldNames ? '' : 'payload', subBuilder: Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValuePair clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValuePair copyWith(void Function(ValuePair) updates) =>
      super.copyWith((message) => updates(message as ValuePair)) as ValuePair;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValuePair create() => ValuePair._();
  @$core.override
  ValuePair createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ValuePair getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValuePair>(create);
  static ValuePair? _defaultInstance;

  @$pb.TagNumber(1)
  Value get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);
  @$pb.TagNumber(1)
  Value ensureKey() => $_ensure(0);

  @$pb.TagNumber(2)
  Value get payload => $_getN(1);
  @$pb.TagNumber(2)
  set payload(Value value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPayload() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayload() => $_clearField(2);
  @$pb.TagNumber(2)
  Value ensurePayload() => $_ensure(1);
}

enum Value_Value {
  boolValue,
  int32Value,
  uint32Value,
  int64Value,
  uint64Value,
  floatValue,
  doubleValue,
  bytesValue,
  textValue,
  nullFlagValue,
  nestedValue,
  low128,
  notSet
}

class Value extends $pb.GeneratedMessage {
  factory Value({
    $core.bool? boolValue,
    $core.int? int32Value,
    $core.int? uint32Value,
    $fixnum.Int64? int64Value,
    $fixnum.Int64? uint64Value,
    $core.double? floatValue,
    $core.double? doubleValue,
    $core.List<$core.int>? bytesValue,
    $core.String? textValue,
    $1.NullValue? nullFlagValue,
    Value? nestedValue,
    $core.Iterable<Value>? items,
    $core.Iterable<ValuePair>? pairs,
    $core.int? variantIndex,
    $fixnum.Int64? low128,
    $fixnum.Int64? high128,
  }) {
    final result = create();
    if (boolValue != null) result.boolValue = boolValue;
    if (int32Value != null) result.int32Value = int32Value;
    if (uint32Value != null) result.uint32Value = uint32Value;
    if (int64Value != null) result.int64Value = int64Value;
    if (uint64Value != null) result.uint64Value = uint64Value;
    if (floatValue != null) result.floatValue = floatValue;
    if (doubleValue != null) result.doubleValue = doubleValue;
    if (bytesValue != null) result.bytesValue = bytesValue;
    if (textValue != null) result.textValue = textValue;
    if (nullFlagValue != null) result.nullFlagValue = nullFlagValue;
    if (nestedValue != null) result.nestedValue = nestedValue;
    if (items != null) result.items.addAll(items);
    if (pairs != null) result.pairs.addAll(pairs);
    if (variantIndex != null) result.variantIndex = variantIndex;
    if (low128 != null) result.low128 = low128;
    if (high128 != null) result.high128 = high128;
    return result;
  }

  Value._();

  factory Value.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Value.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Value_Value> _Value_ValueByTag = {
    1: Value_Value.boolValue,
    2: Value_Value.int32Value,
    3: Value_Value.uint32Value,
    4: Value_Value.int64Value,
    5: Value_Value.uint64Value,
    6: Value_Value.floatValue,
    7: Value_Value.doubleValue,
    8: Value_Value.bytesValue,
    9: Value_Value.textValue,
    10: Value_Value.nullFlagValue,
    11: Value_Value.nestedValue,
    15: Value_Value.low128,
    0: Value_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Value',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 15])
    ..aOB(1, _omitFieldNames ? '' : 'boolValue')
    ..aI(2, _omitFieldNames ? '' : 'int32Value',
        fieldType: $pb.PbFieldType.OSF3)
    ..aI(3, _omitFieldNames ? '' : 'uint32Value',
        fieldType: $pb.PbFieldType.OF3)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'int64Value', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'uint64Value', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aD(6, _omitFieldNames ? '' : 'floatValue', fieldType: $pb.PbFieldType.OF)
    ..aD(7, _omitFieldNames ? '' : 'doubleValue')
    ..a<$core.List<$core.int>>(
        8, _omitFieldNames ? '' : 'bytesValue', $pb.PbFieldType.OY)
    ..aOS(9, _omitFieldNames ? '' : 'textValue')
    ..aE<$1.NullValue>(10, _omitFieldNames ? '' : 'nullFlagValue',
        enumValues: $1.NullValue.values)
    ..aOM<Value>(11, _omitFieldNames ? '' : 'nestedValue',
        subBuilder: Value.create)
    ..pPM<Value>(12, _omitFieldNames ? '' : 'items', subBuilder: Value.create)
    ..pPM<ValuePair>(13, _omitFieldNames ? '' : 'pairs',
        subBuilder: ValuePair.create)
    ..aI(14, _omitFieldNames ? '' : 'variantIndex',
        fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(15, _omitFieldNames ? '' : 'low128', $pb.PbFieldType.OF6,
        protoName: 'low_128', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        16, _omitFieldNames ? '' : 'high128', $pb.PbFieldType.OF6,
        protoName: 'high_128', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Value clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Value copyWith(void Function(Value) updates) =>
      super.copyWith((message) => updates(message as Value)) as Value;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  @$core.override
  Value createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Value getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Value>(create);
  static Value? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(15)
  Value_Value whichValue() => _Value_ValueByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(15)
  void clearValue() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get boolValue => $_getBF(0);
  @$pb.TagNumber(1)
  set boolValue($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBoolValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoolValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get int32Value => $_getIZ(1);
  @$pb.TagNumber(2)
  set int32Value($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasInt32Value() => $_has(1);
  @$pb.TagNumber(2)
  void clearInt32Value() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get uint32Value => $_getIZ(2);
  @$pb.TagNumber(3)
  set uint32Value($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUint32Value() => $_has(2);
  @$pb.TagNumber(3)
  void clearUint32Value() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get int64Value => $_getI64(3);
  @$pb.TagNumber(4)
  set int64Value($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasInt64Value() => $_has(3);
  @$pb.TagNumber(4)
  void clearInt64Value() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get uint64Value => $_getI64(4);
  @$pb.TagNumber(5)
  set uint64Value($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUint64Value() => $_has(4);
  @$pb.TagNumber(5)
  void clearUint64Value() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get floatValue => $_getN(5);
  @$pb.TagNumber(6)
  set floatValue($core.double value) => $_setFloat(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFloatValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearFloatValue() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get doubleValue => $_getN(6);
  @$pb.TagNumber(7)
  set doubleValue($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDoubleValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearDoubleValue() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get bytesValue => $_getN(7);
  @$pb.TagNumber(8)
  set bytesValue($core.List<$core.int> value) => $_setBytes(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBytesValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearBytesValue() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get textValue => $_getSZ(8);
  @$pb.TagNumber(9)
  set textValue($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTextValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearTextValue() => $_clearField(9);

  @$pb.TagNumber(10)
  $1.NullValue get nullFlagValue => $_getN(9);
  @$pb.TagNumber(10)
  set nullFlagValue($1.NullValue value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasNullFlagValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearNullFlagValue() => $_clearField(10);

  @$pb.TagNumber(11)
  Value get nestedValue => $_getN(10);
  @$pb.TagNumber(11)
  set nestedValue(Value value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasNestedValue() => $_has(10);
  @$pb.TagNumber(11)
  void clearNestedValue() => $_clearField(11);
  @$pb.TagNumber(11)
  Value ensureNestedValue() => $_ensure(10);

  @$pb.TagNumber(12)
  $pb.PbList<Value> get items => $_getList(11);

  @$pb.TagNumber(13)
  $pb.PbList<ValuePair> get pairs => $_getList(12);

  @$pb.TagNumber(14)
  $core.int get variantIndex => $_getIZ(13);
  @$pb.TagNumber(14)
  set variantIndex($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasVariantIndex() => $_has(13);
  @$pb.TagNumber(14)
  void clearVariantIndex() => $_clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get low128 => $_getI64(14);
  @$pb.TagNumber(15)
  set low128($fixnum.Int64 value) => $_setInt64(14, value);
  @$pb.TagNumber(15)
  $core.bool hasLow128() => $_has(14);
  @$pb.TagNumber(15)
  void clearLow128() => $_clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get high128 => $_getI64(15);
  @$pb.TagNumber(16)
  set high128($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(16)
  $core.bool hasHigh128() => $_has(15);
  @$pb.TagNumber(16)
  void clearHigh128() => $_clearField(16);
}

class TypedValue extends $pb.GeneratedMessage {
  factory TypedValue({
    Type? type,
    Value? value,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (value != null) result.value = value;
    return result;
  }

  TypedValue._();

  factory TypedValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TypedValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TypedValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aOM<Type>(1, _omitFieldNames ? '' : 'type', subBuilder: Type.create)
    ..aOM<Value>(2, _omitFieldNames ? '' : 'value', subBuilder: Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TypedValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TypedValue copyWith(void Function(TypedValue) updates) =>
      super.copyWith((message) => updates(message as TypedValue)) as TypedValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TypedValue create() => TypedValue._();
  @$core.override
  TypedValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TypedValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TypedValue>(create);
  static TypedValue? _defaultInstance;

  @$pb.TagNumber(1)
  Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
  @$pb.TagNumber(1)
  Type ensureType() => $_ensure(0);

  @$pb.TagNumber(2)
  Value get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(Value value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
  @$pb.TagNumber(2)
  Value ensureValue() => $_ensure(1);
}

class Column extends $pb.GeneratedMessage {
  factory Column({
    $core.String? name,
    Type? type,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    return result;
  }

  Column._();

  factory Column.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Column.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Column',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<Type>(2, _omitFieldNames ? '' : 'type', subBuilder: Type.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Column clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Column copyWith(void Function(Column) updates) =>
      super.copyWith((message) => updates(message as Column)) as Column;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Column create() => Column._();
  @$core.override
  Column createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Column getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Column>(create);
  static Column? _defaultInstance;

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
  Type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(Type value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);
  @$pb.TagNumber(2)
  Type ensureType() => $_ensure(1);
}

/// Represents table-like structure with ordered set of rows and columns
class ResultSet extends $pb.GeneratedMessage {
  factory ResultSet({
    $core.Iterable<Column>? columns,
    $core.Iterable<Value>? rows,
    $core.bool? truncated,
    ResultSet_Format? format,
    $0.ArrowFormatMeta? arrowFormatMeta,
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (columns != null) result.columns.addAll(columns);
    if (rows != null) result.rows.addAll(rows);
    if (truncated != null) result.truncated = truncated;
    if (format != null) result.format = format;
    if (arrowFormatMeta != null) result.arrowFormatMeta = arrowFormatMeta;
    if (data != null) result.data = data;
    return result;
  }

  ResultSet._();

  factory ResultSet.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResultSet.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultSet',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..pPM<Column>(1, _omitFieldNames ? '' : 'columns',
        subBuilder: Column.create)
    ..pPM<Value>(2, _omitFieldNames ? '' : 'rows', subBuilder: Value.create)
    ..aOB(3, _omitFieldNames ? '' : 'truncated')
    ..aE<ResultSet_Format>(4, _omitFieldNames ? '' : 'format',
        enumValues: ResultSet_Format.values)
    ..aOM<$0.ArrowFormatMeta>(5, _omitFieldNames ? '' : 'arrowFormatMeta',
        subBuilder: $0.ArrowFormatMeta.create)
    ..a<$core.List<$core.int>>(
        15, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResultSet clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResultSet copyWith(void Function(ResultSet) updates) =>
      super.copyWith((message) => updates(message as ResultSet)) as ResultSet;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultSet create() => ResultSet._();
  @$core.override
  ResultSet createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResultSet getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultSet>(create);
  static ResultSet? _defaultInstance;

  /// Metadata of columns.
  /// May be empty for custom Ydb.Query.SchemaInclusionMode.
  @$pb.TagNumber(1)
  $pb.PbList<Column> get columns => $_getList(0);

  /// Rows of table, are only filled for FORMAT_VALUE
  @$pb.TagNumber(2)
  $pb.PbList<Value> get rows => $_getList(1);

  /// Flag indicates the result was truncated
  @$pb.TagNumber(3)
  $core.bool get truncated => $_getBF(2);
  @$pb.TagNumber(3)
  set truncated($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTruncated() => $_has(2);
  @$pb.TagNumber(3)
  void clearTruncated() => $_clearField(3);

  /// Format of the result set rows
  @$pb.TagNumber(4)
  ResultSet_Format get format => $_getN(3);
  @$pb.TagNumber(4)
  set format(ResultSet_Format value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFormat() => $_has(3);
  @$pb.TagNumber(4)
  void clearFormat() => $_clearField(4);

  /// Metadata of the result set rows, only used for FORMAT_ARROW
  @$pb.TagNumber(5)
  $0.ArrowFormatMeta get arrowFormatMeta => $_getN(4);
  @$pb.TagNumber(5)
  set arrowFormatMeta($0.ArrowFormatMeta value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasArrowFormatMeta() => $_has(4);
  @$pb.TagNumber(5)
  void clearArrowFormatMeta() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.ArrowFormatMeta ensureArrowFormatMeta() => $_ensure(4);

  /// Binary data for compressible formats of rows
  @$pb.TagNumber(15)
  $core.List<$core.int> get data => $_getN(5);
  @$pb.TagNumber(15)
  set data($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(15)
  $core.bool hasData() => $_has(5);
  @$pb.TagNumber(15)
  void clearData() => $_clearField(15);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

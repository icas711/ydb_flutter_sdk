// This is a generated file - do not edit.
//
// Generated from ydb_query_stats.proto.

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

/// Describes select, update (insert, upsert, replace) and delete operations
class OperationStats extends $pb.GeneratedMessage {
  factory OperationStats({
    $fixnum.Int64? rows,
    $fixnum.Int64? bytes,
  }) {
    final result = create();
    if (rows != null) result.rows = rows;
    if (bytes != null) result.bytes = bytes;
    return result;
  }

  OperationStats._();

  factory OperationStats.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OperationStats.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OperationStats',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.TableStats'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'rows', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'bytes', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OperationStats clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OperationStats copyWith(void Function(OperationStats) updates) =>
      super.copyWith((message) => updates(message as OperationStats))
          as OperationStats;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OperationStats create() => OperationStats._();
  @$core.override
  OperationStats createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OperationStats getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OperationStats>(create);
  static OperationStats? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get rows => $_getI64(0);
  @$pb.TagNumber(1)
  set rows($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRows() => $_has(0);
  @$pb.TagNumber(1)
  void clearRows() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get bytes => $_getI64(1);
  @$pb.TagNumber(2)
  set bytes($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearBytes() => $_clearField(2);
}

/// Describes all operations on a table
class TableAccessStats extends $pb.GeneratedMessage {
  factory TableAccessStats({
    $core.String? name,
    OperationStats? reads,
    OperationStats? updates,
    OperationStats? deletes,
    $fixnum.Int64? partitionsCount,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (reads != null) result.reads = reads;
    if (updates != null) result.updates = updates;
    if (deletes != null) result.deletes = deletes;
    if (partitionsCount != null) result.partitionsCount = partitionsCount;
    return result;
  }

  TableAccessStats._();

  factory TableAccessStats.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TableAccessStats.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TableAccessStats',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.TableStats'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<OperationStats>(3, _omitFieldNames ? '' : 'reads',
        subBuilder: OperationStats.create)
    ..aOM<OperationStats>(4, _omitFieldNames ? '' : 'updates',
        subBuilder: OperationStats.create)
    ..aOM<OperationStats>(5, _omitFieldNames ? '' : 'deletes',
        subBuilder: OperationStats.create)
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'partitionsCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TableAccessStats clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TableAccessStats copyWith(void Function(TableAccessStats) updates) =>
      super.copyWith((message) => updates(message as TableAccessStats))
          as TableAccessStats;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TableAccessStats create() => TableAccessStats._();
  @$core.override
  TableAccessStats createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TableAccessStats getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TableAccessStats>(create);
  static TableAccessStats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(3)
  OperationStats get reads => $_getN(1);
  @$pb.TagNumber(3)
  set reads(OperationStats value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasReads() => $_has(1);
  @$pb.TagNumber(3)
  void clearReads() => $_clearField(3);
  @$pb.TagNumber(3)
  OperationStats ensureReads() => $_ensure(1);

  @$pb.TagNumber(4)
  OperationStats get updates => $_getN(2);
  @$pb.TagNumber(4)
  set updates(OperationStats value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasUpdates() => $_has(2);
  @$pb.TagNumber(4)
  void clearUpdates() => $_clearField(4);
  @$pb.TagNumber(4)
  OperationStats ensureUpdates() => $_ensure(2);

  @$pb.TagNumber(5)
  OperationStats get deletes => $_getN(3);
  @$pb.TagNumber(5)
  set deletes(OperationStats value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasDeletes() => $_has(3);
  @$pb.TagNumber(5)
  void clearDeletes() => $_clearField(5);
  @$pb.TagNumber(5)
  OperationStats ensureDeletes() => $_ensure(3);

  @$pb.TagNumber(6)
  $fixnum.Int64 get partitionsCount => $_getI64(4);
  @$pb.TagNumber(6)
  set partitionsCount($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(6)
  $core.bool hasPartitionsCount() => $_has(4);
  @$pb.TagNumber(6)
  void clearPartitionsCount() => $_clearField(6);
}

class QueryPhaseStats extends $pb.GeneratedMessage {
  factory QueryPhaseStats({
    $fixnum.Int64? durationUs,
    $core.Iterable<TableAccessStats>? tableAccess,
    $fixnum.Int64? cpuTimeUs,
    $fixnum.Int64? affectedShards,
    $core.bool? literalPhase,
  }) {
    final result = create();
    if (durationUs != null) result.durationUs = durationUs;
    if (tableAccess != null) result.tableAccess.addAll(tableAccess);
    if (cpuTimeUs != null) result.cpuTimeUs = cpuTimeUs;
    if (affectedShards != null) result.affectedShards = affectedShards;
    if (literalPhase != null) result.literalPhase = literalPhase;
    return result;
  }

  QueryPhaseStats._();

  factory QueryPhaseStats.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QueryPhaseStats.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueryPhaseStats',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.TableStats'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'durationUs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<TableAccessStats>(2, _omitFieldNames ? '' : 'tableAccess',
        subBuilder: TableAccessStats.create)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'cpuTimeUs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'affectedShards', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(5, _omitFieldNames ? '' : 'literalPhase')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryPhaseStats clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryPhaseStats copyWith(void Function(QueryPhaseStats) updates) =>
      super.copyWith((message) => updates(message as QueryPhaseStats))
          as QueryPhaseStats;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryPhaseStats create() => QueryPhaseStats._();
  @$core.override
  QueryPhaseStats createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static QueryPhaseStats getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueryPhaseStats>(create);
  static QueryPhaseStats? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get durationUs => $_getI64(0);
  @$pb.TagNumber(1)
  set durationUs($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDurationUs() => $_has(0);
  @$pb.TagNumber(1)
  void clearDurationUs() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<TableAccessStats> get tableAccess => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get cpuTimeUs => $_getI64(2);
  @$pb.TagNumber(3)
  set cpuTimeUs($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCpuTimeUs() => $_has(2);
  @$pb.TagNumber(3)
  void clearCpuTimeUs() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get affectedShards => $_getI64(3);
  @$pb.TagNumber(4)
  set affectedShards($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAffectedShards() => $_has(3);
  @$pb.TagNumber(4)
  void clearAffectedShards() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get literalPhase => $_getBF(4);
  @$pb.TagNumber(5)
  set literalPhase($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLiteralPhase() => $_has(4);
  @$pb.TagNumber(5)
  void clearLiteralPhase() => $_clearField(5);
}

class CompilationStats extends $pb.GeneratedMessage {
  factory CompilationStats({
    $core.bool? fromCache,
    $fixnum.Int64? durationUs,
    $fixnum.Int64? cpuTimeUs,
  }) {
    final result = create();
    if (fromCache != null) result.fromCache = fromCache;
    if (durationUs != null) result.durationUs = durationUs;
    if (cpuTimeUs != null) result.cpuTimeUs = cpuTimeUs;
    return result;
  }

  CompilationStats._();

  factory CompilationStats.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CompilationStats.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CompilationStats',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.TableStats'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'fromCache')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'durationUs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'cpuTimeUs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompilationStats clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompilationStats copyWith(void Function(CompilationStats) updates) =>
      super.copyWith((message) => updates(message as CompilationStats))
          as CompilationStats;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompilationStats create() => CompilationStats._();
  @$core.override
  CompilationStats createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CompilationStats getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CompilationStats>(create);
  static CompilationStats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get fromCache => $_getBF(0);
  @$pb.TagNumber(1)
  set fromCache($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFromCache() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromCache() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get durationUs => $_getI64(1);
  @$pb.TagNumber(2)
  set durationUs($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDurationUs() => $_has(1);
  @$pb.TagNumber(2)
  void clearDurationUs() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get cpuTimeUs => $_getI64(2);
  @$pb.TagNumber(3)
  set cpuTimeUs($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCpuTimeUs() => $_has(2);
  @$pb.TagNumber(3)
  void clearCpuTimeUs() => $_clearField(3);
}

class QueryStats extends $pb.GeneratedMessage {
  factory QueryStats({
    $core.Iterable<QueryPhaseStats>? queryPhases,
    CompilationStats? compilation,
    $fixnum.Int64? processCpuTimeUs,
    $core.String? queryPlan,
    $core.String? queryAst,
    $fixnum.Int64? totalDurationUs,
    $fixnum.Int64? totalCpuTimeUs,
  }) {
    final result = create();
    if (queryPhases != null) result.queryPhases.addAll(queryPhases);
    if (compilation != null) result.compilation = compilation;
    if (processCpuTimeUs != null) result.processCpuTimeUs = processCpuTimeUs;
    if (queryPlan != null) result.queryPlan = queryPlan;
    if (queryAst != null) result.queryAst = queryAst;
    if (totalDurationUs != null) result.totalDurationUs = totalDurationUs;
    if (totalCpuTimeUs != null) result.totalCpuTimeUs = totalCpuTimeUs;
    return result;
  }

  QueryStats._();

  factory QueryStats.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QueryStats.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueryStats',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb.TableStats'),
      createEmptyInstance: create)
    ..pPM<QueryPhaseStats>(1, _omitFieldNames ? '' : 'queryPhases',
        subBuilder: QueryPhaseStats.create)
    ..aOM<CompilationStats>(2, _omitFieldNames ? '' : 'compilation',
        subBuilder: CompilationStats.create)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'processCpuTimeUs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, _omitFieldNames ? '' : 'queryPlan')
    ..aOS(5, _omitFieldNames ? '' : 'queryAst')
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'totalDurationUs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'totalCpuTimeUs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryStats clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryStats copyWith(void Function(QueryStats) updates) =>
      super.copyWith((message) => updates(message as QueryStats)) as QueryStats;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryStats create() => QueryStats._();
  @$core.override
  QueryStats createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static QueryStats getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueryStats>(create);
  static QueryStats? _defaultInstance;

  /// A query might have one or more execution phases
  @$pb.TagNumber(1)
  $pb.PbList<QueryPhaseStats> get queryPhases => $_getList(0);

  @$pb.TagNumber(2)
  CompilationStats get compilation => $_getN(1);
  @$pb.TagNumber(2)
  set compilation(CompilationStats value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCompilation() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompilation() => $_clearField(2);
  @$pb.TagNumber(2)
  CompilationStats ensureCompilation() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get processCpuTimeUs => $_getI64(2);
  @$pb.TagNumber(3)
  set processCpuTimeUs($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProcessCpuTimeUs() => $_has(2);
  @$pb.TagNumber(3)
  void clearProcessCpuTimeUs() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get queryPlan => $_getSZ(3);
  @$pb.TagNumber(4)
  set queryPlan($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasQueryPlan() => $_has(3);
  @$pb.TagNumber(4)
  void clearQueryPlan() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get queryAst => $_getSZ(4);
  @$pb.TagNumber(5)
  set queryAst($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasQueryAst() => $_has(4);
  @$pb.TagNumber(5)
  void clearQueryAst() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get totalDurationUs => $_getI64(5);
  @$pb.TagNumber(6)
  set totalDurationUs($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTotalDurationUs() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalDurationUs() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get totalCpuTimeUs => $_getI64(6);
  @$pb.TagNumber(7)
  set totalCpuTimeUs($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTotalCpuTimeUs() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalCpuTimeUs() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

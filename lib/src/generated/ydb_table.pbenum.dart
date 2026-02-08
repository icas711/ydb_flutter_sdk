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

import 'package:protobuf/protobuf.dart' as $pb;

class StoreType extends $pb.ProtobufEnum {
  static const StoreType STORE_TYPE_UNSPECIFIED =
      StoreType._(0, _omitEnumNames ? '' : 'STORE_TYPE_UNSPECIFIED');
  static const StoreType STORE_TYPE_ROW =
      StoreType._(1, _omitEnumNames ? '' : 'STORE_TYPE_ROW');
  static const StoreType STORE_TYPE_COLUMN =
      StoreType._(2, _omitEnumNames ? '' : 'STORE_TYPE_COLUMN');

  static const $core.List<StoreType> values = <StoreType>[
    STORE_TYPE_UNSPECIFIED,
    STORE_TYPE_ROW,
    STORE_TYPE_COLUMN,
  ];

  static final $core.List<StoreType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static StoreType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StoreType._(super.value, super.name);
}

class TableIndexDescription_Status extends $pb.ProtobufEnum {
  static const TableIndexDescription_Status STATUS_UNSPECIFIED =
      TableIndexDescription_Status._(
          0, _omitEnumNames ? '' : 'STATUS_UNSPECIFIED');

  /// Index is ready to use
  static const TableIndexDescription_Status STATUS_READY =
      TableIndexDescription_Status._(1, _omitEnumNames ? '' : 'STATUS_READY');

  /// index is being built
  static const TableIndexDescription_Status STATUS_BUILDING =
      TableIndexDescription_Status._(
          2, _omitEnumNames ? '' : 'STATUS_BUILDING');

  static const $core.List<TableIndexDescription_Status> values =
      <TableIndexDescription_Status>[
    STATUS_UNSPECIFIED,
    STATUS_READY,
    STATUS_BUILDING,
  ];

  static final $core.List<TableIndexDescription_Status?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TableIndexDescription_Status? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TableIndexDescription_Status._(super.value, super.name);
}

class IndexBuildState_State extends $pb.ProtobufEnum {
  static const IndexBuildState_State STATE_UNSPECIFIED =
      IndexBuildState_State._(0, _omitEnumNames ? '' : 'STATE_UNSPECIFIED');
  static const IndexBuildState_State STATE_PREPARING =
      IndexBuildState_State._(1, _omitEnumNames ? '' : 'STATE_PREPARING');
  static const IndexBuildState_State STATE_TRANSFERING_DATA =
      IndexBuildState_State._(
          2, _omitEnumNames ? '' : 'STATE_TRANSFERING_DATA');
  static const IndexBuildState_State STATE_APPLYING =
      IndexBuildState_State._(3, _omitEnumNames ? '' : 'STATE_APPLYING');
  static const IndexBuildState_State STATE_DONE =
      IndexBuildState_State._(4, _omitEnumNames ? '' : 'STATE_DONE');
  static const IndexBuildState_State STATE_CANCELLATION =
      IndexBuildState_State._(5, _omitEnumNames ? '' : 'STATE_CANCELLATION');
  static const IndexBuildState_State STATE_CANCELLED =
      IndexBuildState_State._(6, _omitEnumNames ? '' : 'STATE_CANCELLED');
  static const IndexBuildState_State STATE_REJECTION =
      IndexBuildState_State._(7, _omitEnumNames ? '' : 'STATE_REJECTION');
  static const IndexBuildState_State STATE_REJECTED =
      IndexBuildState_State._(8, _omitEnumNames ? '' : 'STATE_REJECTED');

  static const $core.List<IndexBuildState_State> values =
      <IndexBuildState_State>[
    STATE_UNSPECIFIED,
    STATE_PREPARING,
    STATE_TRANSFERING_DATA,
    STATE_APPLYING,
    STATE_DONE,
    STATE_CANCELLATION,
    STATE_CANCELLED,
    STATE_REJECTION,
    STATE_REJECTED,
  ];

  static final $core.List<IndexBuildState_State?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 8);
  static IndexBuildState_State? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const IndexBuildState_State._(super.value, super.name);
}

class ChangefeedMode_Mode extends $pb.ProtobufEnum {
  static const ChangefeedMode_Mode MODE_UNSPECIFIED =
      ChangefeedMode_Mode._(0, _omitEnumNames ? '' : 'MODE_UNSPECIFIED');

  /// Only the key component of the modified row
  static const ChangefeedMode_Mode MODE_KEYS_ONLY =
      ChangefeedMode_Mode._(1, _omitEnumNames ? '' : 'MODE_KEYS_ONLY');

  /// Updated columns
  static const ChangefeedMode_Mode MODE_UPDATES =
      ChangefeedMode_Mode._(2, _omitEnumNames ? '' : 'MODE_UPDATES');

  /// The entire row, as it appears after it was modified
  static const ChangefeedMode_Mode MODE_NEW_IMAGE =
      ChangefeedMode_Mode._(3, _omitEnumNames ? '' : 'MODE_NEW_IMAGE');

  /// The entire row, as it appeared before it was modified
  static const ChangefeedMode_Mode MODE_OLD_IMAGE =
      ChangefeedMode_Mode._(4, _omitEnumNames ? '' : 'MODE_OLD_IMAGE');

  /// Both new and old images of the row
  static const ChangefeedMode_Mode MODE_NEW_AND_OLD_IMAGES =
      ChangefeedMode_Mode._(5, _omitEnumNames ? '' : 'MODE_NEW_AND_OLD_IMAGES');

  static const $core.List<ChangefeedMode_Mode> values = <ChangefeedMode_Mode>[
    MODE_UNSPECIFIED,
    MODE_KEYS_ONLY,
    MODE_UPDATES,
    MODE_NEW_IMAGE,
    MODE_OLD_IMAGE,
    MODE_NEW_AND_OLD_IMAGES,
  ];

  static final $core.List<ChangefeedMode_Mode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static ChangefeedMode_Mode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ChangefeedMode_Mode._(super.value, super.name);
}

class ChangefeedFormat_Format extends $pb.ProtobufEnum {
  static const ChangefeedFormat_Format FORMAT_UNSPECIFIED =
      ChangefeedFormat_Format._(0, _omitEnumNames ? '' : 'FORMAT_UNSPECIFIED');

  /// Change record in JSON format for common (row oriented) tables
  static const ChangefeedFormat_Format FORMAT_JSON =
      ChangefeedFormat_Format._(1, _omitEnumNames ? '' : 'FORMAT_JSON');

  /// Change record in JSON format for document (DynamoDB-compatible) tables
  static const ChangefeedFormat_Format FORMAT_DYNAMODB_STREAMS_JSON =
      ChangefeedFormat_Format._(
          2, _omitEnumNames ? '' : 'FORMAT_DYNAMODB_STREAMS_JSON');

  /// Debezium-like change record JSON format for common (row oriented) tables
  static const ChangefeedFormat_Format FORMAT_DEBEZIUM_JSON =
      ChangefeedFormat_Format._(
          3, _omitEnumNames ? '' : 'FORMAT_DEBEZIUM_JSON');

  static const $core.List<ChangefeedFormat_Format> values =
      <ChangefeedFormat_Format>[
    FORMAT_UNSPECIFIED,
    FORMAT_JSON,
    FORMAT_DYNAMODB_STREAMS_JSON,
    FORMAT_DEBEZIUM_JSON,
  ];

  static final $core.List<ChangefeedFormat_Format?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ChangefeedFormat_Format? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ChangefeedFormat_Format._(super.value, super.name);
}

class ChangefeedDescription_State extends $pb.ProtobufEnum {
  static const ChangefeedDescription_State STATE_UNSPECIFIED =
      ChangefeedDescription_State._(
          0, _omitEnumNames ? '' : 'STATE_UNSPECIFIED');

  /// Normal state, from this state changefeed can be disabled
  static const ChangefeedDescription_State STATE_ENABLED =
      ChangefeedDescription_State._(1, _omitEnumNames ? '' : 'STATE_ENABLED');

  /// No new change records are generated, but the old ones remain available
  /// From this state changefeed cannot be switched to any other state
  static const ChangefeedDescription_State STATE_DISABLED =
      ChangefeedDescription_State._(2, _omitEnumNames ? '' : 'STATE_DISABLED');

  /// An initial scan is being performed.
  /// After its completion changefeed will switch to the normal state
  static const ChangefeedDescription_State STATE_INITIAL_SCAN =
      ChangefeedDescription_State._(
          3, _omitEnumNames ? '' : 'STATE_INITIAL_SCAN');

  static const $core.List<ChangefeedDescription_State> values =
      <ChangefeedDescription_State>[
    STATE_UNSPECIFIED,
    STATE_ENABLED,
    STATE_DISABLED,
    STATE_INITIAL_SCAN,
  ];

  static final $core.List<ChangefeedDescription_State?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ChangefeedDescription_State? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ChangefeedDescription_State._(super.value, super.name);
}

class ColumnFamilyPolicy_Compression extends $pb.ProtobufEnum {
  static const ColumnFamilyPolicy_Compression COMPRESSION_UNSPECIFIED =
      ColumnFamilyPolicy_Compression._(
          0, _omitEnumNames ? '' : 'COMPRESSION_UNSPECIFIED');
  static const ColumnFamilyPolicy_Compression UNCOMPRESSED =
      ColumnFamilyPolicy_Compression._(1, _omitEnumNames ? '' : 'UNCOMPRESSED');
  static const ColumnFamilyPolicy_Compression COMPRESSED =
      ColumnFamilyPolicy_Compression._(2, _omitEnumNames ? '' : 'COMPRESSED');

  static const $core.List<ColumnFamilyPolicy_Compression> values =
      <ColumnFamilyPolicy_Compression>[
    COMPRESSION_UNSPECIFIED,
    UNCOMPRESSED,
    COMPRESSED,
  ];

  static final $core.List<ColumnFamilyPolicy_Compression?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ColumnFamilyPolicy_Compression? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ColumnFamilyPolicy_Compression._(super.value, super.name);
}

class PartitioningPolicy_AutoPartitioningPolicy extends $pb.ProtobufEnum {
  static const PartitioningPolicy_AutoPartitioningPolicy
      AUTO_PARTITIONING_POLICY_UNSPECIFIED =
      PartitioningPolicy_AutoPartitioningPolicy._(
          0, _omitEnumNames ? '' : 'AUTO_PARTITIONING_POLICY_UNSPECIFIED');
  static const PartitioningPolicy_AutoPartitioningPolicy DISABLED =
      PartitioningPolicy_AutoPartitioningPolicy._(
          1, _omitEnumNames ? '' : 'DISABLED');
  static const PartitioningPolicy_AutoPartitioningPolicy AUTO_SPLIT =
      PartitioningPolicy_AutoPartitioningPolicy._(
          2, _omitEnumNames ? '' : 'AUTO_SPLIT');
  static const PartitioningPolicy_AutoPartitioningPolicy AUTO_SPLIT_MERGE =
      PartitioningPolicy_AutoPartitioningPolicy._(
          3, _omitEnumNames ? '' : 'AUTO_SPLIT_MERGE');

  static const $core.List<PartitioningPolicy_AutoPartitioningPolicy> values =
      <PartitioningPolicy_AutoPartitioningPolicy>[
    AUTO_PARTITIONING_POLICY_UNSPECIFIED,
    DISABLED,
    AUTO_SPLIT,
    AUTO_SPLIT_MERGE,
  ];

  static final $core.List<PartitioningPolicy_AutoPartitioningPolicy?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static PartitioningPolicy_AutoPartitioningPolicy? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PartitioningPolicy_AutoPartitioningPolicy._(super.value, super.name);
}

class ValueSinceUnixEpochModeSettings_Unit extends $pb.ProtobufEnum {
  static const ValueSinceUnixEpochModeSettings_Unit UNIT_UNSPECIFIED =
      ValueSinceUnixEpochModeSettings_Unit._(
          0, _omitEnumNames ? '' : 'UNIT_UNSPECIFIED');
  static const ValueSinceUnixEpochModeSettings_Unit UNIT_SECONDS =
      ValueSinceUnixEpochModeSettings_Unit._(
          1, _omitEnumNames ? '' : 'UNIT_SECONDS');
  static const ValueSinceUnixEpochModeSettings_Unit UNIT_MILLISECONDS =
      ValueSinceUnixEpochModeSettings_Unit._(
          2, _omitEnumNames ? '' : 'UNIT_MILLISECONDS');
  static const ValueSinceUnixEpochModeSettings_Unit UNIT_MICROSECONDS =
      ValueSinceUnixEpochModeSettings_Unit._(
          3, _omitEnumNames ? '' : 'UNIT_MICROSECONDS');
  static const ValueSinceUnixEpochModeSettings_Unit UNIT_NANOSECONDS =
      ValueSinceUnixEpochModeSettings_Unit._(
          4, _omitEnumNames ? '' : 'UNIT_NANOSECONDS');

  static const $core.List<ValueSinceUnixEpochModeSettings_Unit> values =
      <ValueSinceUnixEpochModeSettings_Unit>[
    UNIT_UNSPECIFIED,
    UNIT_SECONDS,
    UNIT_MILLISECONDS,
    UNIT_MICROSECONDS,
    UNIT_NANOSECONDS,
  ];

  static final $core.List<ValueSinceUnixEpochModeSettings_Unit?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ValueSinceUnixEpochModeSettings_Unit? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ValueSinceUnixEpochModeSettings_Unit._(super.value, super.name);
}

class ColumnFamily_Compression extends $pb.ProtobufEnum {
  static const ColumnFamily_Compression COMPRESSION_UNSPECIFIED =
      ColumnFamily_Compression._(
          0, _omitEnumNames ? '' : 'COMPRESSION_UNSPECIFIED');
  static const ColumnFamily_Compression COMPRESSION_NONE =
      ColumnFamily_Compression._(1, _omitEnumNames ? '' : 'COMPRESSION_NONE');
  static const ColumnFamily_Compression COMPRESSION_LZ4 =
      ColumnFamily_Compression._(2, _omitEnumNames ? '' : 'COMPRESSION_LZ4');

  static const $core.List<ColumnFamily_Compression> values =
      <ColumnFamily_Compression>[
    COMPRESSION_UNSPECIFIED,
    COMPRESSION_NONE,
    COMPRESSION_LZ4,
  ];

  static final $core.List<ColumnFamily_Compression?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ColumnFamily_Compression? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ColumnFamily_Compression._(super.value, super.name);
}

class QueryStatsCollection_Mode extends $pb.ProtobufEnum {
  static const QueryStatsCollection_Mode STATS_COLLECTION_UNSPECIFIED =
      QueryStatsCollection_Mode._(
          0, _omitEnumNames ? '' : 'STATS_COLLECTION_UNSPECIFIED');
  static const QueryStatsCollection_Mode STATS_COLLECTION_NONE =
      QueryStatsCollection_Mode._(
          1, _omitEnumNames ? '' : 'STATS_COLLECTION_NONE');
  static const QueryStatsCollection_Mode STATS_COLLECTION_BASIC =
      QueryStatsCollection_Mode._(
          2, _omitEnumNames ? '' : 'STATS_COLLECTION_BASIC');
  static const QueryStatsCollection_Mode STATS_COLLECTION_FULL =
      QueryStatsCollection_Mode._(
          3, _omitEnumNames ? '' : 'STATS_COLLECTION_FULL');
  static const QueryStatsCollection_Mode STATS_COLLECTION_PROFILE =
      QueryStatsCollection_Mode._(
          4, _omitEnumNames ? '' : 'STATS_COLLECTION_PROFILE');

  static const $core.List<QueryStatsCollection_Mode> values =
      <QueryStatsCollection_Mode>[
    STATS_COLLECTION_UNSPECIFIED,
    STATS_COLLECTION_NONE,
    STATS_COLLECTION_BASIC,
    STATS_COLLECTION_FULL,
    STATS_COLLECTION_PROFILE,
  ];

  static final $core.List<QueryStatsCollection_Mode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static QueryStatsCollection_Mode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const QueryStatsCollection_Mode._(super.value, super.name);
}

class KeepAliveResult_SessionStatus extends $pb.ProtobufEnum {
  static const KeepAliveResult_SessionStatus SESSION_STATUS_UNSPECIFIED =
      KeepAliveResult_SessionStatus._(
          0, _omitEnumNames ? '' : 'SESSION_STATUS_UNSPECIFIED');
  static const KeepAliveResult_SessionStatus SESSION_STATUS_READY =
      KeepAliveResult_SessionStatus._(
          1, _omitEnumNames ? '' : 'SESSION_STATUS_READY');
  static const KeepAliveResult_SessionStatus SESSION_STATUS_BUSY =
      KeepAliveResult_SessionStatus._(
          2, _omitEnumNames ? '' : 'SESSION_STATUS_BUSY');

  static const $core.List<KeepAliveResult_SessionStatus> values =
      <KeepAliveResult_SessionStatus>[
    SESSION_STATUS_UNSPECIFIED,
    SESSION_STATUS_READY,
    SESSION_STATUS_BUSY,
  ];

  static final $core.List<KeepAliveResult_SessionStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static KeepAliveResult_SessionStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const KeepAliveResult_SessionStatus._(super.value, super.name);
}

class ExecuteScanQueryRequest_Mode extends $pb.ProtobufEnum {
  static const ExecuteScanQueryRequest_Mode MODE_UNSPECIFIED =
      ExecuteScanQueryRequest_Mode._(
          0, _omitEnumNames ? '' : 'MODE_UNSPECIFIED');
  static const ExecuteScanQueryRequest_Mode MODE_EXPLAIN =
      ExecuteScanQueryRequest_Mode._(1, _omitEnumNames ? '' : 'MODE_EXPLAIN');

  /// MODE_PREPARE = 2;
  static const ExecuteScanQueryRequest_Mode MODE_EXEC =
      ExecuteScanQueryRequest_Mode._(3, _omitEnumNames ? '' : 'MODE_EXEC');

  static const $core.List<ExecuteScanQueryRequest_Mode> values =
      <ExecuteScanQueryRequest_Mode>[
    MODE_UNSPECIFIED,
    MODE_EXPLAIN,
    MODE_EXEC,
  ];

  static final $core.List<ExecuteScanQueryRequest_Mode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ExecuteScanQueryRequest_Mode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ExecuteScanQueryRequest_Mode._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');

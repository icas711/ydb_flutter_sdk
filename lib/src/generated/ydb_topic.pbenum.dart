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

import 'package:protobuf/protobuf.dart' as $pb;

class Codec extends $pb.ProtobufEnum {
  static const Codec CODEC_UNSPECIFIED =
      Codec._(0, _omitEnumNames ? '' : 'CODEC_UNSPECIFIED');
  static const Codec CODEC_RAW = Codec._(1, _omitEnumNames ? '' : 'CODEC_RAW');
  static const Codec CODEC_GZIP =
      Codec._(2, _omitEnumNames ? '' : 'CODEC_GZIP');
  static const Codec CODEC_LZOP =
      Codec._(3, _omitEnumNames ? '' : 'CODEC_LZOP');
  static const Codec CODEC_ZSTD =
      Codec._(4, _omitEnumNames ? '' : 'CODEC_ZSTD');

  /// User-defined codecs from 10000 to 19999
  static const Codec CODEC_CUSTOM =
      Codec._(10000, _omitEnumNames ? '' : 'CODEC_CUSTOM');

  static const $core.List<Codec> values = <Codec>[
    CODEC_UNSPECIFIED,
    CODEC_RAW,
    CODEC_GZIP,
    CODEC_LZOP,
    CODEC_ZSTD,
    CODEC_CUSTOM,
  ];

  static final $core.Map<$core.int, Codec> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Codec? valueOf($core.int value) => _byValue[value];

  const Codec._(super.value, super.name);
}

class AutoPartitioningStrategy extends $pb.ProtobufEnum {
  /// The auto partitioning algorithm is not specified. The default value will be used.
  static const AutoPartitioningStrategy AUTO_PARTITIONING_STRATEGY_UNSPECIFIED =
      AutoPartitioningStrategy._(
          0, _omitEnumNames ? '' : 'AUTO_PARTITIONING_STRATEGY_UNSPECIFIED');

  /// The auto partitioning is disabled.
  static const AutoPartitioningStrategy AUTO_PARTITIONING_STRATEGY_DISABLED =
      AutoPartitioningStrategy._(
          1, _omitEnumNames ? '' : 'AUTO_PARTITIONING_STRATEGY_DISABLED');

  /// The auto partitioning algorithm will increase partitions count depending on the load characteristics.
  /// The auto partitioning algorithm will never decrease the number of partitions.
  static const AutoPartitioningStrategy AUTO_PARTITIONING_STRATEGY_SCALE_UP =
      AutoPartitioningStrategy._(
          2, _omitEnumNames ? '' : 'AUTO_PARTITIONING_STRATEGY_SCALE_UP');

  /// The auto partitioning algorithm will both increase and decrease partitions count depending on the load characteristics.
  static const AutoPartitioningStrategy
      AUTO_PARTITIONING_STRATEGY_SCALE_UP_AND_DOWN = AutoPartitioningStrategy._(
          3,
          _omitEnumNames ? '' : 'AUTO_PARTITIONING_STRATEGY_SCALE_UP_AND_DOWN');

  /// The auto partitioning is paused.
  static const AutoPartitioningStrategy AUTO_PARTITIONING_STRATEGY_PAUSED =
      AutoPartitioningStrategy._(
          4, _omitEnumNames ? '' : 'AUTO_PARTITIONING_STRATEGY_PAUSED');

  static const $core.List<AutoPartitioningStrategy> values =
      <AutoPartitioningStrategy>[
    AUTO_PARTITIONING_STRATEGY_UNSPECIFIED,
    AUTO_PARTITIONING_STRATEGY_DISABLED,
    AUTO_PARTITIONING_STRATEGY_SCALE_UP,
    AUTO_PARTITIONING_STRATEGY_SCALE_UP_AND_DOWN,
    AUTO_PARTITIONING_STRATEGY_PAUSED,
  ];

  static final $core.List<AutoPartitioningStrategy?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static AutoPartitioningStrategy? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AutoPartitioningStrategy._(super.value, super.name);
}

/// Metering mode specifies the method used to determine consumption of resources by the topic.
/// This settings will have an effect only in a serverless database.
class MeteringMode extends $pb.ProtobufEnum {
  /// Use default
  static const MeteringMode METERING_MODE_UNSPECIFIED =
      MeteringMode._(0, _omitEnumNames ? '' : 'METERING_MODE_UNSPECIFIED');

  /// Metering based on resource reservation
  static const MeteringMode METERING_MODE_RESERVED_CAPACITY = MeteringMode._(
      1, _omitEnumNames ? '' : 'METERING_MODE_RESERVED_CAPACITY');

  /// Metering based on actual consumption. Default.
  static const MeteringMode METERING_MODE_REQUEST_UNITS =
      MeteringMode._(2, _omitEnumNames ? '' : 'METERING_MODE_REQUEST_UNITS');

  static const $core.List<MeteringMode> values = <MeteringMode>[
    METERING_MODE_UNSPECIFIED,
    METERING_MODE_RESERVED_CAPACITY,
    METERING_MODE_REQUEST_UNITS,
  ];

  static final $core.List<MeteringMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static MeteringMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MeteringMode._(super.value, super.name);
}

class StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason
    extends $pb.ProtobufEnum {
  static const StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason
      REASON_UNSPECIFIED =
      StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason._(
          0, _omitEnumNames ? '' : 'REASON_UNSPECIFIED');
  static const StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason
      REASON_ALREADY_WRITTEN =
      StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason._(
          1, _omitEnumNames ? '' : 'REASON_ALREADY_WRITTEN');

  static const $core
      .List<StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason>
      values = <StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason>[
    REASON_UNSPECIFIED,
    REASON_ALREADY_WRITTEN,
  ];

  static final $core
      .List<StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason?>
      _byValue = $pb.ProtobufEnum.$_initByValueList(values, 1);
  static StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason? valueOf(
          $core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StreamWriteMessage_WriteResponse_WriteAck_Skipped_Reason._(
      super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');

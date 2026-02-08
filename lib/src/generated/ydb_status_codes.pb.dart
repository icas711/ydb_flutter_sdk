// This is a generated file - do not edit.
//
// Generated from ydb_status_codes.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ydb_status_codes.pbenum.dart';

class StatusIds extends $pb.GeneratedMessage {
  factory StatusIds() => create();

  StatusIds._();

  factory StatusIds.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StatusIds.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StatusIds',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Ydb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StatusIds clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StatusIds copyWith(void Function(StatusIds) updates) =>
      super.copyWith((message) => updates(message as StatusIds)) as StatusIds;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusIds create() => StatusIds._();
  @$core.override
  StatusIds createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StatusIds getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusIds>(create);
  static StatusIds? _defaultInstance;
}

const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

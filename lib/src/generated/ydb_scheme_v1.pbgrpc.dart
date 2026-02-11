// Hand-written gRPC stubs for YDB Scheme Service.
// Mirrors the pattern from generated ydb_table_v1.pbgrpc.dart.
//
// Based on proto definition: Ydb.Scheme.V1.SchemeService

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ydb_scheme.pb.dart' as $s;

export 'ydb_scheme.pb.dart';

/// Client for Ydb.Scheme.V1.SchemeService
@$pb.GrpcServiceName('Ydb.Scheme.V1.SchemeService')
class SchemeServiceClient extends $grpc.Client {
  SchemeServiceClient(super.channel, {super.options, super.interceptors});

  /// Make a directory.
  $grpc.ResponseFuture<$s.MakeDirectoryResponse> makeDirectory(
    $s.MakeDirectoryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$makeDirectory, request, options: options);
  }

  /// Remove a directory.
  $grpc.ResponseFuture<$s.RemoveDirectoryResponse> removeDirectory(
    $s.RemoveDirectoryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$removeDirectory, request, options: options);
  }

  /// List directory contents.
  $grpc.ResponseFuture<$s.ListDirectoryResponse> listDirectory(
    $s.ListDirectoryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listDirectory, request, options: options);
  }

  /// Describe a path (get metadata).
  $grpc.ResponseFuture<$s.DescribePathResponse> describePath(
    $s.DescribePathRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$describePath, request, options: options);
  }

  // method descriptors

  static final _$makeDirectory =
      $grpc.ClientMethod<$s.MakeDirectoryRequest, $s.MakeDirectoryResponse>(
          '/Ydb.Scheme.V1.SchemeService/MakeDirectory',
          ($s.MakeDirectoryRequest value) => value.writeToBuffer(),
          $s.MakeDirectoryResponse.fromBuffer);

  static final _$removeDirectory =
      $grpc.ClientMethod<$s.RemoveDirectoryRequest, $s.RemoveDirectoryResponse>(
          '/Ydb.Scheme.V1.SchemeService/RemoveDirectory',
          ($s.RemoveDirectoryRequest value) => value.writeToBuffer(),
          $s.RemoveDirectoryResponse.fromBuffer);

  static final _$listDirectory =
      $grpc.ClientMethod<$s.ListDirectoryRequest, $s.ListDirectoryResponse>(
          '/Ydb.Scheme.V1.SchemeService/ListDirectory',
          ($s.ListDirectoryRequest value) => value.writeToBuffer(),
          $s.ListDirectoryResponse.fromBuffer);

  static final _$describePath =
      $grpc.ClientMethod<$s.DescribePathRequest, $s.DescribePathResponse>(
          '/Ydb.Scheme.V1.SchemeService/DescribePath',
          ($s.DescribePathRequest value) => value.writeToBuffer(),
          $s.DescribePathResponse.fromBuffer);
}

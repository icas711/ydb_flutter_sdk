// This is a generated file - do not edit.
//
// Generated from ydb_query_v1.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ydb_operation.pb.dart' as $1;
import 'ydb_query.pb.dart' as $0;

export 'ydb_query_v1.pb.dart';

@$pb.GrpcServiceName('Ydb.Query.V1.QueryService')
class QueryServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  QueryServiceClient(super.channel, {super.options, super.interceptors});

  /// Sessions are basic primitives for communicating with YDB Query Service. The are similar to
  /// connections for classic relational DBs. Sessions serve three main purposes:
  /// 1. Provide a flow control for DB requests with limited number of active channels.
  /// 2. Distribute load evenly across multiple DB nodes.
  /// 3. Store state for volatile stateful operations, such as short-living transactions.
  $grpc.ResponseFuture<$0.CreateSessionResponse> createSession(
    $0.CreateSessionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteSessionResponse> deleteSession(
    $0.DeleteSessionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteSession, request, options: options);
  }

  $grpc.ResponseStream<$0.SessionState> attachSession(
    $0.AttachSessionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$attachSession, $async.Stream.fromIterable([request]),
        options: options);
  }

  /// Short-living transactions allow transactional execution of several queries, including support
  /// for interactive transactions. Transaction control can be implemented via flags in ExecuteQuery
  /// call (recommended), or via explicit calls to Begin/Commit/RollbackTransaction.
  $grpc.ResponseFuture<$0.BeginTransactionResponse> beginTransaction(
    $0.BeginTransactionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$beginTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommitTransactionResponse> commitTransaction(
    $0.CommitTransactionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$commitTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$0.RollbackTransactionResponse> rollbackTransaction(
    $0.RollbackTransactionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$rollbackTransaction, request, options: options);
  }

  /// Execute interactive query in a specified short-living transaction.
  /// YDB query can contain DML, DDL and DCL statements. Supported mix of different statement types depends
  /// on the chosen transaction type.
  /// In case of error, including transport errors such as interrupted stream, whole transaction
  /// needs to be retried. For non-idempotent transaction, a custom client logic is required to
  /// retry conditionally retriable statuses, when transaction execution state is unknown.
  $grpc.ResponseStream<$0.ExecuteQueryResponsePart> executeQuery(
    $0.ExecuteQueryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$executeQuery, $async.Stream.fromIterable([request]),
        options: options);
  }

  /// Execute long-running script.
  /// YDB scripts can contain all type of statements, including TCL statements. This way you can execute multiple
  /// transactions in a single YDB script.
  /// ExecuteScript call returns long-running Ydb.Operation object with:
  ///   operation.metadata = ExecuteScriptMetadata
  ///   operation.result = Empty
  /// Script execution metadata contains all information about current execution state, including
  /// execution_id, execution statistics and result sets info.
  /// You can use standard operation methods such as Get/Cancel/Forget/ListOperations to work with script executions.
  /// Script can be executed as persistent, in which case all execution information and results will be stored
  /// persistently and available after successful or unsuccessful execution.
  $grpc.ResponseFuture<$1.Operation> executeScript(
    $0.ExecuteScriptRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$executeScript, request, options: options);
  }

  /// Fetch results for script execution using fetch_token for continuation.
  /// For script with multiple result sets, parts of different results sets are interleaved in responses.
  /// For persistent scripts, you can fetch results in specific position of specific result set using
  /// position instead of fetch_token.
  $grpc.ResponseFuture<$0.FetchScriptResultsResponse> fetchScriptResults(
    $0.FetchScriptResultsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$fetchScriptResults, request, options: options);
  }

  // method descriptors

  static final _$createSession =
      $grpc.ClientMethod<$0.CreateSessionRequest, $0.CreateSessionResponse>(
          '/Ydb.Query.V1.QueryService/CreateSession',
          ($0.CreateSessionRequest value) => value.writeToBuffer(),
          $0.CreateSessionResponse.fromBuffer);
  static final _$deleteSession =
      $grpc.ClientMethod<$0.DeleteSessionRequest, $0.DeleteSessionResponse>(
          '/Ydb.Query.V1.QueryService/DeleteSession',
          ($0.DeleteSessionRequest value) => value.writeToBuffer(),
          $0.DeleteSessionResponse.fromBuffer);
  static final _$attachSession =
      $grpc.ClientMethod<$0.AttachSessionRequest, $0.SessionState>(
          '/Ydb.Query.V1.QueryService/AttachSession',
          ($0.AttachSessionRequest value) => value.writeToBuffer(),
          $0.SessionState.fromBuffer);
  static final _$beginTransaction = $grpc.ClientMethod<
          $0.BeginTransactionRequest, $0.BeginTransactionResponse>(
      '/Ydb.Query.V1.QueryService/BeginTransaction',
      ($0.BeginTransactionRequest value) => value.writeToBuffer(),
      $0.BeginTransactionResponse.fromBuffer);
  static final _$commitTransaction = $grpc.ClientMethod<
          $0.CommitTransactionRequest, $0.CommitTransactionResponse>(
      '/Ydb.Query.V1.QueryService/CommitTransaction',
      ($0.CommitTransactionRequest value) => value.writeToBuffer(),
      $0.CommitTransactionResponse.fromBuffer);
  static final _$rollbackTransaction = $grpc.ClientMethod<
          $0.RollbackTransactionRequest, $0.RollbackTransactionResponse>(
      '/Ydb.Query.V1.QueryService/RollbackTransaction',
      ($0.RollbackTransactionRequest value) => value.writeToBuffer(),
      $0.RollbackTransactionResponse.fromBuffer);
  static final _$executeQuery =
      $grpc.ClientMethod<$0.ExecuteQueryRequest, $0.ExecuteQueryResponsePart>(
          '/Ydb.Query.V1.QueryService/ExecuteQuery',
          ($0.ExecuteQueryRequest value) => value.writeToBuffer(),
          $0.ExecuteQueryResponsePart.fromBuffer);
  static final _$executeScript =
      $grpc.ClientMethod<$0.ExecuteScriptRequest, $1.Operation>(
          '/Ydb.Query.V1.QueryService/ExecuteScript',
          ($0.ExecuteScriptRequest value) => value.writeToBuffer(),
          $1.Operation.fromBuffer);
  static final _$fetchScriptResults = $grpc.ClientMethod<
          $0.FetchScriptResultsRequest, $0.FetchScriptResultsResponse>(
      '/Ydb.Query.V1.QueryService/FetchScriptResults',
      ($0.FetchScriptResultsRequest value) => value.writeToBuffer(),
      $0.FetchScriptResultsResponse.fromBuffer);
}

@$pb.GrpcServiceName('Ydb.Query.V1.QueryService')
abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'Ydb.Query.V1.QueryService';

  QueryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.CreateSessionRequest, $0.CreateSessionResponse>(
            'CreateSession',
            createSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateSessionRequest.fromBuffer(value),
            ($0.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteSessionRequest, $0.DeleteSessionResponse>(
            'DeleteSession',
            deleteSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteSessionRequest.fromBuffer(value),
            ($0.DeleteSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AttachSessionRequest, $0.SessionState>(
        'AttachSession',
        attachSession_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AttachSessionRequest.fromBuffer(value),
        ($0.SessionState value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BeginTransactionRequest,
            $0.BeginTransactionResponse>(
        'BeginTransaction',
        beginTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.BeginTransactionRequest.fromBuffer(value),
        ($0.BeginTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommitTransactionRequest,
            $0.CommitTransactionResponse>(
        'CommitTransaction',
        commitTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CommitTransactionRequest.fromBuffer(value),
        ($0.CommitTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RollbackTransactionRequest,
            $0.RollbackTransactionResponse>(
        'RollbackTransaction',
        rollbackTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RollbackTransactionRequest.fromBuffer(value),
        ($0.RollbackTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExecuteQueryRequest,
            $0.ExecuteQueryResponsePart>(
        'ExecuteQuery',
        executeQuery_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.ExecuteQueryRequest.fromBuffer(value),
        ($0.ExecuteQueryResponsePart value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExecuteScriptRequest, $1.Operation>(
        'ExecuteScript',
        executeScript_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ExecuteScriptRequest.fromBuffer(value),
        ($1.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchScriptResultsRequest,
            $0.FetchScriptResultsResponse>(
        'FetchScriptResults',
        fetchScriptResults_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.FetchScriptResultsRequest.fromBuffer(value),
        ($0.FetchScriptResultsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateSessionResponse> createSession_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CreateSessionRequest> $request) async {
    return createSession($call, await $request);
  }

  $async.Future<$0.CreateSessionResponse> createSession(
      $grpc.ServiceCall call, $0.CreateSessionRequest request);

  $async.Future<$0.DeleteSessionResponse> deleteSession_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.DeleteSessionRequest> $request) async {
    return deleteSession($call, await $request);
  }

  $async.Future<$0.DeleteSessionResponse> deleteSession(
      $grpc.ServiceCall call, $0.DeleteSessionRequest request);

  $async.Stream<$0.SessionState> attachSession_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AttachSessionRequest> $request) async* {
    yield* attachSession($call, await $request);
  }

  $async.Stream<$0.SessionState> attachSession(
      $grpc.ServiceCall call, $0.AttachSessionRequest request);

  $async.Future<$0.BeginTransactionResponse> beginTransaction_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.BeginTransactionRequest> $request) async {
    return beginTransaction($call, await $request);
  }

  $async.Future<$0.BeginTransactionResponse> beginTransaction(
      $grpc.ServiceCall call, $0.BeginTransactionRequest request);

  $async.Future<$0.CommitTransactionResponse> commitTransaction_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CommitTransactionRequest> $request) async {
    return commitTransaction($call, await $request);
  }

  $async.Future<$0.CommitTransactionResponse> commitTransaction(
      $grpc.ServiceCall call, $0.CommitTransactionRequest request);

  $async.Future<$0.RollbackTransactionResponse> rollbackTransaction_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.RollbackTransactionRequest> $request) async {
    return rollbackTransaction($call, await $request);
  }

  $async.Future<$0.RollbackTransactionResponse> rollbackTransaction(
      $grpc.ServiceCall call, $0.RollbackTransactionRequest request);

  $async.Stream<$0.ExecuteQueryResponsePart> executeQuery_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ExecuteQueryRequest> $request) async* {
    yield* executeQuery($call, await $request);
  }

  $async.Stream<$0.ExecuteQueryResponsePart> executeQuery(
      $grpc.ServiceCall call, $0.ExecuteQueryRequest request);

  $async.Future<$1.Operation> executeScript_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ExecuteScriptRequest> $request) async {
    return executeScript($call, await $request);
  }

  $async.Future<$1.Operation> executeScript(
      $grpc.ServiceCall call, $0.ExecuteScriptRequest request);

  $async.Future<$0.FetchScriptResultsResponse> fetchScriptResults_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.FetchScriptResultsRequest> $request) async {
    return fetchScriptResults($call, await $request);
  }

  $async.Future<$0.FetchScriptResultsResponse> fetchScriptResults(
      $grpc.ServiceCall call, $0.FetchScriptResultsRequest request);
}

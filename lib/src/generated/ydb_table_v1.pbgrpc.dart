// This is a generated file - do not edit.
//
// Generated from ydb_table_v1.proto.

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

import 'ydb_table.pb.dart' as $0;

export 'ydb_table_v1.pb.dart';

@$pb.GrpcServiceName('Ydb.Table.V1.TableService')
class TableServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  TableServiceClient(super.channel, {super.options, super.interceptors});

  /// Create new session. Implicit session creation is forbidden,
  /// so user must create new session before execute any query,
  /// otherwise BAD_SESSION status will be returned.
  /// Simultaneous execution of requests are forbiden.
  /// Sessions are volatile, can be invalidated by server, for example in case
  /// of fatal errors. All requests with this session will fail with BAD_SESSION status.
  /// So, client must be able to handle BAD_SESSION status.
  $grpc.ResponseFuture<$0.CreateSessionResponse> createSession(
    $0.CreateSessionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  /// Ends a session, releasing server resources associated with it.
  $grpc.ResponseFuture<$0.DeleteSessionResponse> deleteSession(
    $0.DeleteSessionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteSession, request, options: options);
  }

  /// Idle sessions can be kept alive by calling KeepAlive periodically.
  $grpc.ResponseFuture<$0.KeepAliveResponse> keepAlive(
    $0.KeepAliveRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$keepAlive, request, options: options);
  }

  /// Creates new table.
  $grpc.ResponseFuture<$0.CreateTableResponse> createTable(
    $0.CreateTableRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createTable, request, options: options);
  }

  /// Drop table.
  $grpc.ResponseFuture<$0.DropTableResponse> dropTable(
    $0.DropTableRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$dropTable, request, options: options);
  }

  /// Modifies schema of given table.
  $grpc.ResponseFuture<$0.AlterTableResponse> alterTable(
    $0.AlterTableRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$alterTable, request, options: options);
  }

  /// Creates copy of given table.
  $grpc.ResponseFuture<$0.CopyTableResponse> copyTable(
    $0.CopyTableRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$copyTable, request, options: options);
  }

  /// Creates consistent copy of given tables.
  $grpc.ResponseFuture<$0.CopyTablesResponse> copyTables(
    $0.CopyTablesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$copyTables, request, options: options);
  }

  /// Creates consistent move of given tables.
  $grpc.ResponseFuture<$0.RenameTablesResponse> renameTables(
    $0.RenameTablesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$renameTables, request, options: options);
  }

  /// Returns information about given table (metadata).
  $grpc.ResponseFuture<$0.DescribeTableResponse> describeTable(
    $0.DescribeTableRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$describeTable, request, options: options);
  }

  /// Explains data query.
  /// SessionId of previously created session must be provided.
  $grpc.ResponseFuture<$0.ExplainDataQueryResponse> explainDataQuery(
    $0.ExplainDataQueryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$explainDataQuery, request, options: options);
  }

  /// Prepares data query, returns query id.
  /// SessionId of previously created session must be provided.
  $grpc.ResponseFuture<$0.PrepareDataQueryResponse> prepareDataQuery(
    $0.PrepareDataQueryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$prepareDataQuery, request, options: options);
  }

  /// Executes data query.
  /// SessionId of previously created session must be provided.
  $grpc.ResponseFuture<$0.ExecuteDataQueryResponse> executeDataQuery(
    $0.ExecuteDataQueryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$executeDataQuery, request, options: options);
  }

  /// Executes scheme query.
  /// SessionId of previously created session must be provided.
  $grpc.ResponseFuture<$0.ExecuteSchemeQueryResponse> executeSchemeQuery(
    $0.ExecuteSchemeQueryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$executeSchemeQuery, request, options: options);
  }

  /// Begins new transaction.
  $grpc.ResponseFuture<$0.BeginTransactionResponse> beginTransaction(
    $0.BeginTransactionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$beginTransaction, request, options: options);
  }

  /// Commits specified active transaction.
  $grpc.ResponseFuture<$0.CommitTransactionResponse> commitTransaction(
    $0.CommitTransactionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$commitTransaction, request, options: options);
  }

  /// Performs a rollback of the specified active transaction.
  $grpc.ResponseFuture<$0.RollbackTransactionResponse> rollbackTransaction(
    $0.RollbackTransactionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$rollbackTransaction, request, options: options);
  }

  /// Describe supported table options.
  $grpc.ResponseFuture<$0.DescribeTableOptionsResponse> describeTableOptions(
    $0.DescribeTableOptionsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$describeTableOptions, request, options: options);
  }

  /// Streaming read table
  $grpc.ResponseStream<$0.ReadTableResponse> streamReadTable(
    $0.ReadTableRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$streamReadTable, $async.Stream.fromIterable([request]),
        options: options);
  }

  /// Reads specified keys non-transactionally from a single table
  $grpc.ResponseFuture<$0.ReadRowsResponse> readRows(
    $0.ReadRowsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$readRows, request, options: options);
  }

  /// Upserts a batch of rows non-transactionally.
  /// Returns success only when all rows were successfully upserted. In case of an error some rows might
  /// be upserted and some might not.
  $grpc.ResponseFuture<$0.BulkUpsertResponse> bulkUpsert(
    $0.BulkUpsertRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$bulkUpsert, request, options: options);
  }

  /// Executes scan query with streaming result.
  $grpc.ResponseStream<$0.ExecuteScanQueryPartialResponse>
      streamExecuteScanQuery(
    $0.ExecuteScanQueryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$streamExecuteScanQuery, $async.Stream.fromIterable([request]),
        options: options);
  }

  // method descriptors

  static final _$createSession =
      $grpc.ClientMethod<$0.CreateSessionRequest, $0.CreateSessionResponse>(
          '/Ydb.Table.V1.TableService/CreateSession',
          ($0.CreateSessionRequest value) => value.writeToBuffer(),
          $0.CreateSessionResponse.fromBuffer);
  static final _$deleteSession =
      $grpc.ClientMethod<$0.DeleteSessionRequest, $0.DeleteSessionResponse>(
          '/Ydb.Table.V1.TableService/DeleteSession',
          ($0.DeleteSessionRequest value) => value.writeToBuffer(),
          $0.DeleteSessionResponse.fromBuffer);
  static final _$keepAlive =
      $grpc.ClientMethod<$0.KeepAliveRequest, $0.KeepAliveResponse>(
          '/Ydb.Table.V1.TableService/KeepAlive',
          ($0.KeepAliveRequest value) => value.writeToBuffer(),
          $0.KeepAliveResponse.fromBuffer);
  static final _$createTable =
      $grpc.ClientMethod<$0.CreateTableRequest, $0.CreateTableResponse>(
          '/Ydb.Table.V1.TableService/CreateTable',
          ($0.CreateTableRequest value) => value.writeToBuffer(),
          $0.CreateTableResponse.fromBuffer);
  static final _$dropTable =
      $grpc.ClientMethod<$0.DropTableRequest, $0.DropTableResponse>(
          '/Ydb.Table.V1.TableService/DropTable',
          ($0.DropTableRequest value) => value.writeToBuffer(),
          $0.DropTableResponse.fromBuffer);
  static final _$alterTable =
      $grpc.ClientMethod<$0.AlterTableRequest, $0.AlterTableResponse>(
          '/Ydb.Table.V1.TableService/AlterTable',
          ($0.AlterTableRequest value) => value.writeToBuffer(),
          $0.AlterTableResponse.fromBuffer);
  static final _$copyTable =
      $grpc.ClientMethod<$0.CopyTableRequest, $0.CopyTableResponse>(
          '/Ydb.Table.V1.TableService/CopyTable',
          ($0.CopyTableRequest value) => value.writeToBuffer(),
          $0.CopyTableResponse.fromBuffer);
  static final _$copyTables =
      $grpc.ClientMethod<$0.CopyTablesRequest, $0.CopyTablesResponse>(
          '/Ydb.Table.V1.TableService/CopyTables',
          ($0.CopyTablesRequest value) => value.writeToBuffer(),
          $0.CopyTablesResponse.fromBuffer);
  static final _$renameTables =
      $grpc.ClientMethod<$0.RenameTablesRequest, $0.RenameTablesResponse>(
          '/Ydb.Table.V1.TableService/RenameTables',
          ($0.RenameTablesRequest value) => value.writeToBuffer(),
          $0.RenameTablesResponse.fromBuffer);
  static final _$describeTable =
      $grpc.ClientMethod<$0.DescribeTableRequest, $0.DescribeTableResponse>(
          '/Ydb.Table.V1.TableService/DescribeTable',
          ($0.DescribeTableRequest value) => value.writeToBuffer(),
          $0.DescribeTableResponse.fromBuffer);
  static final _$explainDataQuery = $grpc.ClientMethod<
          $0.ExplainDataQueryRequest, $0.ExplainDataQueryResponse>(
      '/Ydb.Table.V1.TableService/ExplainDataQuery',
      ($0.ExplainDataQueryRequest value) => value.writeToBuffer(),
      $0.ExplainDataQueryResponse.fromBuffer);
  static final _$prepareDataQuery = $grpc.ClientMethod<
          $0.PrepareDataQueryRequest, $0.PrepareDataQueryResponse>(
      '/Ydb.Table.V1.TableService/PrepareDataQuery',
      ($0.PrepareDataQueryRequest value) => value.writeToBuffer(),
      $0.PrepareDataQueryResponse.fromBuffer);
  static final _$executeDataQuery = $grpc.ClientMethod<
          $0.ExecuteDataQueryRequest, $0.ExecuteDataQueryResponse>(
      '/Ydb.Table.V1.TableService/ExecuteDataQuery',
      ($0.ExecuteDataQueryRequest value) => value.writeToBuffer(),
      $0.ExecuteDataQueryResponse.fromBuffer);
  static final _$executeSchemeQuery = $grpc.ClientMethod<
          $0.ExecuteSchemeQueryRequest, $0.ExecuteSchemeQueryResponse>(
      '/Ydb.Table.V1.TableService/ExecuteSchemeQuery',
      ($0.ExecuteSchemeQueryRequest value) => value.writeToBuffer(),
      $0.ExecuteSchemeQueryResponse.fromBuffer);
  static final _$beginTransaction = $grpc.ClientMethod<
          $0.BeginTransactionRequest, $0.BeginTransactionResponse>(
      '/Ydb.Table.V1.TableService/BeginTransaction',
      ($0.BeginTransactionRequest value) => value.writeToBuffer(),
      $0.BeginTransactionResponse.fromBuffer);
  static final _$commitTransaction = $grpc.ClientMethod<
          $0.CommitTransactionRequest, $0.CommitTransactionResponse>(
      '/Ydb.Table.V1.TableService/CommitTransaction',
      ($0.CommitTransactionRequest value) => value.writeToBuffer(),
      $0.CommitTransactionResponse.fromBuffer);
  static final _$rollbackTransaction = $grpc.ClientMethod<
          $0.RollbackTransactionRequest, $0.RollbackTransactionResponse>(
      '/Ydb.Table.V1.TableService/RollbackTransaction',
      ($0.RollbackTransactionRequest value) => value.writeToBuffer(),
      $0.RollbackTransactionResponse.fromBuffer);
  static final _$describeTableOptions = $grpc.ClientMethod<
          $0.DescribeTableOptionsRequest, $0.DescribeTableOptionsResponse>(
      '/Ydb.Table.V1.TableService/DescribeTableOptions',
      ($0.DescribeTableOptionsRequest value) => value.writeToBuffer(),
      $0.DescribeTableOptionsResponse.fromBuffer);
  static final _$streamReadTable =
      $grpc.ClientMethod<$0.ReadTableRequest, $0.ReadTableResponse>(
          '/Ydb.Table.V1.TableService/StreamReadTable',
          ($0.ReadTableRequest value) => value.writeToBuffer(),
          $0.ReadTableResponse.fromBuffer);
  static final _$readRows =
      $grpc.ClientMethod<$0.ReadRowsRequest, $0.ReadRowsResponse>(
          '/Ydb.Table.V1.TableService/ReadRows',
          ($0.ReadRowsRequest value) => value.writeToBuffer(),
          $0.ReadRowsResponse.fromBuffer);
  static final _$bulkUpsert =
      $grpc.ClientMethod<$0.BulkUpsertRequest, $0.BulkUpsertResponse>(
          '/Ydb.Table.V1.TableService/BulkUpsert',
          ($0.BulkUpsertRequest value) => value.writeToBuffer(),
          $0.BulkUpsertResponse.fromBuffer);
  static final _$streamExecuteScanQuery = $grpc.ClientMethod<
          $0.ExecuteScanQueryRequest, $0.ExecuteScanQueryPartialResponse>(
      '/Ydb.Table.V1.TableService/StreamExecuteScanQuery',
      ($0.ExecuteScanQueryRequest value) => value.writeToBuffer(),
      $0.ExecuteScanQueryPartialResponse.fromBuffer);
}

@$pb.GrpcServiceName('Ydb.Table.V1.TableService')
abstract class TableServiceBase extends $grpc.Service {
  $core.String get $name => 'Ydb.Table.V1.TableService';

  TableServiceBase() {
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
    $addMethod($grpc.ServiceMethod<$0.KeepAliveRequest, $0.KeepAliveResponse>(
        'KeepAlive',
        keepAlive_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.KeepAliveRequest.fromBuffer(value),
        ($0.KeepAliveResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CreateTableRequest, $0.CreateTableResponse>(
            'CreateTable',
            createTable_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateTableRequest.fromBuffer(value),
            ($0.CreateTableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DropTableRequest, $0.DropTableResponse>(
        'DropTable',
        dropTable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DropTableRequest.fromBuffer(value),
        ($0.DropTableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AlterTableRequest, $0.AlterTableResponse>(
        'AlterTable',
        alterTable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AlterTableRequest.fromBuffer(value),
        ($0.AlterTableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CopyTableRequest, $0.CopyTableResponse>(
        'CopyTable',
        copyTable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CopyTableRequest.fromBuffer(value),
        ($0.CopyTableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CopyTablesRequest, $0.CopyTablesResponse>(
        'CopyTables',
        copyTables_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CopyTablesRequest.fromBuffer(value),
        ($0.CopyTablesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RenameTablesRequest, $0.RenameTablesResponse>(
            'RenameTables',
            renameTables_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RenameTablesRequest.fromBuffer(value),
            ($0.RenameTablesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DescribeTableRequest, $0.DescribeTableResponse>(
            'DescribeTable',
            describeTable_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DescribeTableRequest.fromBuffer(value),
            ($0.DescribeTableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExplainDataQueryRequest,
            $0.ExplainDataQueryResponse>(
        'ExplainDataQuery',
        explainDataQuery_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ExplainDataQueryRequest.fromBuffer(value),
        ($0.ExplainDataQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PrepareDataQueryRequest,
            $0.PrepareDataQueryResponse>(
        'PrepareDataQuery',
        prepareDataQuery_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PrepareDataQueryRequest.fromBuffer(value),
        ($0.PrepareDataQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExecuteDataQueryRequest,
            $0.ExecuteDataQueryResponse>(
        'ExecuteDataQuery',
        executeDataQuery_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ExecuteDataQueryRequest.fromBuffer(value),
        ($0.ExecuteDataQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExecuteSchemeQueryRequest,
            $0.ExecuteSchemeQueryResponse>(
        'ExecuteSchemeQuery',
        executeSchemeQuery_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ExecuteSchemeQueryRequest.fromBuffer(value),
        ($0.ExecuteSchemeQueryResponse value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.DescribeTableOptionsRequest,
            $0.DescribeTableOptionsResponse>(
        'DescribeTableOptions',
        describeTableOptions_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DescribeTableOptionsRequest.fromBuffer(value),
        ($0.DescribeTableOptionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadTableRequest, $0.ReadTableResponse>(
        'StreamReadTable',
        streamReadTable_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ReadTableRequest.fromBuffer(value),
        ($0.ReadTableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadRowsRequest, $0.ReadRowsResponse>(
        'ReadRows',
        readRows_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadRowsRequest.fromBuffer(value),
        ($0.ReadRowsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BulkUpsertRequest, $0.BulkUpsertResponse>(
        'BulkUpsert',
        bulkUpsert_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BulkUpsertRequest.fromBuffer(value),
        ($0.BulkUpsertResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExecuteScanQueryRequest,
            $0.ExecuteScanQueryPartialResponse>(
        'StreamExecuteScanQuery',
        streamExecuteScanQuery_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.ExecuteScanQueryRequest.fromBuffer(value),
        ($0.ExecuteScanQueryPartialResponse value) => value.writeToBuffer()));
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

  $async.Future<$0.KeepAliveResponse> keepAlive_Pre($grpc.ServiceCall $call,
      $async.Future<$0.KeepAliveRequest> $request) async {
    return keepAlive($call, await $request);
  }

  $async.Future<$0.KeepAliveResponse> keepAlive(
      $grpc.ServiceCall call, $0.KeepAliveRequest request);

  $async.Future<$0.CreateTableResponse> createTable_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateTableRequest> $request) async {
    return createTable($call, await $request);
  }

  $async.Future<$0.CreateTableResponse> createTable(
      $grpc.ServiceCall call, $0.CreateTableRequest request);

  $async.Future<$0.DropTableResponse> dropTable_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DropTableRequest> $request) async {
    return dropTable($call, await $request);
  }

  $async.Future<$0.DropTableResponse> dropTable(
      $grpc.ServiceCall call, $0.DropTableRequest request);

  $async.Future<$0.AlterTableResponse> alterTable_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AlterTableRequest> $request) async {
    return alterTable($call, await $request);
  }

  $async.Future<$0.AlterTableResponse> alterTable(
      $grpc.ServiceCall call, $0.AlterTableRequest request);

  $async.Future<$0.CopyTableResponse> copyTable_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CopyTableRequest> $request) async {
    return copyTable($call, await $request);
  }

  $async.Future<$0.CopyTableResponse> copyTable(
      $grpc.ServiceCall call, $0.CopyTableRequest request);

  $async.Future<$0.CopyTablesResponse> copyTables_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CopyTablesRequest> $request) async {
    return copyTables($call, await $request);
  }

  $async.Future<$0.CopyTablesResponse> copyTables(
      $grpc.ServiceCall call, $0.CopyTablesRequest request);

  $async.Future<$0.RenameTablesResponse> renameTables_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.RenameTablesRequest> $request) async {
    return renameTables($call, await $request);
  }

  $async.Future<$0.RenameTablesResponse> renameTables(
      $grpc.ServiceCall call, $0.RenameTablesRequest request);

  $async.Future<$0.DescribeTableResponse> describeTable_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.DescribeTableRequest> $request) async {
    return describeTable($call, await $request);
  }

  $async.Future<$0.DescribeTableResponse> describeTable(
      $grpc.ServiceCall call, $0.DescribeTableRequest request);

  $async.Future<$0.ExplainDataQueryResponse> explainDataQuery_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ExplainDataQueryRequest> $request) async {
    return explainDataQuery($call, await $request);
  }

  $async.Future<$0.ExplainDataQueryResponse> explainDataQuery(
      $grpc.ServiceCall call, $0.ExplainDataQueryRequest request);

  $async.Future<$0.PrepareDataQueryResponse> prepareDataQuery_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.PrepareDataQueryRequest> $request) async {
    return prepareDataQuery($call, await $request);
  }

  $async.Future<$0.PrepareDataQueryResponse> prepareDataQuery(
      $grpc.ServiceCall call, $0.PrepareDataQueryRequest request);

  $async.Future<$0.ExecuteDataQueryResponse> executeDataQuery_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ExecuteDataQueryRequest> $request) async {
    return executeDataQuery($call, await $request);
  }

  $async.Future<$0.ExecuteDataQueryResponse> executeDataQuery(
      $grpc.ServiceCall call, $0.ExecuteDataQueryRequest request);

  $async.Future<$0.ExecuteSchemeQueryResponse> executeSchemeQuery_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ExecuteSchemeQueryRequest> $request) async {
    return executeSchemeQuery($call, await $request);
  }

  $async.Future<$0.ExecuteSchemeQueryResponse> executeSchemeQuery(
      $grpc.ServiceCall call, $0.ExecuteSchemeQueryRequest request);

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

  $async.Future<$0.DescribeTableOptionsResponse> describeTableOptions_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.DescribeTableOptionsRequest> $request) async {
    return describeTableOptions($call, await $request);
  }

  $async.Future<$0.DescribeTableOptionsResponse> describeTableOptions(
      $grpc.ServiceCall call, $0.DescribeTableOptionsRequest request);

  $async.Stream<$0.ReadTableResponse> streamReadTable_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ReadTableRequest> $request) async* {
    yield* streamReadTable($call, await $request);
  }

  $async.Stream<$0.ReadTableResponse> streamReadTable(
      $grpc.ServiceCall call, $0.ReadTableRequest request);

  $async.Future<$0.ReadRowsResponse> readRows_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ReadRowsRequest> $request) async {
    return readRows($call, await $request);
  }

  $async.Future<$0.ReadRowsResponse> readRows(
      $grpc.ServiceCall call, $0.ReadRowsRequest request);

  $async.Future<$0.BulkUpsertResponse> bulkUpsert_Pre($grpc.ServiceCall $call,
      $async.Future<$0.BulkUpsertRequest> $request) async {
    return bulkUpsert($call, await $request);
  }

  $async.Future<$0.BulkUpsertResponse> bulkUpsert(
      $grpc.ServiceCall call, $0.BulkUpsertRequest request);

  $async.Stream<$0.ExecuteScanQueryPartialResponse> streamExecuteScanQuery_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ExecuteScanQueryRequest> $request) async* {
    yield* streamExecuteScanQuery($call, await $request);
  }

  $async.Stream<$0.ExecuteScanQueryPartialResponse> streamExecuteScanQuery(
      $grpc.ServiceCall call, $0.ExecuteScanQueryRequest request);
}

import 'package:flutter/material.dart';

import '../client/ydb_driver.dart';
import '../query/query_result.dart';
import '../types/i_ydb_value.dart';

/// A widget that executes a YDB query and builds UI based on the result.
///
/// Example:
/// ```dart
/// YdbQueryBuilder<User>(
///   driver: driver,
///   query: 'SELECT * FROM users WHERE age > $minAge',
///   parameters: {'minAge': YdbInt32(18)},
///   mapper: (row) => User.fromRow(row),
///   builder: (context, snapshot) {
///     if (snapshot.hasData) {
///       final users = snapshot.data!;
///       return ListView.builder(
///         itemCount: users.length,
///         itemBuilder: (context, index) => UserTile(users[index]),
///       );
///     }
///     if (snapshot.hasError) {
///       return Text('Error: ${snapshot.error}');
///     }
///     return CircularProgressIndicator();
///   },
/// )
/// ```
class YdbQueryBuilder<T> extends StatefulWidget {
  /// The YDB driver instance
  final YdbDriver driver;

  /// The YQL query to execute
  final String query;

  /// Optional query parameters
  final Map<String, IYdbValue>? parameters;

  /// Function to map result rows to typed objects
  final T Function(Map<String, IYdbValue> row) mapper;

  /// Builder function that receives the query result
  final Widget Function(BuildContext context, AsyncSnapshot<List<T>> snapshot)
      builder;

  /// Whether to automatically execute the query on widget creation
  final bool autoExecute;

  const YdbQueryBuilder({
    required this.driver,
    required this.query,
    required this.mapper,
    required this.builder,
    this.parameters,
    this.autoExecute = true,
    super.key,
  });

  @override
  State<YdbQueryBuilder<T>> createState() => _YdbQueryBuilderState<T>();
}

class _YdbQueryBuilderState<T> extends State<YdbQueryBuilder<T>> {
  late Future<List<T>> _queryFuture;

  @override
  void initState() {
    super.initState();
    if (widget.autoExecute) {
      _executeQuery();
    }
  }

  @override
  void didUpdateWidget(YdbQueryBuilder<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Re-execute query if query string or parameters changed
    if (oldWidget.query != widget.query ||
        oldWidget.parameters != widget.parameters) {
      _executeQuery();
    }
  }

  void _executeQuery() {
    setState(() {
      _queryFuture = _execute();
    });
  }

  Future<List<T>> _execute() async {
    final QueryResult result = await widget.driver.queryClient.execute(
      widget.query,
      parameters: widget.parameters,
    );

    return result.rows
        .map((Map<String, IYdbValue> row) => widget.mapper(row))
        .toList();
  }

  /// Manually trigger query execution
  void refresh() {
    _executeQuery();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<T>>(
      future: _queryFuture,
      builder: widget.builder,
    );
  }
}

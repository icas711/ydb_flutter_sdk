import 'package:example/table_list_page.dart';
import 'package:flutter/material.dart';
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

class AppFlow extends StatelessWidget {
  final YdbDriver driver;
  const AppFlow({super.key, required this.driver});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YDB Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: YdbConnectionWidget(
        driver: driver,
        builder:
            (BuildContext context, YdbConnectionState state, Object? error) {
              if (state == YdbConnectionState.connected) {
                return const TableListPage();
              } else if (state == YdbConnectionState.error) {
                return Scaffold(
                  body: YdbErrorWidget(
                    error: error!,
                    message: 'Failed to connect to YDB',
                    showStackTrace: true,
                  ),
                );
              }
              return const Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      SizedBox(height: 16),
                      Text('Connecting to YDB...'),
                    ],
                  ),
                ),
              );
            },
      ),
    );
  }
}

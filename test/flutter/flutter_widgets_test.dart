import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

// Mock YDB driver for testing
class MockYdbDriver extends YdbDriver {
  bool _initialized = false;
  late final bool _shouldFailInitialize;

  MockYdbDriver({bool shouldFailInitialize = false})
      : _shouldFailInitialize = shouldFailInitialize,
        super(DriverConfig(
          endpoint: 'http://localhost:8765',
          database: '/local',
          credentials: YdbCredentials.anonymous(),
        ));

  @override
  Future<void> initialize() async {
    await Future<void>.delayed(const Duration(milliseconds: 100));
    if (_shouldFailInitialize) {
      throw Exception('Failed to initialize');
    }
    _initialized = true;
  }

  @override
  bool get isReady => _initialized;

  @override
  Future<void> close() async {
    _initialized = false;
  }
}

void main() {
  group('YdbConnectionWidget', () {
    testWidgets('shows connecting state initially',
        (WidgetTester tester) async {
      final MockYdbDriver driver = MockYdbDriver();

      await tester.pumpWidget(
        MaterialApp(
          home: YdbConnectionWidget(
            driver: driver,
            autoConnect: false,
            builder: (BuildContext context, YdbConnectionState state,
                Object? error) {
              return Text('State: $state');
            },
          ),
        ),
      );

      expect(
          find.text('State: YdbConnectionState.disconnected'), findsOneWidget);
    });

    testWidgets('shows connected state after successful connection',
        (WidgetTester tester) async {
      final MockYdbDriver driver = MockYdbDriver();

      await tester.pumpWidget(
        MaterialApp(
          home: YdbConnectionWidget(
            driver: driver,
            autoConnect: true,
            builder: (BuildContext context, YdbConnectionState state,
                Object? error) {
              if (state == YdbConnectionState.connected) {
                return const Text('Connected!');
              } else if (state == YdbConnectionState.connecting) {
                return const Text('Connecting...');
              }
              return const Text('Disconnected');
            },
          ),
        ),
      );

      // Initially should show connecting
      expect(find.text('Connecting...'), findsOneWidget);

      // Wait for connection
      await tester.pumpAndSettle();

      // Should now show connected
      expect(find.text('Connected!'), findsOneWidget);
    });

    testWidgets('shows error state on connection failure',
        (WidgetTester tester) async {
      final MockYdbDriver driver = MockYdbDriver(shouldFailInitialize: true);

      await tester.pumpWidget(
        MaterialApp(
          home: YdbConnectionWidget(
            driver: driver,
            autoConnect: true,
            builder: (BuildContext context, YdbConnectionState state,
                Object? error) {
              if (state == YdbConnectionState.error) {
                return Text('Error: ${error.toString()}');
              }
              return const Text('Loading...');
            },
          ),
        ),
      );

      // Initially should show loading
      expect(find.text('Loading...'), findsOneWidget);

      // Wait for connection attempt
      await tester.pumpAndSettle();

      // Should now show error
      expect(find.textContaining('Error:'), findsOneWidget);
    });
  });

  group('YdbErrorWidget', () {
    testWidgets('displays error message', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: YdbErrorWidget(
              error: Exception('Test error'),
              message: 'Something went wrong',
            ),
          ),
        ),
      );

      expect(find.text('Something went wrong'), findsOneWidget);
      expect(find.textContaining('Test error'), findsOneWidget);
      expect(find.byIcon(Icons.error_outline), findsOneWidget);
    });

    testWidgets('shows retry button when onRetry provided',
        (WidgetTester tester) async {
      bool retryPressed = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: YdbErrorWidget(
              error: Exception('Test error'),
              onRetry: () {
                retryPressed = true;
              },
            ),
          ),
        ),
      );

      expect(find.text('Retry'), findsOneWidget);

      await tester.tap(find.text('Retry'));
      await tester.pump();

      expect(retryPressed, isTrue);
    });

    testWidgets('hides retry button when onRetry not provided',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: YdbErrorWidget(
              error: Exception('Test error'),
            ),
          ),
        ),
      );

      expect(find.text('Retry'), findsNothing);
    });
  });

  // Note: YdbQueryBuilder tests are not included because they would require
  // a full mock setup of QueryClient, which is beyond the scope of basic widget tests.
  // YdbQueryBuilder is integration tested through the example app.
}

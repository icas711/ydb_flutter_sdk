import 'package:flutter/material.dart';

import '../client/ydb_driver.dart';

/// Connection state for YDB
enum YdbConnectionState {
  /// Not yet connected
  disconnected,

  /// Currently connecting
  connecting,

  /// Successfully connected
  connected,

  /// Connection failed
  error,
}

/// A widget that manages YDB connection lifecycle and provides connection state.
///
/// Example:
/// ```dart
/// YdbConnectionWidget(
///   driver: myDriver,
///   builder: (context, state, error) {
///     if (state == YdbConnectionState.connected) {
///       return MyApp();
///     } else if (state == YdbConnectionState.error) {
///       return ErrorWidget(error!);
///     }
///     return CircularProgressIndicator();
///   },
/// )
/// ```
class YdbConnectionWidget extends StatefulWidget {
  /// The YDB driver instance
  final YdbDriver driver;

  /// Builder function that receives current connection state
  final Widget Function(
    BuildContext context,
    YdbConnectionState state,
    Object? error,
  ) builder;

  /// Whether to automatically initialize the driver
  final bool autoConnect;

  /// Whether to automatically close the driver when widget is disposed
  final bool autoClose;

  const YdbConnectionWidget({
    required this.driver,
    required this.builder,
    this.autoConnect = true,
    this.autoClose = true,
    super.key,
  });

  @override
  State<YdbConnectionWidget> createState() => _YdbConnectionWidgetState();
}

class _YdbConnectionWidgetState extends State<YdbConnectionWidget> {
  YdbConnectionState _state = YdbConnectionState.disconnected;
  Object? _error;

  @override
  void initState() {
    super.initState();
    if (widget.autoConnect) {
      _connect();
    }
  }

  Future<void> _connect() async {
    setState(() {
      _state = YdbConnectionState.connecting;
      _error = null;
    });

    try {
      await widget.driver.initialize();
      if (mounted) {
        setState(() {
          _state = YdbConnectionState.connected;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _state = YdbConnectionState.error;
          _error = e;
        });
      }
    }
  }

  @override
  void dispose() {
    if (widget.autoClose) {
      widget.driver.close();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _state, _error);
  }
}

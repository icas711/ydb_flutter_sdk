import 'package:flutter/material.dart';

/// A widget that displays YDB errors in a user-friendly format.
///
/// Example:
/// ```dart
/// YdbErrorWidget(
///   error: error,
///   stackTrace: stackTrace,
///   onRetry: () => _retryOperation(),
/// )
/// ```
class YdbErrorWidget extends StatelessWidget {
  /// The error object
  final Object error;

  /// Optional stack trace
  final StackTrace? stackTrace;

  /// Optional callback for retry action
  final VoidCallback? onRetry;

  /// Whether to show the stack trace
  final bool showStackTrace;

  /// Custom error message
  final String? message;

  const YdbErrorWidget({
    required this.error,
    this.stackTrace,
    this.onRetry,
    this.showStackTrace = false,
    this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.error_outline,
              size: 64,
              color: theme.colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              message ?? 'An error occurred',
              style: theme.textTheme.titleLarge?.copyWith(
                color: theme.colorScheme.error,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              error.toString(),
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            if (showStackTrace && stackTrace != null) ...<Widget>[
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    stackTrace.toString(),
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontFamily: 'monospace',
                    ),
                  ),
                ),
              ),
            ],
            if (onRetry != null) ...<Widget>[
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh),
                label: const Text('Retry'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

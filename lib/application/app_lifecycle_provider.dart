// lib/application/app_lifecycle_provider.dart
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Provider for AppLifecycleState
final appLifecycleProvider = StateProvider<AppLifecycleState?>((ref) {
  final observer = _AppLifecycleObserver(ref);
  final binding = WidgetsBinding.instance;
  binding.addObserver(observer);
  ref.onDispose(() => binding.removeObserver(observer));
  return binding.lifecycleState; // Initial state
});

class _AppLifecycleObserver extends WidgetsBindingObserver {
  final Ref _ref;

  _AppLifecycleObserver(this._ref);

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _ref.read(appLifecycleProvider.notifier).state = state;
    // You can add more logic here based on lifecycle changes
    // For example, logging or triggering other actions.
    // print('App lifecycle state: $state');
    super.didChangeAppLifecycleState(state);
  }
}

// Example usage in a widget:
// Consumer(
//   builder: (context, ref, child) {
//     final appLifecycleState = ref.watch(appLifecycleProvider);
//     if (appLifecycleState == AppLifecycleState.resumed) {
//       // App is in the foreground
//     } else if (appLifecycleState == AppLifecycleState.paused) {
//       // App is in the background
//     }
//     return Text('App Lifecycle: ${appLifecycleState?.toString()}');
//   },
// )

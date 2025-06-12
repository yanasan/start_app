// lib/presentation/pages/app_layout/widgets/monitor_widget.dart
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MonitorWidget extends ConsumerWidget {
  const MonitorWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: Implement actual monitoring logic and UI
    return IconButton(
      icon: const Icon(Icons.monitor_heart_outlined),
      onPressed: () {
        // Action for monitor widget
      },
    );
  }
}

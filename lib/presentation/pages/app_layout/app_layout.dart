// lib/presentation/pages/app_layout/app_layout.dart
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:start_app/application/providers/global/app_layout/app_layout_provider.dart'; // Assuming this provider exists
// import 'widgets/monitor_widget.dart'; // Assuming this widget exists

class AppLayout extends ConsumerWidget {
  const AppLayout({super.key, required this.child});
  final Widget child; // For nested navigation with GoRouter

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final appLayoutState = ref.watch(appLayoutProvider); // Example usage of a provider

    // Example structure with a Scaffold, could include BottomNavigationBar, Drawer, etc.
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Layout'),
        actions: const [
          // MonitorWidget(), // Example: monitor_widget in AppBar
        ],
      ),
      body: child, // This will display the actual page content passed by GoRouter
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: appLayoutState.selectedIndex,
      //   onTap: (index) {
      //     ref.read(appLayoutProvider.notifier).setSelectedIndex(index);
      //     // Handle navigation based on index, potentially using GoRouter
      //   },
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      //   ],
      // ),
    );
  }
}

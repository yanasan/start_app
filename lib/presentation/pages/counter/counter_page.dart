import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:start_app/application/providers/counter/counter_provider.dart';
import 'package:start_app/application/providers/global/theme/theme_provider.dart';
import 'package:start_app/application/providers/global/loading/loading_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final theme = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('カウンター'),
        actions: [
          IconButton(
            icon: Icon(
              theme.themeMode == ThemeMode.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'カウント:',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            Text(
              '${counter.count}',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () => ref.read(counterProvider.notifier).decrement(),
                  tooltip: 'デクリメント',
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () => ref.read(counterProvider.notifier).reset(),
                  tooltip: 'リセット',
                  child: const Icon(Icons.refresh),
                ),
                FloatingActionButton(
                  onPressed: () => ref.read(counterProvider.notifier).increment(),
                  tooltip: 'インクリメント',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () async {
                final loadingNotifier = ref.read(loadingProvider.notifier);
                loadingNotifier.showLoading();
                await Future.delayed(const Duration(seconds: 2));
                loadingNotifier.hideLoading();
              },
              child: const Text('ローディングテスト'),
            ),
          ],
        ),
      ),
    );
  }
}
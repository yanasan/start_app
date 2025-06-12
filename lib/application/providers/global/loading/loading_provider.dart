// lib/application/providers/global/loading/loading_provider.dart
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'notifier/loading_notifier.dart';
import 'state/loading_state.dart';

final loadingProvider = StateNotifierProvider<LoadingNotifier, LoadingState>(
  (ref) => LoadingNotifier(),
);

// lib/application/providers/global/app_layout/app_layout_provider.dart
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'notifier/app_layout_notifier.dart';
import 'state/app_layout_state.dart';

final appLayoutProvider = StateNotifierProvider<AppLayoutNotifier, AppLayoutState>(
  (ref) => AppLayoutNotifier(),
);

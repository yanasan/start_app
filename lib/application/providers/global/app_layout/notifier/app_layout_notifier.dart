// lib/application/providers/global/app_layout/notifier/app_layout_notifier.dart
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../state/app_layout_state.dart';

class AppLayoutNotifier extends StateNotifier<AppLayoutState> {
  AppLayoutNotifier() : super(const AppLayoutState());

  void setSelectedIndex(int index) {
    state = state.copyWith(selectedIndex: index);
  }
}

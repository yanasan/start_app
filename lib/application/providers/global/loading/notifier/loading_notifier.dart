// lib/application/providers/global/loading/notifier/loading_notifier.dart
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../state/loading_state.dart';

class LoadingNotifier extends StateNotifier<LoadingState> {
  LoadingNotifier() : super(const LoadingState());

  void showLoading() {
    state = state.copyWith(isLoading: true);
  }

  void hideLoading() {
    state = state.copyWith(isLoading: false);
  }
}

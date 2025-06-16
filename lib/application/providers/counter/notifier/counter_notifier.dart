import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:start_app/application/providers/counter/state/counter_state.dart';

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier() : super(const CounterState());

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }

  void decrement() {
    state = state.copyWith(count: state.count - 1);
  }

  void reset() {
    state = const CounterState();
  }
}
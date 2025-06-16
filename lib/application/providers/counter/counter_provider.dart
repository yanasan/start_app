import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:start_app/application/providers/counter/notifier/counter_notifier.dart';
import 'package:start_app/application/providers/counter/state/counter_state.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, CounterState>(
  (ref) => CounterNotifier(),
);
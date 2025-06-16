import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'notifier/theme_notifier.dart';
import 'state/theme_state.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeState>(
  (ref) => ThemeNotifier(),
);

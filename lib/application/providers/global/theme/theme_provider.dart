// lib/application/providers/global/theme/theme_provider.dart
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'notifier/theme_notifier.dart';
import 'state/theme_state.dart';
// import 'package:shared_preferences/shared_preferences.dart'; // For persistence

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeState>(
  (ref) {
    // final prefs = ref.watch(sharedPreferencesProvider); // Example for persistence
    return ThemeNotifier(/*prefs*/);
  },
);

// Example: Provider for SharedPreferences, if you implement persistence
// final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
//   throw UnimplementedError('SharedPreferences not initialized');
// });

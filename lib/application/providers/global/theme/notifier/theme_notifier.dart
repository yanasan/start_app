// lib/application/providers/global/theme/notifier/theme_notifier.dart
import 'package:flutter/material.dart'; // For ThemeMode
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../state/theme_state.dart';
// import 'package:shared_preferences/shared_preferences.dart'; // For persistence

class ThemeNotifier extends StateNotifier<ThemeState> {
  ThemeNotifier(/*this._prefs*/) : super(const ThemeState()) {
    // _loadTheme(); // Load saved theme on init
  }

  // final SharedPreferences _prefs; // For persistence
  // static const String _themeKey = 'themeMode';

  void setThemeMode(ThemeMode themeMode) {
    state = state.copyWith(themeMode: themeMode);
    // _saveTheme(themeMode);
  }

  // Future<void> _loadTheme() async {
  //   final themeIndex = _prefs.getInt(_themeKey);
  //   if (themeIndex != null && themeIndex < ThemeMode.values.length) {
  //     state = state.copyWith(themeMode: ThemeMode.values[themeIndex]);
  //   }
  // }

  // Future<void> _saveTheme(ThemeMode themeMode) async {
  //   await _prefs.setInt(_themeKey, themeMode.index);
  // }
}

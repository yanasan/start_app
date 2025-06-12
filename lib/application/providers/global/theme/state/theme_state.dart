// lib/application/providers/global/theme/state/theme_state.dart
import 'package:flutter/material.dart'; // For ThemeMode
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _ThemeState;
}

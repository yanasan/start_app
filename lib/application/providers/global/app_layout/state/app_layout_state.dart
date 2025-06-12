// lib/application/providers/global/app_layout/state/app_layout_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_layout_state.freezed.dart';

@freezed
class AppLayoutState with _$AppLayoutState {
  const factory AppLayoutState({
    // TODO: Define state properties for app layout (e.g., selected tab index)
    @Default(0) int selectedIndex,
  }) = _AppLayoutState;
}

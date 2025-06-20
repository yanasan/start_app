# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter application using modern Flutter development practices with Riverpod for state management, Go Router for navigation, and Freezed for data classes.

## Development Commands

**このプロジェクトではfvmを使用してFlutter 3.32.0を管理しています。**

### FVM Setup
- `fvm install 3.32.0` - Flutter 3.32.0をインストール
- `fvm use 3.32.0` - プロジェクトでFlutter 3.32.0を使用
- `fvm flutter --version` - 使用中のFlutterバージョンを確認

### Basic Flutter Commands (fvm経由)
- `fvm flutter pub get` - Install dependencies
- `fvm flutter run` - Run the app in debug mode
- `fvm flutter build apk` - Build Android APK
- `fvm flutter build ios` - Build iOS app
- `fvm flutter build web` - Build web app
- `fvm flutter build windows` - Build Windows app
- `fvm flutter build macos` - Build macOS app
- `fvm flutter build linux` - Build Linux app

### Code Quality (fvm経由)
- `fvm flutter analyze` - Run static analysis
- `fvm flutter test` - Run all tests
- `fvm flutter test test/widget_test.dart` - Run specific test file

### Code Generation (fvm経由)
- `fvm dart run build_runner build` - Generate code (for Freezed, JsonAnnotation)
- `fvm dart run build_runner watch` - Watch for changes and generate code

## Architecture

### State Management
- **Riverpod**: Primary state management solution using hooks_riverpod
- **Freezed**: Used for immutable data classes and state objects
- **Providers**: Organized in `lib/application/providers/` with global providers for theme, loading, and app layout

### Navigation
- **Go Router**: Declarative routing configured in `lib/navigator/router.dart`
- Route constants defined in `lib/navigator/root_constants.dart`

### Project Structure
```
lib/
├── application/          # Business logic and state management
│   ├── providers/        # Riverpod providers
│   │   └── global/       # Global app state (theme, loading, layout)
│   └── preferences_manager/ # SharedPreferences wrapper
├── main.dart            # App entry point
├── navigator/           # Routing configuration
└── presentation/        # UI layer
    ├── pages/           # Screen widgets
    └── themes/          # Theme configuration
```

### Dependencies
- **flutter_riverpod**: State management
- **hooks_riverpod**: Hooks for Riverpod
- **flutter_hooks**: React-style hooks
- **go_router**: Navigation
- **freezed_annotation**: Immutable data classes
- **shared_preferences**: Local storage
- **flutter_svg**: SVG support
- **cached_network_image**: Image caching

## Key Patterns

### State Management Pattern
- Each feature has its own provider in `application/providers/`
- State classes use Freezed for immutability
- Notifiers extend StateNotifier for business logic
- Global state (theme, loading) is managed at the application level

### Freezed Code Generation
- State classes use `@freezed` annotation
- Requires `part 'filename.freezed.dart';` directive
- Run `dart run build_runner build` after adding/modifying Freezed classes

### Theme Management
- Theme state managed via `themeProvider`
- Supports light/dark mode switching
- Theme persistence can be implemented via SharedPreferences

## Platform Support
This project supports all Flutter platforms:
- Android
- iOS  
- Web
- Windows
- macOS
- Linux

## Localization
- Uses NotoSansJP font for Japanese text support
- Assets organized in `assets/` directory with fonts, icons, and animations

## Language Settings
- Claude should respond in Japanese (日本語) when working with this project
- All explanations and communications should be in Japanese unless specifically requested otherwise
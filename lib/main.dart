// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:start_app/application/providers/global/theme/theme_provider.dart'; // Path to theme_provider.dart
import 'package:start_app/navigator/router.dart'; // Path to router.dart
// import 'package:start_app/presentation/themes/app_colors.dart'; // Path to app_colors.dart (for ThemeData)
// import 'package:start_app/presentation/themes/text_styles.dart'; // Path to text_styles.dart (for ThemeData)

// If you initialized SharedPreferences for theme persistence, you might need this:
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:start_app/application/providers/global/theme/notifier/theme_notifier.dart'; // For sharedPreferencesProvider override

void main() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // If you are using SharedPreferences for theme persistence, initialize it here
  // final prefs = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      // If you initialized SharedPreferences for theme persistence, override the provider:
      // overrides: [
      //   sharedPreferencesProvider.overrideWithValue(prefs),
      // ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeProvider);
    // final goRouter = ref.watch(router); // Assuming router is a simple final GoRouter object

    return MaterialApp.router(
      title: 'Start App', // TODO: Customize title
      themeMode: themeState.themeMode,
      theme: ThemeData(
        // brightness: Brightness.light,
        // primarySwatch: AppColors.lightPrimary, // This needs to be MaterialColor
        // colorScheme: ColorScheme.fromSeed(seedColor: AppColors.lightPrimary, brightness: Brightness.light),
        // fontFamily: AppTextStyles._fontFamily, // Default font family
        // textTheme: TextTheme( // Basic text theme setup
        //   displayLarge: AppTextStyles.headline1.copyWith(color: AppColors.lightText),
        //   bodyLarge: AppTextStyles.bodyText1.copyWith(color: AppColors.lightText),
        // ),
        // Add other light theme properties
        // scaffoldBackgroundColor: AppColors.lightBackground,
        useMaterial3: true, // Enable Material 3
      ),
      darkTheme: ThemeData(
        // brightness: Brightness.dark,
        // primarySwatch: AppColors.darkPrimary, // This needs to be MaterialColor
        // colorScheme: ColorScheme.fromSeed(seedColor: AppColors.darkPrimary, brightness: Brightness.dark),
        // fontFamily: AppTextStyles._fontFamily,
        // textTheme: TextTheme(
        //   displayLarge: AppTextStyles.headline1.copyWith(color: AppColors.darkText),
        //   bodyLarge: AppTextStyles.bodyText1.copyWith(color: AppColors.darkText),
        // ),
        // Add other dark theme properties
        // scaffoldBackgroundColor: AppColors.darkBackground,
        useMaterial3: true, // Enable Material 3
      ),
      routerConfig: router, // Use the router instance from router.dart
      // builder: (context, child) {
      //   // You can wrap your app with other global widgets here if needed
      //   // e.g., for listening to lifecycle events, showing global notifications, etc.
      //   // final appLifecycleState = ref.watch(appLifecycleProvider);
      //   // print('Current App Lifecycle State in MyApp: $appLifecycleState');
      //   return child ?? const SizedBox.shrink();
      // },
    );
  }
}

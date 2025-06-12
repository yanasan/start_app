// lib/presentation/themes/text_styles.dart
import 'package:flutter/material.dart';
// import 'app_colors.dart'; // If text styles depend on AppColors

// TODO: Define your text styles here, using NotoSansJP
class AppTextStyles {
  static const String _fontFamily = 'NotoSansJP';

  static const TextStyle headline1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    // color: AppColors.textColor, // Example: use colors from AppColors
  );

  static const TextStyle bodyText1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    // color: AppColors.textColor, // Example
  );

  // Add other text styles (e.g., headline2, subtitle1, button, caption etc.)

  // Example of a style that might adapt to theme (though color is often handled by ThemeData)
  static TextStyle getHeadline1(BuildContext context) {
    // final themeSpecificColor = AppColors.textColor(context); // If colors are dynamic
    return headline1.copyWith(
        // color: themeSpecificColor,
        );
  }
}

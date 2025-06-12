// lib/presentation/themes/app_colors.dart
import 'package:flutter/material.dart';

// TODO: Define your color palette here
class AppColors {
  // Light Theme Colors
  static const Color lightPrimary = Colors.blue; // Example
  static const Color lightBackground = Colors.white;
  static const Color lightText = Colors.black;
  // Add other light theme colors

  // Dark Theme Colors
  static const Color darkPrimary = Colors.blueGrey; // Example
  static const Color darkBackground = Colors.black;
  static const Color darkText = Colors.white;
  // Add other dark theme colors

  // Corporate Colors & Gradients (as described in plan)
  // static const Color corporateBlue = Color(0xFF......);
  // static const LinearGradient corporateGradient = LinearGradient(...);

  // Helper to get theme-specific color
  static Color primaryColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark ? darkPrimary : lightPrimary;
  }
  static Color backgroundColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark ? darkBackground : lightBackground;
  }
  static Color textColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark ? darkText : lightText;
  }
}

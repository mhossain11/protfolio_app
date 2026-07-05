import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_constants.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get dark => _base(Brightness.dark).copyWith(
    scaffoldBackgroundColor: AppConstants.darkBackground,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppConstants.primary,
      brightness: Brightness.dark,
      primary: AppConstants.primary,
      secondary: AppConstants.secondary,
      surface: AppConstants.cardBackground,
    ),
  );

  static ThemeData get light => _base(Brightness.light).copyWith(
    scaffoldBackgroundColor: const Color(0xFFF8FAFC),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppConstants.primary,
      brightness: Brightness.light,
      primary: AppConstants.primary,
      secondary: AppConstants.secondary,
      surface: Colors.white,
    ),
  );

  static ThemeData _base(Brightness brightness) {
    final textTheme = GoogleFonts.poppinsTextTheme().apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
      decorationColor: Colors.black,
    );
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      textTheme: textTheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

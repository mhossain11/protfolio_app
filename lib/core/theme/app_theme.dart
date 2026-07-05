/*import 'package:flutter/material.dart';
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
}*/

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
      onSurface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
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
      onSurface: Colors.black,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
    ),
  );

  static ThemeData _base(Brightness brightness) {
    final bool isDark = brightness == Brightness.dark;

    final textTheme = GoogleFonts.poppinsTextTheme().apply(
      bodyColor: isDark ? Colors.white : Colors.black,
      displayColor: isDark ? Colors.white : Colors.black,
      decorationColor: isDark ? Colors.white : Colors.black,
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
        fillColor: isDark
            ? AppConstants.cardBackground
            : Colors.white,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),

        labelStyle: TextStyle(
          color: isDark ? Colors.white70 : Colors.black54,
        ),

        hintStyle: TextStyle(
          color: isDark ? Colors.white54 : Colors.black45,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: isDark
                ? Colors.white10
                : Colors.grey.shade300,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: AppConstants.primary,
            width: 2,
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
      ),

      cardTheme: CardThemeData(
        color: isDark
            ? AppConstants.cardBackground
            : Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

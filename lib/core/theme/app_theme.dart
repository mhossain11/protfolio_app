import 'package:flutter/material.dart';

class AppTheme {
  static const Color background = Color(0xFF050505);
  static const Color surface = Color(0xFF111111);
  static const Color card = Color(0xFF1A1A1A);

  static const Color primary = Color(0xFFFFB400);
  static const Color secondary = Color(0xFFFFC107);

  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFB0B0B0);

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    scaffoldBackgroundColor: background,

    colorScheme: const ColorScheme.dark(
      primary: primary,
      secondary: secondary,
      surface: surface,
      onPrimary: Colors.black,
      onSurface: textPrimary,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: background,
      elevation: 0,
      centerTitle: false,
      foregroundColor: textPrimary,
    ),

    cardTheme: CardThemeData(
      color: card,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(
          color: primary.withOpacity(.15),
        ),
      ),
    ),

    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: textPrimary,
        fontSize: 56,
        fontWeight: FontWeight.bold,
      ),

      displayMedium: TextStyle(
        color: textPrimary,
        fontSize: 42,
        fontWeight: FontWeight.bold,
      ),

      headlineLarge: TextStyle(
        color: primary,
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),

      headlineMedium: TextStyle(
        color: primary,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),

      titleLarge: TextStyle(
        color: textPrimary,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),

      bodyLarge: TextStyle(
        color: textPrimary,
        fontSize: 16,
      ),

      bodyMedium: TextStyle(
        color: textSecondary,
        fontSize: 14,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.black,
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          horizontal: 28,
          vertical: 18,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primary,
        side: const BorderSide(
          color: primary,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 28,
          vertical: 18,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: card,
      hintStyle: const TextStyle(
        color: textSecondary,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(
          color: primary.withOpacity(.15),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(
          color: primary.withOpacity(.15),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
        borderSide: BorderSide(
          color: primary,
          width: 1.5,
        ),
      ),
    ),

    dividerTheme: DividerThemeData(
      color: primary.withOpacity(.1),
    ),
  );
}
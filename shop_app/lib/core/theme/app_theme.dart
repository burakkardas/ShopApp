import 'package:flutter/material.dart';
import 'package:shop_app/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: AppColors.pageBackground,
        appBarTheme: _appBarTheme(),
        inputDecorationTheme: _inputDecorationTheme(),
        textTheme: _textTheme(),
      );

  static TextTheme _textTheme() {
    return const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      displaySmall: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    );
  }

  static InputDecorationTheme _inputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      enabledBorder: _outlineInputBorder(),
      focusedBorder: _outlineInputBorder(),
    );
  }

  static OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
  }

  static AppBarTheme _appBarTheme() {
    return const AppBarTheme(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
    );
  }
}

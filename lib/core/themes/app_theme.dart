import 'package:flutter/material.dart';
import 'package:vitally/core/themes/app_text_theme.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: Colors.blue,
          primary: const Color(0xFFFF6079),
        ),
        textTheme: AppTextTheme.light,
      );

  static ThemeData get dark => ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.green,
          primary: const Color(0xFFFF6079),
        ),
        textTheme: AppTextTheme.dark,
      );
}

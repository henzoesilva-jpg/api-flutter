import 'package:flutter/material.dart';

class AppColors {
  static const verdeEscuro = Color(0xFF064E40);
  static const roxo = Color(0xFF40064E);
  static const marrom = Color(0xFF4E4006);
  static const verde = Color(0xFF117A65);

  static const fundo = Color(0xFFF4F7F6);
  static const branco = Colors.white;
  static const texto = Color(0xFF222222);
}

class AppTheme {
  static final ThemeData theme = ThemeData(
    useMaterial3: true,

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.verdeEscuro,
      primary: AppColors.verdeEscuro,
      secondary: AppColors.roxo,
      surface: AppColors.fundo,
    ),

    scaffoldBackgroundColor: AppColors.fundo,

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.verdeEscuro,
      foregroundColor: Colors.white,
      centerTitle: true,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.verdeEscuro,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.verde,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.verdeEscuro,
          width: 2,
        ),
      ),
    ),

    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
  );
}
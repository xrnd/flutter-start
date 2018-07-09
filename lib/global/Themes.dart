import 'package:flutter/material.dart';

class Themes {

  static const MaterialColor darkBlue = const MaterialColor(
    _bluePrimaryValue,
    const <int, Color>{
      50: const Color(0xFFECEFF1),
      100: const Color(0xFFCFD8DC),
      200: const Color(0xFFB0BEC5),
      300: const Color(0xFF90A4AE),
      400: const Color(0xFF78909C),
      500: const Color(_bluePrimaryValue),
      600: const Color(0xFF546E7A),
      700: const Color(0xFF455A64),
      800: const Color(0xFF37474F),
      900: const Color(0xFF263238),
    },
  );

  static const int _bluePrimaryValue = 0xFF607D8B;

  static ThemeData kIOSTheme = new ThemeData(
    primarySwatch: darkBlue,
    accentColor: const Color(0xFF03a9f4),
    primaryColorDark: const Color(0xFF455A64),
    primaryColor: const Color(0xFF607D8B),
  );

  static ThemeData kDefaultTheme = new ThemeData(
    primarySwatch: darkBlue,
    accentColor: const Color(0xFF03a9f4),
    primaryColorDark: const Color(0xFF455A64),
    primaryColor: const Color(0xFF607D8B),
  );

}

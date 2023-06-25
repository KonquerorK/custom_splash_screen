import 'package:custom_splash_screen/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class KappTheme {
  KappTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: KTextTheme.lightTextTheme,
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: ElevatedButton.styleFrom()));
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark, textTheme: KTextTheme.darkTextTheme);
}

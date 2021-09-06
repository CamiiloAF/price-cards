import 'package:flutter/material.dart';
import 'package:price_cards/shared/theme/theme_colors.dart';

class TextThemes {
  static const textThemeLight = TextTheme(
    headline1: TextStyle(
        fontSize: 56,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        color: ThemeColors.secondary,
        letterSpacing: -1.5),
    headline2: TextStyle(
        fontSize: 28,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        color: ThemeColors.secondary,
        letterSpacing: -0.5),
    bodyText1: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.normal,
        color: ThemeColors.grey ,
        letterSpacing: 0.5),
    bodyText2: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.normal,
        color: ThemeColors.grey,
        letterSpacing: 0.25),
    button: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.normal,
        color: ThemeColors.grey,
        letterSpacing: 1.25),
    caption: TextStyle(
        fontSize: 12,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.normal,
        color: ThemeColors.grey,
        letterSpacing: 0.4),
  );
}
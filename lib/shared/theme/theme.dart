import 'package:flutter/material.dart';
import 'package:price_cards/shared/theme/text_themes.dart';
import 'package:price_cards/shared/theme/theme_colors.dart';

final lightTheme = ThemeData.light().copyWith(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: ThemeColors.scaffoldLight,
  primaryColor: ThemeColors.primary,
  secondaryHeaderColor: ThemeColors.secondary,
  textTheme: TextThemes.textThemeLight,
  brightness: Brightness.light,
);
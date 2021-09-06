import 'package:flutter/material.dart';

extension GetTheme on BuildContext {
  ThemeData theme() {
    return Theme.of(this);
  }

  TextTheme textTheme() {
    return this.theme().textTheme;
  }
}

extension GetDimens on BuildContext {
  double screenHeight() {
    return MediaQuery.of(this).size.height;
  }

  double screenWidth() {
    return MediaQuery.of(this).size.width;
  }

  double getResponsiveVerticalDimen(int dimen) {
    final height = this.screenHeight();
    final x = dimen / height;
    return x * height;
  }

  double getResponsiveHorizontalDimen(int dimen) {
    final width = this.screenWidth();
    final x = dimen / width;
    return x * width;
  }
}

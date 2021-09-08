import 'package:flutter/material.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/theme/text_themes.dart';
import 'package:price_cards/shared/theme/theme.dart';

class PlanItem extends StatelessWidget {
  final CardModel cardModel;
  final Widget card;

  PlanItem({required this.cardModel, required this.card});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: cardModel.isSelected
          ? lightTheme.copyWith(
              secondaryHeaderColor: Colors.white,
              textTheme: TextThemes.textThemeLight.copyWith(
                bodyText1: TextThemes.textThemeLight.bodyText1!
                    .copyWith(color: lightTheme.secondaryHeaderColor),
                bodyText2: TextThemes.textThemeLight.bodyText2!
                    .copyWith(color: lightTheme.secondaryHeaderColor),
              ))
          : lightTheme,
      child: card,
    );
  }
}

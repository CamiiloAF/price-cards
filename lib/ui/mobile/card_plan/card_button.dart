import 'package:flutter/material.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';
import 'package:price_cards/shared/theme/theme_colors.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    Key? key,
    required this.onPressedCard,
    required this.cardModel,
  }) : super(key: key);

  final void Function(CardModel cardModel) onPressedCard;
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme();
    final theme = context.theme();

    return InkWell(
      onTap: () => onPressedCard(cardModel),
      borderRadius: BorderRadius.circular(90),
      child: Container(
        height: context.getResponsiveVerticalDimen(49),
        decoration: BoxDecoration(
          color: cardModel.isSelected
              ? ThemeColors.secondary
              : theme.primaryColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(90),
        ),
        padding: EdgeInsets.symmetric(
            vertical: context.getResponsiveVerticalDimen(12),
            horizontal: context.getResponsiveHorizontalDimen(32)),
        child: Center(
          child: Text(
            'Elegir plan',
            style: textTheme.bodyText1!.copyWith(
              fontWeight: FontWeight.bold,
              color: cardModel.isSelected ? Colors.white : theme.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

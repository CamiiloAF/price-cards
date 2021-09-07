import 'package:flutter/material.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';
import 'package:price_cards/shared/theme/theme_colors.dart';

class PlanMostPopularIndicator extends StatelessWidget {
  final CardModel cardModel;

  const PlanMostPopularIndicator({Key? key, required this.cardModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme();

    return Row(
      children: [
        Expanded(child: Offstage()),
        Container(
          margin: EdgeInsets.only(top: context.getResponsiveHorizontalDimen(8)),
          padding: EdgeInsets.symmetric(
            horizontal: context.getResponsiveHorizontalDimen(20),
            vertical: context.getResponsiveVerticalDimen(6),
          ),
          decoration: BoxDecoration(
              color: cardModel.isSelected
                  ? ThemeColors.primaryVariant
                  : theme.primaryColor,
              borderRadius: BorderRadius.circular(100)),
          child: Text('MÁS POPULAR',
              style: context.textTheme().caption!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: cardModel.isSelected
                      ? ThemeColors.secondary
                      : Colors.white)),
        ),
      ],
    );
  }
}

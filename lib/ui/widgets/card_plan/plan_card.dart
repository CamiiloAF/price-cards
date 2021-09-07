import 'package:flutter/material.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';
import 'package:price_cards/ui/widgets/card_plan/plan_characteristics.dart';
import 'package:price_cards/ui/widgets/card_plan/plan_description.dart';
import 'package:price_cards/ui/widgets/card_plan/plan_most_popular_indicator.dart';
import 'package:price_cards/ui/widgets/card_plan/plan_price.dart';

import 'card_button.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    Key? key,
    required this.cardModel,
    required this.onPressedCard,
  }) : super(key: key);

  final CardModel cardModel;
  final void Function(CardModel cardModel) onPressedCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: cardModel.isSelected
              ? context.theme().primaryColor
              : context.theme().cardColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            if (cardModel.isSelected)
              BoxShadow(
                color: Color(0xFF5243C2).withOpacity(.3),
                offset: Offset(0, context.getResponsiveVerticalDimen(42)),
                blurRadius: 34,
              ),
          ]),
      child: InkWell(
        onTap: () => onPressedCard(cardModel),
        borderRadius: BorderRadius.circular(30),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.getResponsiveHorizontalDimen(29),
            vertical: context.getResponsiveVerticalDimen(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (cardModel.isMostPopular)
                PlanMostPopularIndicator(cardModel: cardModel),
              PlanPrice(cardModel: cardModel),
              PlanDescription(cardModel: cardModel),
              ...cardModel.characteristics
                  .map((characteristic) =>
                      PlanCharacteristic(characteristic: characteristic))
                  .toList(),
              CardButton(onPressedCard: onPressedCard, cardModel: cardModel),
              SizedBox(
                height: context.getResponsiveVerticalDimen(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

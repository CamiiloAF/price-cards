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
    return Card(
      color: cardModel.isSelected ? context.theme().primaryColor : null,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: InkWell(
        onTap: () => onPressedCard(cardModel),
        borderRadius: BorderRadius.circular(30),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.getResponsiveHorizontalDimen(29),
            vertical: context.getResponsiveHorizontalDimen(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (cardModel.isMostPopular) PlanMostPopularIndicator(),
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

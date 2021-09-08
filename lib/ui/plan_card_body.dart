import 'package:flutter/material.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';

import 'mobile/card_plan/card_button.dart';
import 'mobile/card_plan/plan_characteristics.dart';
import 'mobile/card_plan/plan_description.dart';
import 'mobile/card_plan/plan_most_popular_indicator.dart';
import 'mobile/card_plan/plan_price.dart';

class PlanCardBody extends StatelessWidget {
  const PlanCardBody({
    Key? key,
    required this.onPressedCard,
    required this.cardModel,
  }) : super(key: key);

  final void Function(CardModel cardModel) onPressedCard;
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
            PlanMostPopularIndicator(cardModel: cardModel),
            PlanPrice(cardModel: cardModel),
            PlanDescription(cardModel: cardModel),
            ...cardModel.characteristics
                .map((characteristic) =>
                    PlanCharacteristic(characteristic: characteristic))
                .toList(),
            Expanded(child: Offstage()),
            CardButton(onPressedCard: onPressedCard, cardModel: cardModel),
            SizedBox(
              height: context.getResponsiveVerticalDimen(10),
            ),
          ],
        ),
      ),
    );
  }
}

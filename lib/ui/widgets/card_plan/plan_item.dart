import 'package:flutter/material.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';
import 'package:price_cards/ui/widgets/card_plan/plan_card.dart';

class PlanItem extends StatelessWidget {
  final CardModel cardModel;
  final void Function(CardModel) onPressedCard;

  const PlanItem({required this.cardModel, required this.onPressedCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: context.getResponsiveHorizontalDimen(24),
          horizontal: context.getResponsiveHorizontalDimen(34)),
      child: PlanCard(cardModel: cardModel, onPressedCard: onPressedCard),
    );
  }
}

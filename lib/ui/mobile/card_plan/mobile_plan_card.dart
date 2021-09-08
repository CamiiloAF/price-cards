import 'package:flutter/material.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';

import '../../plan_card_body.dart';

class MobilePlanCard extends StatelessWidget {
  const MobilePlanCard({
    Key? key,
    required this.cardModel,
    required this.onPressedCard,
  }) : super(key: key);

  final CardModel cardModel;
  final void Function(CardModel cardModel) onPressedCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getResponsiveVerticalDimen(500),
      width: context.getResponsiveHorizontalDimen(420),
      margin: EdgeInsets.only(
          bottom: cardModel.isSelected
              ? context.getResponsiveVerticalDimen(10)
              : 0),
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
      child: PlanCardBody(onPressedCard: onPressedCard, cardModel: cardModel),
    );
  }
}

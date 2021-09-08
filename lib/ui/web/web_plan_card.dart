import 'package:flutter/material.dart';
import 'package:price_cards/fake_data/fake_data.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';

import '../plan_card_body.dart';

class WebPlanCard extends StatelessWidget {
  const WebPlanCard({
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
      width: context.getResponsiveHorizontalDimen(400),
      margin: EdgeInsets.only(
          bottom: cardModel.isSelected
              ? context.getResponsiveVerticalDimen(40)
              : 0),
      decoration: BoxDecoration(
          color: cardModel.isSelected
              ? context.theme().primaryColor
              : context.theme().cardColor,
          borderRadius: getBorderRadius(),
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

  BorderRadius? getBorderRadius() {
    if (cardModel.isSelected) {
      return BorderRadius.circular(30);
    } else {
      final index = planes.indexOf(cardModel);
      if (index == 0) {
        return BorderRadius.only(
            topLeft: Radius.circular(30), bottomLeft: Radius.circular(30));
      } else if (index == planes.length - 1) {
        return BorderRadius.only(
            topRight: Radius.circular(30), bottomRight: Radius.circular(30));
      }
    }
  }
}

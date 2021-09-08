import 'package:flutter/material.dart';
import 'package:price_cards/fake_data/fake_data.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';
import 'package:price_cards/ui/mobile/mobile_header.dart';

import '../plan_item.dart';
import 'card_plan/mobile_plan_card.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MobileHeader(
              title: 'Planes y precios',
              description:
                  'Elige el plan que más te convenga y comienza a aprender hoy mismo.'),
          ...planes.map((e) => Container(
                margin: EdgeInsets.symmetric(
                    vertical: context.getResponsiveVerticalDimen(20),
                    horizontal: context.getResponsiveHorizontalDimen(34)),
                child: PlanItem(
                  cardModel: e,
                  card: MobilePlanCard(
                      cardModel: e,
                      onPressedCard: (CardModel cardModel) {
                        planes.forEach((element) => element.isSelected = false);
                        cardModel.isSelected = true;

                        setState(() {});
                      }),
                ),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:price_cards/fake_data/fake_data.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';
import 'package:price_cards/ui/plan_item.dart';
import 'package:price_cards/ui/web/web_header.dart';
import 'package:price_cards/ui/web/web_plan_card.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  _WebLayoutState createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WebHeader(
              title: 'Planes y precios',
              description:
                  'Elige el plan que más te convenga y comienza a aprender hoy mismo.'),
          SizedBox(height: context.getResponsiveVerticalDimen(80)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: context.getResponsiveHorizontalDimen(120)),
              margin: EdgeInsets.only(
                  bottom: context.getResponsiveVerticalDimen(90)),
              child: Row(
                children: [
                  ...planes.map((e) => PlanItem(
                        cardModel: e,
                        card: WebPlanCard(
                            cardModel: e,
                            onPressedCard: (CardModel cardModel) {
                              planes.forEach(
                                  (element) => element.isSelected = false);
                              cardModel.isSelected = true;

                              setState(() {});
                            }),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

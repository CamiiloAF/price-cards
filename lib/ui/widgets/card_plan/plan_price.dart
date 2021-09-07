import 'package:flutter/material.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';

class PlanPrice extends StatelessWidget {
  const PlanPrice({
    Key? key,
    required this.cardModel,
  }) : super(key: key);

  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme();

    return Container(
      margin: EdgeInsets.only(
          top: context.getResponsiveHorizontalDimen(16),
          bottom: context.getResponsiveHorizontalDimen(16)),
      child: RichText(
        text: TextSpan(
          text: "\$ ${cardModel.price}",
          style: textTheme.headline2,
          children: [TextSpan(text: " /mes", style: textTheme.bodyText1)],
        ),
      ),
    );
  }
}

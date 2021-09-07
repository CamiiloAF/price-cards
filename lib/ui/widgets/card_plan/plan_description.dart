import 'package:flutter/material.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';

class PlanDescription extends StatelessWidget {
  const PlanDescription({
    Key? key,
    required this.cardModel,
  }) : super(key: key);

  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${cardModel.title}', style: textTheme.headline2),
        SizedBox(
          height: context.getResponsiveVerticalDimen(10),
        ),
        Text(
          '${cardModel.description}',
          style: textTheme.bodyText1,
        ),
        SizedBox(
          height: context.getResponsiveVerticalDimen(16),
        ),
      ],
    );
  }
}

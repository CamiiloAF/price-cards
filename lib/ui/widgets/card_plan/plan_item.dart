import 'package:flutter/material.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';
import 'package:price_cards/shared/theme/text_themes.dart';
import 'package:price_cards/shared/theme/theme.dart';
import 'package:price_cards/ui/widgets/card_plan/plan_card.dart';

class PlanItem extends StatefulWidget {
  final CardModel cardModel;
  final void Function(CardModel) onPressedCard;

  PlanItem({required this.cardModel, required this.onPressedCard});

  @override
  _PlanItemState createState() => _PlanItemState();
}

class _PlanItemState extends State<PlanItem> with TickerProviderStateMixin {
  final GlobalKey stickyKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: widget.cardModel.isSelected
          ? lightTheme.copyWith(
              secondaryHeaderColor: Colors.white,
              textTheme: TextThemes.textThemeLight.copyWith(
                bodyText1: TextThemes.textThemeLight.bodyText1!
                    .copyWith(color: lightTheme.secondaryHeaderColor),
                bodyText2: TextThemes.textThemeLight.bodyText2!
                    .copyWith(color: lightTheme.secondaryHeaderColor),
              ))
          : lightTheme,
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: context.getResponsiveVerticalDimen(32),
            horizontal: context.getResponsiveHorizontalDimen(34)),
        child: PlanCard(
            cardModel: widget.cardModel, onPressedCard: widget.onPressedCard),
      ),
    );
  }
}

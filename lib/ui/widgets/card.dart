import 'package:flutter/material.dart';
import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/shared/extensions/extensions.dart';

class PlanCard extends StatelessWidget {
  final CardModel cardModel;
  final void Function(CardModel) onPressedCard;

  const PlanCard({required this.cardModel, required this.onPressedCard});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme();
    final theme = context.theme();

    return Container(
      margin: EdgeInsets.symmetric(
          vertical: context.getResponsiveHorizontalDimen(24),
          horizontal: context.getResponsiveHorizontalDimen(34)),
      child: Card(
        color: cardModel.isSelected ? theme.primaryColor : null,
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
                Container(
                  margin: EdgeInsets.only(
                      top: context.getResponsiveHorizontalDimen(16),
                      bottom: context.getResponsiveHorizontalDimen(16)),
                  child: RichText(
                    text: TextSpan(
                      text: "\$ ${cardModel.price}",
                      style: textTheme.headline2,
                      children: [
                        TextSpan(text: " /mes", style: textTheme.bodyText1)
                      ],
                    ),
                  ),
                ),
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
                ...cardModel.characteristics
                    .map((e) => Column(
                          children: [
                            Opacity(
                              opacity: e.isActive ? 1 : .3,
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color: theme.secondaryHeaderColor
                                            .withOpacity(.20),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Icon(
                                      Icons.check,
                                      size: 16,
                                      color: theme.secondaryHeaderColor,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(e.characteristic),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: context.getResponsiveVerticalDimen(16),
                            ),
                          ],
                        ))
                    .toList(),
                InkWell(
                  onTap: () => onPressedCard(cardModel),
                  borderRadius: BorderRadius.circular(90),
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.primaryColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(90),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: context.getResponsiveVerticalDimen(12),
                        horizontal: context.getResponsiveHorizontalDimen(32)),
                    child: Center(
                      child: Text(
                        'Elegir plan',
                        style: textTheme.bodyText1!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.getResponsiveVerticalDimen(10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

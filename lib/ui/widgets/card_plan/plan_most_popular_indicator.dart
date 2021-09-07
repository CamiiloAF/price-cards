import 'package:flutter/material.dart';
import 'package:price_cards/shared/extensions/extensions.dart';

class PlanMostPopularIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.theme();

    return Row(
      children: [
        Expanded(child: Offstage()),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.getResponsiveHorizontalDimen(24),
            vertical: context.getResponsiveVerticalDimen(8),
          ),
          decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(100)),
          child: Text('MÁS POPULAR',
              style: context
                  .textTheme()
                  .caption!
                  .copyWith(fontWeight: FontWeight.w600, color: Colors.white)),
        ),
      ],
    );
  }
}

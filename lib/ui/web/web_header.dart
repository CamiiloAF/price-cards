import 'package:flutter/material.dart';
import 'package:price_cards/shared/assets/strings.dart';
import 'package:price_cards/shared/extensions/extensions.dart';

class WebHeader extends StatelessWidget {
  final String title;
  final String description;

  WebHeader({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme();

    return Container(
      margin: EdgeInsets.only(
          left: context.getResponsiveHorizontalDimen(34),
          right: context.getResponsiveHorizontalDimen(34),
          top: context.getResponsiveHorizontalDimen(34),
          bottom: context.getResponsiveHorizontalDimen(8)),
      padding: EdgeInsets.only(left: context.getResponsiveHorizontalDimen(120)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.homeTitle,
            style: textTheme.headline1,
          ),
          SizedBox(
            height: context.getResponsiveVerticalDimen(8),
          ),
          Text(Strings.homeSubtitle, style: textTheme.bodyText1),
        ],
      ),
    );
  }
}

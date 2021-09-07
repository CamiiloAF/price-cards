import 'package:flutter/material.dart';
import 'package:price_cards/models/characteristic.dart';
import 'package:price_cards/shared/extensions/extensions.dart';

class PlanCharacteristic extends StatelessWidget {
  const PlanCharacteristic({
    Key? key,
    required this.characteristic,
  }) : super(key: key);

  final Characteristic characteristic;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme();

    return Column(
      children: [
        Opacity(
          opacity: characteristic.isActive ? 1 : .5,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: theme.secondaryHeaderColor.withOpacity(.20),
                    borderRadius: BorderRadius.circular(100)),
                child: Icon(
                  Icons.check,
                  size: 16,
                  color: theme.secondaryHeaderColor,
                ),
              ),
              SizedBox(width: 8),
              Text(
                characteristic.text,
                style: context.textTheme().bodyText2,
              ),
            ],
          ),
        ),
        SizedBox(
          height: context.getResponsiveVerticalDimen(16),
        ),
      ],
    );
  }
}

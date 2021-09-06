import 'package:flutter/material.dart';
import 'package:price_cards/shared/extensions/extensions.dart';

class PlanCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme();
    final theme = context.theme();

    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: context.getResponsiveHorizontalDimen(34)),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(26),
        ),
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
                    bottom: context.getResponsiveHorizontalDimen(16)),
                child: RichText(
                  text: TextSpan(
                    text: "\$500",
                    style: textTheme.headline2,
                    children: [
                      TextSpan(text: " /mes", style: textTheme.bodyText1)
                    ],
                  ),
                ),
              ),
              Text('Básico', style: textTheme.headline2),
              SizedBox(
                height: context.getResponsiveVerticalDimen(10),
              ),
              Text(
                'Comienza a aprender y ve contenido nuevo cada mes.',
                style: textTheme.bodyText1,
              ),
              SizedBox(
                height: context.getResponsiveVerticalDimen(16),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: theme.secondaryHeaderColor.withOpacity(.20),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.check,
                      size: 20,
                      color: theme.secondaryHeaderColor,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text('Acceso a todos los proyectos'),
                ],
              ),
              SizedBox(
                height: context.getResponsiveVerticalDimen(16),
              ),
              InkWell(
                onTap: (){},
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
    );
  }
}

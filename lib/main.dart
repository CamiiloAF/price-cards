import 'package:flutter/material.dart';
import 'package:price_cards/shared/theme/theme.dart';
import 'package:price_cards/ui/widgets/card.dart';
import 'package:price_cards/ui/widgets/header.dart';
import 'package:price_cards/shared/extensions/extensions.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(
                title: 'Planes y precios',
                description:
                    'Elige el plan que más te convenga y comienza a aprender hoy mismo.'),
            PlanCard()
          ],
        ),
      ),
    );
  }
}

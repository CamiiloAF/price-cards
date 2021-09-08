import 'package:flutter/material.dart';
import 'package:price_cards/shared/theme/theme.dart';
import 'package:price_cards/ui/mobile/mobile_layout.dart';
import 'package:price_cards/ui/web/web_layout.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraint) {
          return AnimatedSwitcher(
              duration: Duration(milliseconds: 700),
              child: constraint.maxWidth > 800 ? WebLayout() : MobileLayout());
        }),
      ),
    );
  }
}

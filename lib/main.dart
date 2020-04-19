import 'package:flutter/material.dart';
import 'Screens/home_page.dart';

void main() => runApp(StockTracker());

class StockTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

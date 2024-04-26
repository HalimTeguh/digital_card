import 'package:digital_card/Layout/card_landscape.dart';
import 'package:digital_card/Layout/card_potrait.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff82A0D8),
                Color(0xff7BD3EA),
              ],
            ),
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, constraints) {
              if (constraints.maxWidth < 600) {
                // POTRAIT LAYOUT
                return CardPotrait(width: constraints.maxWidth);
              } else {
                // LANDSCAPE LAYOUT
                return CardLandscape(width: constraints.maxWidth);
              }
            },
          ),
        ),
      ),
    );
  }
}

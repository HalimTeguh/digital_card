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
      home: LayoutBuilder(
          builder: (BuildContext context, constraints) {
            if(constraints.maxWidth < 600){
              // POTRAIT LAYOUT
              return CardPotrait(width: constraints.maxWidth);
            }else{
              // LANDSCAPE LAYOUT
              return CardLandscape(width: constraints.maxWidth);
            }
          },
      ),
    );
  }
}


import 'package:flutter/material.dart';

class CardPotrait extends StatelessWidget {
  const CardPotrait({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black45,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/bg_potrait.jpg')),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 20,
                          spreadRadius: 2,
                          offset: Offset(5, 10)),
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(3, 5),
                          blurStyle: BlurStyle.inner),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xff7BD3EA), width: 5),
                          shape: BoxShape.circle,
                          color: Colors.grey),
                    ),
                    Text(
                      "Halim Teguh Saputro",
                      style: TextStyle(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

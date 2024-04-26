import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardLandscape extends StatelessWidget {
  const CardLandscape({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('assets/bg_landscape.jpg')),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 160,
                            height: 160,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff7BD3EA), width: 5),
                              shape: BoxShape.circle,
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                scale: 0.5,
                                image: AssetImage(
                                  'assets/photo.jpeg',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Halim Teguh\nSaputro",
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff7BD3EA),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  height: 2,
                                  width: 150,
                                  color: Colors.black45,
                                ),
                                Text(
                                  "Mahasiswa",
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff7BD3EA),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "+62 812 5086 1354",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                      ),
                      Text(
                        "halimteguh.prvt@gmail.com",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

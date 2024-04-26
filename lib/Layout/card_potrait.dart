import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPotrait extends StatelessWidget {
  const CardPotrait({super.key, required this.width});

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
                    SizedBox(height: 50,),
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff7BD3EA), width: 5),
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
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Halim Teguh Saputro",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7BD3EA),
                        ),
                      ),
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
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      width: double.infinity,
                      child: Divider(
                        height: 2,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "+62 812 5086 1354",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      "halimteguh.prvt@gmail.com",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
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

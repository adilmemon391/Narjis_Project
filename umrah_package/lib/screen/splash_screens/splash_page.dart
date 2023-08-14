import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_theme/app_colour.dart';
import '../intro_screen/intro_page2.dart';

class SplashScreen extends StatefulWidget {
  static String routeName='/splashscreen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3), () =>
        Navigator.pushNamedAndRemoveUntil(context, IntroPage2.routeName, (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: containerColour,
            border: Border.all( color: greyColour )
          ),
          child: mainRow() ,
        ),
      ),
    );
  }
  Widget mainRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
              "Umrah",
              style: GoogleFonts.philosopher(textStyle: const TextStyle(
                  fontSize: 28,
                  color: greyColour,
                  fontWeight: FontWeight.bold))
          ),
        ),
        Text(
            "book.com",
            style: GoogleFonts.philosopher(textStyle: const TextStyle(
                fontSize: 28,
                color: blackColour,
                fontWeight: FontWeight.bold))
        ),
      ],
    );
  }
}

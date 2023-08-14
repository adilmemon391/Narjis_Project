import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';
import 'package:umrah_package/screen/intro_screen/intro_page5.dart';
import 'package:umrah_package/screen/dashboard_screen/dashboard_start.dart';

import '../../app_theme/app_colour.dart';

class IntroPage4 extends StatefulWidget {
  static String routeName="/entropage4";

  const IntroPage4({super.key});

  @override
  State<IntroPage4> createState() => _WelcomeState();
}

class _WelcomeState extends State<IntroPage4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: mainContainer()
    );
  }
  Widget mainContainer(){
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: backgroundColour,
          image: DecorationImage(
              image: AssetImage(AppAssets.appSliderImg4),
              fit: BoxFit.cover)),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          height: 3,
        ),

        const SizedBox(
          height: 75,
        ),
        const Image(image: AssetImage(AppAssets.introw2)),
        const SizedBox(
          height: 68.7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Umrah",
                style: GoogleFonts.philosopher(
                    textStyle: const TextStyle(
                        fontSize: 28,
                        decoration: TextDecoration.none,
                        color: greyColour,
                        fontWeight: FontWeight.bold))),
            Text("book.com",
                style: GoogleFonts.philosopher(
                    textStyle: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 28,
                        color: blackColour,
                        fontWeight: FontWeight.bold))),
          ],
        ),
        const SizedBox(
          height: 56,
        ),
        Text("Welcome to",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 23,
                    color: blackColour,
                    fontWeight: FontWeight.bold))),
        Text("umrahbook.com",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 21,
                    color: blackColour,
                    fontWeight: FontWeight.bold))),
        const SizedBox(
          height: 14,
        ),
        Text(
            "Everything you need to know to have a tension\nand hassle free umrah.",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  color: blackColour,
                ))),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 39,
                width: 99,
                decoration: BoxDecoration(
                    color: chiku,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(DashbordScreen.routeName, (route) => false);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.white),
                    ))),
            const SizedBox(
              width: 40,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: colourAsmani,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              width: 10,
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:rama,
              ),
              width: 10,
              height: 10,
            ),
            const SizedBox(
              width: 63,
            ),
            Container(
                height: 39,
                width: 99,
                decoration: BoxDecoration(
                    color: rama,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(IntroPage5.routeName, (route) => false);
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        )
      ]),
    );
  }
}

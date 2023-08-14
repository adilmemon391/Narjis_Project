import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';
import 'package:umrah_package/app_theme/size_conform.dart';

import '../../app_theme/app_colour.dart';
import 'intro_page3.dart';

class IntroPage2 extends StatefulWidget {
  static String routeName = "/intro_page2";

  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body:mainContainer()
      ),
    );
  }
  Widget mainContainer(){
    return  Container(
        alignment: Alignment.topCenter,
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        decoration: const BoxDecoration(
            color:rama,
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(AppAssets.designbackground),
                fit: BoxFit.fitWidth)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 3,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(IntroPage3.routeName, (route) => false);
                },
                child: const Text(
                  'skip',
                  style: TextStyle(
                      fontSize: 13, color: rama
                  ),
                )),
            Container(
              alignment: Alignment.topCenter,
              margin:  EdgeInsets.only(top: getHeight(10)),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(AppAssets.introw2))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                   const SizedBox(
                    height: 430,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin:  EdgeInsets.only(left: getHeight(21)),
                    child: Text(
                      "Welcome to",
                      style: GoogleFonts.philosopher(
                          textStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              color: containerColour,
                              fontSize: 28)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin:  EdgeInsets.only(left: getWidth(21)),
                    child: Text(
                      "umrahbook.com",
                      style: GoogleFonts.philosopher(
                          textStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              color:containerColour,
                              fontSize: 28)),
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(top: getHeight(16), left: getWidth(21)),
                    child: Text(
                      "Everything you need to know to have a tension and hassle free umrah.",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,
                              color:containerColour,
                              fontSize: 16)),
                    ),
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  Row(
                    children: [
                      Container(
                        margin:  EdgeInsets.only(left: getWidth(15)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        width: 10,
                        height: 10,
                      ),
                      Container(
                        margin:  EdgeInsets.only(left: getWidth(15)),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                        ),
                        width: 10,
                        height: 10,
                      ),
                      const SizedBox(
                        width: 170,
                      ),
                      Container(
                          height: getHeight(54),
                          width: getWidth(159),
                          decoration: BoxDecoration(
                              color: containerColour,
                              borderRadius: BorderRadius.circular(30)),
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(IntroPage3.routeName, (Route<dynamic>route) => false);
                                //Navigator.pushNamed(context, IntrowScreen2.routeName);

                              },
                              child: const Text(
                                "Next",
                                style: TextStyle(
                                    color:rama ),)))
                    ],
                  ),
                ],
              ),
            ),
          ],));
  }
}

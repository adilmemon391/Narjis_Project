import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';
import 'package:umrah_package/screen/intro_screen/intro_page4.dart';

import '../../app_theme/app_colour.dart';
import '../../app_theme/size_conform.dart';
class IntroPage3 extends StatefulWidget {
  static String routeName="/intro_page2";


  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child:mainContainer()
    );
  }
  Widget mainContainer(){
    return Container(

        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        decoration: const BoxDecoration(
            color: colourAsmani,
            image: DecorationImage(alignment: Alignment.topCenter,
                image: AssetImage(AppAssets.designbackground),fit: BoxFit.fitWidth
            )
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             SizedBox(height: 3,),
            TextButton(
                onPressed: () {
                }, child: const Text('skip',style: TextStyle(
                fontSize: 13,
                color: colourAsmani),)),
            Container(
              margin:  EdgeInsets.only(top: getHeight(50)),
              decoration: const BoxDecoration(image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage(AppAssets.introw1))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const SizedBox(
                    height: 400,
                  ),
                  Container(alignment: Alignment.topLeft,
                    margin:  EdgeInsets.only(left: getWidth(21)),
                    child: Text("Welcome to",
                      style: GoogleFonts.philosopher(
                          textStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              color:containerColour,
                              fontSize: 28
                          )
                      ),
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(left: getWidth(21)),
                    child: Text("umrahbook.com",
                      style: GoogleFonts.philosopher(
                          textStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              color:containerColour,
                              fontSize: 28
                          )
                      ),
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(
                        top: getHeight(16),
                        left: getWidth(21)),
                    child: Text("Everything you need to know to have a tension and hassle free umrah.",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,
                              color:containerColour,
                              fontSize: 16
                          )
                      ),
                    ),
                  ),
                   SizedBox(height: 55,),
                  Row(children: [
                    Container(
                      margin:  EdgeInsets.only(left: getHeight(15)),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      width:10,
                      height:10,
                    ),
                    Container(
                      margin:  EdgeInsets.only(left: getWidth(15)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width:10,
                      height:10,
                    ),
                     SizedBox(width: 170,),
                    Container(
                        height: getHeight(54),
                        width: getWidth(150),
                        decoration: BoxDecoration(
                            color: containerColour,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.of(context).pushNamedAndRemoveUntil(IntroPage4.routeName, (route) => false);
                        }, child:const Text("Get Started",style: TextStyle(color: rama),)))
                  ],),

                ],
              ),
            ),
          ],
        )
    );
  }
}
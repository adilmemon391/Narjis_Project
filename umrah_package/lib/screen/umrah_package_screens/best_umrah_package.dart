import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';
import 'package:umrah_package/app_theme/app_colour.dart';

import 'special_umrah_package.dart';
class BestUmrahPackage extends StatefulWidget {
  static String routeName="/bestumrahpackage";
  const BestUmrahPackage({super.key});

  @override
  State<BestUmrahPackage> createState() => _BestUmrahPackageState();
}

class _BestUmrahPackageState extends State<BestUmrahPackage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
              Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back_ios_new,color:containerColour,size: 19,)),
        centerTitle: false,
        backgroundColor:colourAsmani,
        title: Text(
          "Best Umrah Packages",
          textAlign: TextAlign.left,
          style: GoogleFonts.poppins(
              color: containerColour,
              fontWeight: FontWeight.normal,
              textStyle: const TextStyle(fontSize: 15)),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
            color: allconcol,
            image: DecorationImage(
                image: AssetImage(AppAssets.appSliderImg4))),
        child: SingleChildScrollView(child: Column(children: [
          _container(),
          _container(),
          _container(),
          _container(),
          _container(),
          _container(),
          _container(),
          _container(),
          const SizedBox(height: 40,),

        ],)),
      ),
    ),);
  }
 Widget _container(){
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 20
        ),
        height: 370,
        width: 333,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Container(
              height: 137,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        AppAssets.kaabaimage,
                      ),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SpecialUmrahPackage.routeName);
                    },
                    child: Text(
                      "Special Umrah Package",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: blackColour,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: colourAsmani,
                    ),
                    child: Text(
                      "15D / 14N",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: containerColour,
                            fontSize: 12,
                          )),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 48,
              width: 300,
              decoration: BoxDecoration(
                  color: containerColour,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 2,
                      color:
                      offgery)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage(AppAssets.fullbackground)),
                  Text("+"),
                  Image(image: AssetImage(AppAssets.group13)),
                  Text("+"),
                  Image(image: AssetImage(AppAssets.group14)),
                  Text("+"),
                  Image(image: AssetImage(AppAssets.group17)),

                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color:offblue,
                    size: 23,
                  ),
                  Text(
                    " From",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color:blackColour,
                          fontSize: 14,
                        )),
                  ),
                  Text(
                    " Mumbai",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color:
                            blackColour,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10,right: 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.settings_outlined,
                    color: offblue,
                    size: 23,
                  ),
                  Text(
                    " Operated by ",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: blackColour,
                          fontSize: 14,
                        )),
                  ),
                  Text(
                    " Akbar Travels",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color:
                            colourAsmani,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width: 50,),
                  Container(
                    alignment: Alignment.centerRight,
                    height: 21.7,
                    width: 19,
                    color: Colors.white,
                    child: const Image(
                      color: colourAsmani,
                      height: 21.7,
                      width: 19,
                      image: AssetImage(
                        AppAssets.add,
                      ),
                    ),
                    // child: Icon(Icons.arrow_forward),
                  )
                ],
              ),
            ),
          ],
        )
    );



  }
}
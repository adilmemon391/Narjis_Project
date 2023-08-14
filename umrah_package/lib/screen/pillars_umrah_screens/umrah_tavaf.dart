import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';

import '../../app_theme/app_colour.dart';
import 'pillars_umrah_page.dart';

class UmrahTavaf extends StatefulWidget {
  static String routeName="/umrah_tavaf";
   const UmrahTavaf({super.key});

  @override
  State<UmrahTavaf> createState() => _UmrahTavafState();
}

class _UmrahTavafState extends State<UmrahTavaf> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon:  const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 15,
                  )),
              backgroundColor: lightGrey1,
              title: Text(
                "Pillars of umrah",
                style: GoogleFonts.poppins(
                  textStyle:  const TextStyle(
                      color: containerColour, fontSize: 19),
                ),
              ),
            ),
            body: Container(
                height: double.infinity,
                width: double.infinity,
                decoration:  const BoxDecoration(
                    color: Color.fromRGBO(238, 246, 248, 1),
                    image: DecorationImage(
                      image: AssetImage(
                        AppAssets.group,
                      ),
                      fit: BoxFit.cover,
                    )),
                child: SingleChildScrollView(
                    child: column()))));
  }
  Widget column(){
    return Column(
        children: [
          Container(
              margin:  const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:  containerColour),
              height: 430,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 350,
                    padding:  const EdgeInsets.all(7),
                    child:  const Image(
                        image: AssetImage(
                          AppAssets.rectangle218,
                        ),
                        fit: BoxFit.fitWidth),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Text("Umrah",
                        style: GoogleFonts.poppins(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: lightGrey1)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PillarsUmrah.routeName);
                    },
                    child: Container(
                      padding:  const EdgeInsets.only(top: 10, left: 20),
                      child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color:  blackColour)),
                    ),
                  ),
                ],
              )),
          Container(
              margin:  const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:  containerColour),
              height: 430,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 350,
                    padding:  const EdgeInsets.all(7),
                    child:  const Image(
                        image: AssetImage(
                          AppAssets.rectangle1,
                        ),
                        fit: BoxFit.fitWidth),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Text("Tawaf",
                        style: GoogleFonts.poppins(
                            fontSize: 19,fontWeight: FontWeight.bold,
                            color: lightGrey1)),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color:  blackColour)),
                  ),
                ],
              )),
          Container(
              margin:  const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:  containerColour),
              height: 430,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 350,
                    padding:  const EdgeInsets.all(7),
                    child:  const Image(
                        image: AssetImage(
                          AppAssets.rectangle218,
                        ),
                        fit: BoxFit.fitWidth),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Text("Umrah",
                        style: GoogleFonts.poppins(
                            fontSize: 19,fontWeight: FontWeight.bold,
                            color: lightGrey1)),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color:  blackColour)),
                  ),
                ],
              )),
          Container(
              margin:  const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:  containerColour),
              height: 430,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 350,
                    padding:  const EdgeInsets.all(7),
                    child:  const Image(
                        image: AssetImage(
                          AppAssets.rectangle1,
                        ),
                        fit: BoxFit.fitWidth),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Text("Tawaf",
                        style: GoogleFonts.poppins(
                            fontSize: 19,fontWeight: FontWeight.bold,
                            color: lightGrey1)),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color:  blackColour)),
                  ),
                ],
              )),
        ]);
  }
}

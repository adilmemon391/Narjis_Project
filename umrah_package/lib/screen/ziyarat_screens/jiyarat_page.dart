import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/screen/blogs_screens/blogs.dart';

import '../../app_theme/app_assets.dart';
import '../../app_theme/app_colour.dart';

class Jiyarat extends StatefulWidget {
  static String routeName = "/jiyarat";

  const Jiyarat({super.key});

  @override
  State<Jiyarat> createState() => _JiyaratState();
}

class _JiyaratState extends State<Jiyarat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 15,
                  )),
              backgroundColor: colourAsmani,
              title: Text(
                "Ziyarah",
                style: GoogleFonts.poppins(
                  textStyle:
                      const TextStyle(color: containerColour, fontSize: 17),
                ),
              ),
            ),
            body: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(238, 246, 248, 1),
                    image: DecorationImage(
                      image: AssetImage(
                        AppAssets.group,
                      ),
                      fit: BoxFit.cover,
                    )),
                child: SingleChildScrollView(child: column()))));
  }

  Widget column() {
    return Column(children: [
      Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: containerColour),
          height: 480,
          width: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 350,
                padding: const EdgeInsets.all(7),
                child: const Image(
                    image: AssetImage(
                      AppAssets.rectangle1,
                    ),
                    fit: BoxFit.fitWidth),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text("About Ziyarah",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: blackColour,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dol"
                    "ore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: blackColour)),
              ),
              const SizedBox(
                height: 26,
              ),
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    SizedBox(
                      width: 112,
                      height: 34,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll(colourAsmani),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {
                            Navigator.pushNamed(context, BlogsScreen.routeName);
                          },
                          child: Text("Read More",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: containerColour))),
                    ),
                  ],
                ),
              )
            ],
          )),
      Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: containerColour),
          height: 500,
          width: 350,
          child: Column(
            children: [
              Container(
                width: 350,
                padding: const EdgeInsets.all(10),
                child: const Image(
                    image: AssetImage(
                      AppAssets.rectangle1,
                    ),
                    fit: BoxFit.fitWidth),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                    "Can Foreign Pilgrim outside the GCC perform umrah this year?",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: blackColour,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dol"
                    "ore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: blackColour)),
              ),
              const SizedBox(
                height: 26,
              ),
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    SizedBox(
                      width: 112,
                      height: 34,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll(colourAsmani),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {
                            Navigator.pushNamed(context, BlogsScreen.routeName);
                          },
                          child: Text("Read More",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: containerColour))),
                    ),
                  ],
                ),
              )
            ],
          )),
      Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: containerColour),
          height: 500,
          width: 350,
          child: Column(
            children: [
              Container(
                width: 350,
                padding: const EdgeInsets.all(10),
                child: const Image(
                    image: AssetImage(
                      AppAssets.rectangle1,
                    ),
                    fit: BoxFit.fitWidth),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                    "Can Foreign Pilgrim outside the GCC perform umrah this year?",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: blackColour,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dol"
                    "ore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: blackColour)),
              ),
              const SizedBox(
                height: 26,
              ),
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    SizedBox(
                      width: 112,
                      height: 34,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll(colourAsmani),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {
                            Navigator.pushNamed(context, BlogsScreen.routeName);
                          },
                          child: Text("Read More",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: containerColour))),
                    ),
                  ],
                ),
              )
            ],
          )),
    ]);
  }
}

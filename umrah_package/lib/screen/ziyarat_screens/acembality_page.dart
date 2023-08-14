import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_theme/app_assets.dart';
import '../../app_theme/app_colour.dart';

class Accembality extends StatefulWidget {
  static String routeName="/accembality";
   const Accembality({super.key});

  @override
  State<Accembality> createState() => _AccembalityState();
}

class _AccembalityState extends State<Accembality> {
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
        backgroundColor:  colourAsmani,
        title: Text(
          "Accessibility",
          style: GoogleFonts.poppins(
            textStyle:  const TextStyle(
                color: containerColour, fontSize: 17),
          ),
        ),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration:  const BoxDecoration(
              color: allconcol,
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.group,
                ),
                fit: BoxFit.cover,
              )),
          child: SingleChildScrollView(
              child: column())),
    ));
  }
  Widget column(){
    return Column(
        children: [
          Container(
              margin:  const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  border: Border.all(
                      color:  pink
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color:  containerColour),
              height: 1000,
              width: 350,
              child: Column(
                children: [
                  Container(
                    padding:  const EdgeInsets.only(top: 30, left: 17),
                    child: Text(
                        "The Spiritual journey of lorem isopun sit amet.",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color:  blackColour,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:  const EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color:  blackColour,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:  const EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color:  blackColour,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:  const EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color:  blackColour,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:  const EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color:  blackColour,
                        )),
                  ),
                  Container(
                    padding:  const EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color:  blackColour,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin:  const EdgeInsets.only(left: 15),
                    child: Text("How do i travel makkah?",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color:  blackColour,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:  const EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color:  blackColour,
                        )),
                  ),
                  Container(
                    padding:  const EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color:  blackColour,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:  const EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color:  blackColour,
                        )),
                  ),
                  Container(
                    padding:  const EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color:  blackColour,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:  const EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color:  blackColour,
                        )),
                  ),
                ],
              ))
        ]);
  }
}

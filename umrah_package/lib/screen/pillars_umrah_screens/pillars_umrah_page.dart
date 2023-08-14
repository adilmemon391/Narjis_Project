import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';

import '../../app_theme/app_colour.dart';

class PillarsUmrah extends StatefulWidget {
  static String routeName="/pillars_umrah";
   const PillarsUmrah({super.key});

  @override
  State<PillarsUmrah> createState() => _PillarsUmrahState();
}

class _PillarsUmrahState extends State<PillarsUmrah> {
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
              backgroundColor: colourAsmani,
              title:  Text(
                "Pillars of umrah",
                style:GoogleFonts.poppins(
                textStyle:  const TextStyle(
                    color:containerColour, fontSize: 19),
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
                  child: column(),
                ))));
  }
  Widget column(){
    return Column(
      children: [
        Container(
            margin:  const EdgeInsets.only(top: 20),
            padding:  const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containerColour),
            height: 90,
            width: 350,
            child:  Row(
              children: [
                const Text(
                  "1.",
                  style:
                  TextStyle(color:colourAsmani,fontSize: 15),
                ),
                const SizedBox(width: 10,),
                Expanded(
                    child:  Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.",
                      style:GoogleFonts.poppins(
                        textStyle:  const TextStyle(color:darkpurple,fontSize: 13),
                      ),)
                ),
              ],
            )
        ),
        Container(
            margin:  const EdgeInsets.only(top: 20),
            padding:  const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containerColour),
            height: 90,
            width: 350,
            child:  Row(
              children: [
                const Text(
                  "2.",
                  style:
                  TextStyle(color:colourAsmani,fontSize: 15),
                ),
                const SizedBox(width: 10,),
                Expanded(
                    child:  Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.",
                      style:GoogleFonts.poppins(
                        textStyle:  const TextStyle(color:darkpurple,fontSize: 13),
                      ),)
                ),
              ],
            )
        ),
        Container(
            margin:  const EdgeInsets.only(top: 20),
            padding:  const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containerColour),
            height: 90,
            width: 350,
            child:  Row(
              children: [
                const Text(
                  "3.",
                  style:
                  TextStyle(color:colourAsmani,fontSize: 15),
                ),
                const SizedBox(width: 10,),
                Expanded(
                    child: Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.",
                      style:GoogleFonts.poppins(
                        textStyle:  const TextStyle(color:darkpurple,fontSize: 13),
                      ),)
                ),
              ],
            )
        ),
        Container(
            margin:  const EdgeInsets.only(top: 20),
            padding:  const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containerColour),
            height: 90,
            width: 350,
            child:  Row(
              children: [
                const Text(
                  "4.",
                  style:
                  TextStyle(color:colourAsmani,fontSize: 15),
                ),
                const SizedBox(width: 10,),
                Expanded(
                    child:  Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.",
                      style:GoogleFonts.poppins(
                        textStyle:  const TextStyle(color:darkpurple,fontSize: 13),
                      ),)
                ),
              ],
            )
        ),
        Container(
            margin:  const EdgeInsets.only(top: 20),
            padding:  const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containerColour),
            height: 90,
            width: 350,
            child:  Row(
              children: [
                const Text(
                  "5.",
                  style:
                  TextStyle(color:colourAsmani,fontSize: 15),
                ),
                const SizedBox(width: 10,),
                Expanded(
                    child:  Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.",
                      style:GoogleFonts.poppins(
                        textStyle:  const TextStyle(color:darkpurple,fontSize: 13),
                      ),)
                ),
              ],
            )
        ),
        Container(
            margin:  const EdgeInsets.only(top: 20),
            padding:  const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containerColour),
            height: 90,
            width: 350,
            child:  Row(
              children: [
                const Text(
                  "6.",
                  style:
                  TextStyle(color:colourAsmani,fontSize: 15),
                ),
                const SizedBox(width: 10,),
                Expanded(
                    child:  Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.",
                      style:GoogleFonts.poppins(
                        textStyle:  const TextStyle(color:darkpurple,fontSize: 13),
                      ),)
                ),
              ],
            )
        ),
        Container(
            margin:  const EdgeInsets.only(top: 20),
            padding:  const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containerColour),
            height: 90,
            width: 350,
            child:  Row(
              children: [
                const Text(
                  "7.",
                  style:
                  TextStyle(color:colourAsmani,fontSize: 15),
                ),
                const SizedBox(width: 10,),
                Expanded(
                    child:  Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.",
                      style:GoogleFonts.poppins(
                        textStyle:  const TextStyle(color:darkpurple,fontSize: 13),
                      ),)
                ),
              ],
            )
        )
      ],
    );
  }
}

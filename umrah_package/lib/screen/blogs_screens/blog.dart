import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_theme/app_assets.dart';
import '../../app_theme/app_colour.dart';

class BlogScreen extends StatefulWidget {
  static String routeName="/blog_screen";
   const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
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
        backgroundColor:  lightGrey1,
        title: Text(
          "Blogs",
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
              child: column("Can Foreign Pilgrim outside the GCC perform umrah this year?","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam..."))),
    ));
  }
  Widget column(String text,String text2){
    return Column(
        children: [
          Container(
              margin:  const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:  containerColour),
              height: 900,
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
                    child: Text(
                        text,
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            color:  blackColour,
                            fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    children: [
                      Container(
                          margin:  const EdgeInsets.only(left: 10,top: 10),
                          child:  const Icon(
                            Icons.lock_clock,
                            color:lightGrey,
                          )),
                      const SizedBox(width: 10),
                      Text("24 Nov, 2022", style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: lightGrey))
                    ],
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dol"
                            "ore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color:  blackColour)),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color:  blackColour)),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                       text,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color:  blackColour)),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color:  blackColour)),
                  ),
                  Container(
                    padding:  const EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                        text2,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color:  blackColour)),
                  ),
                ],
              )),
        ]);
  }
}

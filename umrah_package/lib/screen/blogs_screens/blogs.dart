import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_theme/app_assets.dart';
import '../../app_theme/app_colour.dart';
import 'blog.dart';

class BlogsScreen extends StatefulWidget {
  static String routeName="/blogs_screen";
   const BlogsScreen({super.key});

  @override
  State<BlogsScreen> createState() => _BlogsScreenState();
}

class _BlogsScreenState extends State<BlogsScreen> {
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
              title: Text(
                "Blogs",
                style: GoogleFonts.poppins(
                  textStyle:  const TextStyle(
                      color:containerColour, fontSize: 17),
                ),
              ),
            ),
            body: mainContainer("Can Foreign Pilgrim outside the GCC perform umrah this year?","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dol""ore magna aliquyam erat, sed diam voluptua. At vero eos et accusam...","Read More")));
  }
  Widget mainContainer(String text1,String text2,button){
    return Container(
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
            child: Column(children: [
              Container(
                  margin:  const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: containerColour),
                  height: 500,
                  width: 350,
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        padding:  const EdgeInsets.all(10),
                        child:  const Image(
                            image: AssetImage(
                              AppAssets.rectangle1,
                            ),
                            fit: BoxFit.fitWidth),
                      ),
                      Container(
                        padding:  const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                            text1,
                            style: GoogleFonts.poppins(
                                fontSize: 17,
                                color:  blackColour,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        padding:  const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                            text2,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color:
                                blackColour)),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin:  const EdgeInsets.only(right: 50),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                    const MaterialStatePropertyAll(
                                        colourAsmani),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20)))),
                                onPressed: () {
                                  Navigator.pushNamed(context, BlogScreen.routeName);
                                },
                                child: Text(button,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color:  containerColour))),
                          ),
                          Text("24 Nov, 2022",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color:  lightGrey))
                        ],
                      )
                    ],
                  )),
              Container(
                  margin:  const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: containerColour),
                  height: 500,
                  width: 350,
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        padding:  const EdgeInsets.all(10),
                        child:  const Image(
                            image: AssetImage(
                              AppAssets.rectangle1,
                            ),
                            fit: BoxFit.fitWidth),
                      ),
                      Container(
                        padding:  const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                            text1,
                            style: GoogleFonts.poppins(
                                fontSize: 17,
                                color:  blackColour,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        padding:  const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          text2,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color:
                                blackColour)),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin:  const EdgeInsets.only(right: 50),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                    const MaterialStatePropertyAll(
                                        colourAsmani),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20)))),
                                onPressed: () {
                                  Navigator.pushNamed(context, BlogsScreen.routeName);
                                },
                                child: Text(button,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color:  containerColour))),
                          ),
                          Text("24 Nov, 2022",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color:  lightGrey))
                        ],
                      )
                    ],
                  )),
              Container(
                  margin:  const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: containerColour),
                  height: 500,
                  width: 350,
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        padding:  const EdgeInsets.all(10),
                        child:  const Image(
                            image: AssetImage(
                              AppAssets.rectangle1,
                            ),
                            fit: BoxFit.fitWidth),
                      ),
                      Container(
                        padding:  const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                           text1,
                            style: GoogleFonts.poppins(
                                fontSize: 17,
                                color:  blackColour,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        padding:  const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                            text2,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color:
                                blackColour)),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin:  const EdgeInsets.only(right: 50),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                    const MaterialStatePropertyAll(
                                        colourAsmani),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20)))),
                                onPressed: () {
                                  Navigator.pushNamed(context, BlogsScreen.routeName);
                                },
                                child: Text(button,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color:  containerColour))),
                          ),
                          Text("24 Nov, 2022",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color:  lightGrey))
                        ],
                      )
                    ],
                  ))
            ])));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';
import 'package:umrah_package/screen/blogs_screens/blogs.dart';

import '../../app_theme/app_colour.dart';
import '../auth_screens/feedback_qna.dart';
import '../auth_screens/loginpage.dart';


class ProfilePage extends StatefulWidget {
  static String routeName="/profile_page";
   const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor:  colourAsmani,
        title: Text(
          "My profile",
          style: GoogleFonts.poppins(
            textStyle:  const TextStyle(
                color: containerColour, fontSize: 17),
          ),
        ),
      ),
      drawer: navigationDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.topCenter,
        decoration:  const BoxDecoration(
            color:allconcol,
            image: DecorationImage(
                image: AssetImage(AppAssets.appSliderImg4))),
        child: mainColumn(),
      ),
    ));
  }
  Widget navigationDrawer(){
    return Drawer(
      backgroundColor:  containerColour,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin:  const EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "umrah",
                  style: GoogleFonts.philosopher(
                    textStyle:  const TextStyle(
                        color: greyColour, fontSize: 26),
                  ),
                ),
              ),
              Container(
                margin:  const EdgeInsets.only(left: 2, top: 20),
                child: Text(
                  "book.com",
                  style: GoogleFonts.philosopher(
                    textStyle:  const TextStyle(
                        color: blackColour, fontSize: 26),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color:  lightwhite, width: 1)),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin:  const EdgeInsets.all(10),
                decoration:  const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AppAssets.home,
                      ),
                      fit: BoxFit.cover,
                    )),
                height: 18,
                width: 18,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "Home",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  textStyle:  const TextStyle(
                      color: blackColour, fontSize: 13),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin:  const EdgeInsets.all(10),
                decoration:  const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AppAssets.path,
                      ),
                      fit: BoxFit.cover,
                    )),
                height: 18,
                width: 18,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "About Us",
                style: GoogleFonts.poppins(
                  textStyle:  const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: blackColour,
                      fontSize: 13),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin:  const EdgeInsets.all(10),
                decoration:  const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AppAssets.group212,
                      ),
                      fit: BoxFit.cover,
                    )),
                height: 18,
                width: 18,
              ),
              const SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: () {
                   Navigator.pushNamed(context, FeedBackQna.routeName);
                },
                child: Text(
                  "FeedBack",
                  style: GoogleFonts.poppins(
                    textStyle:  const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: blackColour,
                        fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin:  const EdgeInsets.all(10),
                decoration:  const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AppAssets.group213,
                      ),
                      fit: BoxFit.cover,
                    )),
                height: 18,
                width: 18,
              ),
              const SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: () {
                   Navigator.pushNamed(context, BlogsScreen.routeName);
                },
                child: Text(
                  "Blog",
                  style: GoogleFonts.poppins(
                    textStyle:  const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: blackColour,
                        fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin:  const EdgeInsets.all(10),
                decoration:  const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AppAssets.group214,
                      ),
                      fit: BoxFit.cover,
                    )),
                height: 18,
                width: 18,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "Logout",
                style: GoogleFonts.poppins(
                  textStyle:  const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: blackColour,
                      fontSize: 13),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color:  lightwhite, width: 1)),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin:  const EdgeInsets.only(left: 15),
                child: Text("Pillars of umrah",
                    style: GoogleFonts.poppins(
                      textStyle:  const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: blackColour,
                          fontSize: 13),
                    )),
              ),
              Container(
                margin:  const EdgeInsets.only(left: 120),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:  lime,
                ),
                height: 30,
                width: 30,
                child:  const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin:  const EdgeInsets.only(left: 15),
                child: Text("Important tips",
                    style: GoogleFonts.poppins(
                      textStyle:  const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: blackColour,
                          fontSize: 13),
                    )),
              ),
              Container(
                margin:  const EdgeInsets.only(left: 127),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:  lime,
                ),
                height: 30,
                width: 30,
                child:  const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin:  const EdgeInsets.only(left: 15),
                child: Text("Accessibility",
                    style: GoogleFonts.poppins(
                      textStyle:  const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: blackColour,
                          fontSize: 13),
                    )),
              ),
              Container(
                margin:  const EdgeInsets.only(left: 138),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:  lime,
                ),
                height: 30,
                width: 30,
                child:  const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin:  const EdgeInsets.only(left: 15),
                child: Text("Ziyatah",
                    style: GoogleFonts.poppins(
                      textStyle:  const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: blackColour,
                          fontSize: 13),
                    )),
              ),
              Container(
                margin:  const EdgeInsets.only(left: 170),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:  lime,
                ),
                height: 30,
                width: 30,
                child:  const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Widget mainColumn(){
    return Column(
        children: [
          const SizedBox(
            height: 33,
          ),
          Container(
            alignment: Alignment.topCenter,
            height: 223,
            width: 333,
            child: Stack(
              children: [
                const SizedBox(
                    height: 157,
                    width: 333,
                    child: Image(image: AssetImage(AppAssets.group204))),
                Container(
                  margin:  const EdgeInsets.only(left: 100, top: 101.77),
                  alignment: Alignment.center,
                  height: 122,
                  width: 122,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          width: 11, color: allconcol)),
                  child: Container(
                    height: 130,
                    width: 130,
                    alignment: Alignment.center,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        const Image(
                          image: AssetImage(AppAssets.layer2),
                          fit: BoxFit.fill,
                        ),
                        Container(
                          height: 33,
                          width: 33,
                          margin:  const EdgeInsets.only(left: 68, top: 68),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.white, width: 2),
                            color:  colourAsmani,
                          ),
                          child: Image.asset(
                            AppAssets.path1183,
                            height: 13.94,
                            width: 13.6,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 23.11,
          ),
          Text(
            "Guest",
            style: GoogleFonts.lexend(
                textStyle:  const TextStyle(
                    fontSize: 17,
                    color: offblack,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 11,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage(AppAssets.path837)),
              Text(
                "+99046XXXXXX",
                style: GoogleFonts.poppins(
                    textStyle:  const TextStyle(
                      fontSize: 13,
                      color: lightGrey,
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 48,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 83,
                width: 83,
                decoration: BoxDecoration(
                    color:  containerColour,
                    borderRadius: BorderRadius.circular(10)),
                child:  const Image(image: AssetImage(AppAssets.group205)),
              ),
              Container(
                height: 83,
                width: 83,
                decoration: BoxDecoration(
                    color:  containerColour,
                    borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
                    },
                    child:  const Image(image: AssetImage(AppAssets.group209))),
              ),
              Container(
                height: 83,
                width: 83,
                decoration: BoxDecoration(
                    color:  containerColour,
                    borderRadius: BorderRadius.circular(10)),
                child:  const Image(image: AssetImage(AppAssets.group210)),
              )
            ],
          )
        ]);
  }
}

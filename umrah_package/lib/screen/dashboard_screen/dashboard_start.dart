import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';
import 'package:umrah_package/screen/blogs_screens/blogs.dart';
import 'package:umrah_package/screen/pillars_umrah_screens/umrah_tavaf.dart';
import 'package:umrah_package/screen/profile_screens/profile_page.dart';
import 'package:umrah_package/screen/umrah_package_screens/best_umrah_package.dart';
import 'package:umrah_package/screen/ziyarat_screens/acembality_page.dart';
import 'package:umrah_package/screen/ziyarat_screens/jiyarat_page.dart';


import '../../app_theme/app_colour.dart';

import '../auth_screens/feedback_qna.dart';
import '../auth_screens/register_Page.dart';
import '../auth_screens/inquiry_Page.dart';
import '../enquiry_screens/enquiry_list_page.dart';

import 'compleatumrah.dart';

class DashbordScreen extends StatefulWidget {
  static String routeName="/dashbord_screen";

  const DashbordScreen({super.key});

  @override
  State<DashbordScreen> createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:bottomNavigation("Inquiry list","Reports","Profile"),
        drawer: navigatinDrawer(),
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: colourAsmani,
          title: Text(
            "Dashboard",
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15)),
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
          child: SingleChildScrollView(
              child: mainColumn(),
        ),
      ),
    ));
  }


  Widget bottomNavigation(String text1,String text2,String text3){
    return  BottomNavigationBar(
      selectedItemColor: colourAsmani,
      unselectedItemColor: const Color.fromRGBO(41, 45, 50, 1),
      items: [
        const BottomNavigationBarItem(
            label: "Home",
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(AppAssets.group34)),
              ],
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Column(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, InquiryPage.routeName);
                    },
                    child: const Image(image: AssetImage(AppAssets.group358))),
                 Text(text1)
              ],
            )),
        BottomNavigationBarItem(
          label: "",
          icon: Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, EnquiryListPage.routeName);
                  },
                  child: const Image(image: AssetImage(AppAssets.group36))),
               Text(text2)
            ],
          ),
        ),
        BottomNavigationBarItem(
            label: "",
            icon: Column(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, ProfilePage.routeName);
                    },
                    child: const Image(image: AssetImage(AppAssets.group37))),
                 Text(text3)
              ],
            )),
      ],
    );
  }
  Widget navigatinDrawer(){
    return Drawer(
      backgroundColor: containerColour,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "umrah",
                  style: GoogleFonts.philosopher(
                    textStyle: const TextStyle(color: greyColour, fontSize: 26),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 2, top: 20),
                child: Text(
                  "book.com",
                  style: GoogleFonts.philosopher(
                    textStyle: const TextStyle(color: blackColour, fontSize: 26),
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
                border: Border.all(color: lightwhite, width: 1)),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
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
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(DashbordScreen.routeName, (route) => false);
                },
                child: Text(
                  "Home",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    textStyle: const TextStyle(color: blackColour, fontSize: 13),
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
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
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
                  textStyle: const TextStyle(
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
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
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
                    textStyle: const TextStyle(
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
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
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
                    textStyle: const TextStyle(
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
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
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
                  textStyle: const TextStyle(
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
                border: Border.all(color: lightwhite, width: 1)),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, UmrahTavaf.routeName);
                  },
                  child: Text("Pillars of umrah",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: blackColour,
                            fontSize: 13),
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 120),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: lime,
                ),
                height: 30,
                width: 30,
                child: const Icon(
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
                margin: const EdgeInsets.only(left: 15),
                child: Text("Important tips",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: blackColour,
                          fontSize: 13),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(left: 127),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: lime,
                ),
                height: 30,
                width: 30,
                child: const Icon(
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
                margin: const EdgeInsets.only(left: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Accembality.routeName);
                  },
                  child: Text("Accessibility",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: blackColour,
                            fontSize: 13),
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 138),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: lime,
                ),
                height: 30,
                width: 30,
                child: const Icon(
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
                margin: const EdgeInsets.only(left: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Jiyarat.routeName);
                  },
                  child: Text("Ziyatah",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: blackColour,
                            fontSize: 13),
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 170),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: lime,
                ),
                height: 30,
                width: 30,
                child: const Icon(
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
        Container(
          height: 88,
          width: 333,
          margin: const EdgeInsets.only(top: 14),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Al ",
                    style: GoogleFonts.philosopher(
                        textStyle: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    "Amin",
                    style: GoogleFonts.philosopher(
                        textStyle: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: colourAsmani)),
                  )
                ],
              ),
              Text(
                "Get a great price on your umrah package",
                style: GoogleFonts.poppins(
                    textStyle:
                    const TextStyle(fontSize: 12, color: blackColour)),
              ),
            ],
          ),
        ),
        CarouselSlider(
          items: [
            Image.asset(
              AppAssets.tourandtravel,
            ),
            Image.asset(AppAssets.tourandtravel),
            Image.asset(AppAssets.tourandtravel),
            Image.asset(AppAssets.tourandtravel),
            Image.asset(AppAssets.tourandtravel),
          ],
          options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            autoPlay: true,
            autoPlayInterval: const Duration(milliseconds: 150),
            autoPlayAnimationDuration: const Duration(milliseconds: 1500),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                  color: colourAsmani,
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              width: 9,
            ),
            Container(
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                  color: colourAsmani,
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              width: 9,
            ),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: colourAsmani)),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          height: 51,
          width: 275,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: colourAsmani),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  AppAssets.add,

                  height: 22.63,
                  width: 19.81,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterPage.routeName);
                  },
                  child: Text(
                    "Join Al-Amin Family",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: containerColour, fontSize: 15)),
                  ),
                )
              ]),
        ),
        const SizedBox(
          height: 27.91,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 21),
              child: Text(
                "Best Umrah Packages",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: blackColour,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(right: 21),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, BestUmrahPackage.routeName);
                    },
                    child: Row(
                      children: [
                        Text(
                          "View All ",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: colourAsmani,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 15,
                          color: colourAsmani,
                        )
                      ],
                    )))
          ],
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 320,
            scrollDirection: Axis.horizontal,
            autoPlay: true,
            autoPlayInterval: const Duration(milliseconds: 150),
            autoPlayAnimationDuration: const Duration(milliseconds: 1500),
          ),
          items: [1].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 271,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Container(
                        height: 137,
                        width: 271,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  AppAssets.kaabaimage,
                                ),
                                fit: BoxFit.fill)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Special Umrah Package",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: colourAsmani,
                            ),
                            child: Text(
                              "15D / 14N",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: containerColour,
                                    fontSize: 10,
                                  )),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Container(
                        height: 48,
                        width: 230,
                        decoration: BoxDecoration(
                            color: containerColour,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: offgery)),
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
                        height: 18.94,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: offblue,
                              size: 20,
                            ),
                            Text(
                              " From",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 12,
                                  )),
                            ),
                            Text(
                              " Mumbai",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: blackColour,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12.13,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.settings_outlined,
                              color: offblue,
                              size: 20,
                            ),
                            Text(
                              " Operated by ",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 12,
                                  )),
                            ),
                            Text(
                              " Akbar Travels",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: colourAsmani,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(
                              width: 35,
                            ),
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
                  ),);
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 17,
        ),
        CarouselSlider(
          options: CarouselOptions(height: 320.0),
          items: [1].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 271,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Container(
                        height: 137,
                        width: 271,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  AppAssets.kaabaimage,
                                ),
                                fit: BoxFit.fill)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Special Umrah Package",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: colourAsmani,
                            ),
                            child: Text(
                              "15D / 14N",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: containerColour,
                                    fontSize: 10,
                                  )),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Container(
                        height: 48,
                        width: 230,
                        decoration: BoxDecoration(
                            color: containerColour,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: offgery)),
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
                        height: 18.94,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: offblue,
                              size: 20,
                            ),
                            Text(
                              " From",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 12,
                                  )),
                            ),
                            Text(
                              " Mumbai",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: blackColour,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12.13,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.settings_outlined,
                              color: offblue,
                              size: 20,
                            ),
                            Text(
                              " Operated by ",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 12,
                                  )),
                            ),
                            Text(
                              " Akbar Travels",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: colourAsmani,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(
                              width: 35,
                            ),
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
                  ),);
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 17,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 21),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, CompletedUmrah.routeName);
                },
                child: Text(
                  "Past Umrah Packages",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: blackColour,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(right: 21),
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "View All ",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: colourAsmani,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 15,
                          color: colourAsmani,
                        )
                      ],
                    )))
          ],
        ),
        CarouselSlider(
          options: CarouselOptions(height: 320.0),
          items: [1].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 271,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Container(
                        height: 137,
                        width: 271,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  AppAssets.kaabaimage,
                                ),
                                fit: BoxFit.fill)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Special Umrah Package",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: colourAsmani,
                            ),
                            child: Text(
                              "15D / 14N",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: containerColour,
                                    fontSize: 10,
                                  )),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Container(
                        height: 48,
                        width: 230,
                        decoration: BoxDecoration(
                            color: containerColour,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: offgery)),
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
                        height: 18.94,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: offblue,
                              size: 20,
                            ),
                            Text(
                              " From",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 12,
                                  )),
                            ),
                            Text(
                              " Mumbai",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: blackColour,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12.13,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.settings_outlined,
                              color: offblue,
                              size: 20,
                            ),
                            Text(
                              " Operated by ",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 12,
                                  )),
                            ),
                            Text(
                              " Akbar Travels",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: colourAsmani,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(
                              width: 35,
                            ),
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
                  ),);
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 17,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          height: 58,
          width: 333,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: containerColour),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pillars of umrah",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: blackColour)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, UmrahTavaf.routeName);
                  },
                  child: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: lime),
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: offblack,
                    ),
                  ),
                )
              ]),
        ),
        const SizedBox(
          height: 17,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          height: 58,
          width: 333,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: containerColour),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, BlogsScreen.routeName);
                  },
                  child: Text(
                    "Important tips",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: blackColour)),
                  ),
                ),
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: lime),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                    color: offblack,
                  ),
                )
              ]),
        ),
        const SizedBox(
          height: 17,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          height: 58,
          width: 333,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: containerColour),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Accembality.routeName);
                  },
                  child: Text(
                    "Accessibility",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: blackColour)),
                  ),
                ),
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: lime),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                    color: offblack,
                  ),
                )
              ]),
        ),
        const SizedBox(
          height: 17,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          height: 58,
          width: 333,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: containerColour),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Jiyarat.routeName);
                  },
                  child: Text(
                    "Ziyatah",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: blackColour)),
                  ),
                ),
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: lime),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                    color: offblack,
                  ),
                )
              ]),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 51,
          width: 275,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: colourAsmani),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  AppAssets.download,
                  height: 22.63,
                  width: 19.81,
                ),
                Text(
                  "Download Brochure",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: containerColour, fontSize: 15)),
                )
              ]),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';

import '../../app_theme/app_colour.dart';

import '../dashboard_screen/compleatumrah.dart';
import 'enquiry_page.dart';

class EnquiryListPage extends StatefulWidget {
  static String routeName="/enquiry_list_page";
  const EnquiryListPage({super.key});

  @override
  State<EnquiryListPage> createState() => _EnquiryListPageState();
}

class _EnquiryListPageState extends State<EnquiryListPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: navigationDrawer(),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: lightGrey1,
        title: Text(
          "Inquiry list",
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
                image: AssetImage(AppAssets.fullbackground))),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 27.91,
            ),
            Container(
              height: 125,
              width: 333,
              decoration: BoxDecoration(
                  color: lightGrey1, borderRadius: BorderRadius.circular(10)),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                const SizedBox(
                  width: 25,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 21,
                    ),
                    firsttext("Total Commission"),
                    secoundText(  "INR 3245"),
                    const SizedBox(
                      height: 14,
                    ),
                    thirdText("23 Completed Trips"),
                  ],
                ),
                const SizedBox(
                  width: 45,
                ),
                fourContainerText("Withdraw"),
              ]),
            ),
            const SizedBox(
              height: 15.91,
            ),
            row( "Completed Umrah",  "View All "),
            cursurSlider(),
            rows2("Inquiry list","View All "),
            cursurSliderSecound(),
            const SizedBox(
              height: 15.91,
            ),
            const SizedBox(
              height: 15.91,
            )
          ],
        )),
      ),
    ));
  }

  Widget navigationDrawer() {
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
                    textStyle: const TextStyle(color: darkpurple, fontSize: 26),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: lightwhite, width: 1)),
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
                  //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>  DashboardScreen(),), (route) => false);
                },
                child: Text(
                  "Home",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    textStyle: const TextStyle(color: darkpurple, fontSize: 13),
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
                      color: darkpurple,
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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) =>  FeedBackQna(),
                  //     ));
                },
                child: Text(
                  "FeedBack",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: darkpurple,
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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) =>  Blogs(),
                  //     ));
                },
                child: Text(
                  "Blog",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: darkpurple,
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
                      color: darkpurple,
                      fontSize: 13),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: lightwhite, width: 1)),
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
                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>  Umrahtavaf(),));
                  },
                  child: Text("Pillars of umrah",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: darkpurple,
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
                          color: darkpurple,
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
                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>  Accembality(),));
                  },
                  child: Text("Accessibility",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: darkpurple,
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) =>  Jiyarat(),));
                  },
                  child: Text("Ziyatah",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: darkpurple,
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

  Widget firsttext(String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          textStyle: const TextStyle(fontSize: 13, color: containerColour)),
    );
  }

  Widget secoundText(String text) {
    return Text(
    text,
      style: GoogleFonts.poppins(
          textStyle: const TextStyle(fontSize: 25, color: containerColour)),
    );
  }

  Widget thirdText(String text) {
    return Text(text,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(fontSize: 11, color: containerColour)));
  }

  Widget fourContainerText(String text) {
    return Container(
      height: 39,
      width: 128,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(0, 0, 0, 0.22)),
      child: Text(
        text,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(fontSize: 14, color: containerColour)),
      ),
    );
  }

  Widget row(String text1,String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 21),
          child: Text(
           text1,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: darkpurple,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(right: 21),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, CompletedUmrah.routeName);
                },
                child: Row(
                  children: [
                    Text(
                    text2,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: lightGrey1,
                              fontSize: 11,
                              fontWeight: FontWeight.bold)),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 15,
                      color: lightGrey1,
                    )
                  ],
                )))
      ],
    );
  }

  Widget cursurSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 225,
      ),
      disableGesture: true,
      items: [1].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              height: 224,
              width: 333,
              padding: const EdgeInsets.only(top: 21),
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: containerColour),
              child: Column(
                children: [
                  Row(children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Haj 1444 (H)-2023 CE",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: lightGrey1,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Text(
                      "5 Jun 23",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        color: offblack,
                        fontSize: 10,
                      )),
                    )
                  ]),
                  const SizedBox(
                    height: 19,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 74,
                    width: 298,
                    margin: const EdgeInsets.only(left: 18, right: 18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: lightPnk1)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: aaa),
                                child: Text(
                                  "10",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: green,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Total",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  color: darkBlack,
                                  fontSize: 12,
                                )),
                              )
                            ],
                          ),
                          Container(height: 52, width: 1, color: lightPnk1),
                          Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: lightAsmani),
                                child: Text(
                                  "7",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: offRama,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Adult",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  color: darkBlack,
                                  fontSize: 12,
                                )),
                              )
                            ],
                          ),
                          Container(height: 52, width: 1, color: lightPnk1),
                          Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: lightPnk),
                                child: Text(
                                  "3",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: darkPink2,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Children",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  color: darkBlack,
                                  fontSize: 12,
                                )),
                              )
                            ],
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    height: 59,
                    width: 298,
                    margin: const EdgeInsets.only(left: 18, right: 18),
                    padding: const EdgeInsets.only(left: 22, right: 5),
                    decoration: BoxDecoration(
                        color: lightGrey1,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Commission",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              color: containerColour,
                              fontSize: 15,
                            )),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 47,
                            width: 96,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: lightAsmani,
                            ),
                            child: Text(
                              "INR 3245",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                color: containerColour,
                                fontSize: 15,
                              )),
                            ),
                          )
                        ]),
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget rows2(String text1,String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 21),
          child: Text(
            text1,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: darkpurple,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(right: 21),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, EnquiryPage.routeName);
                },
                child: Row(
                  children: [
                    Text(
                      text2,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: lightGrey1,
                              fontSize: 11,
                              fontWeight: FontWeight.bold)),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 15,
                      color: lightGrey1,
                    )
                  ],
                )))
      ],
    );
  }

  Widget cursurSliderSecound() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 350,
      ),
      disableGesture: true,
      items: [1].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              height: 224,
              width: 333,
              padding: const EdgeInsets.only(top: 21),
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: containerColour),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Name here",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: lightGrey1,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      width: 115,
                    ),
                    Column(
                      children: [
                        Text(
                          "Created on",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            color: darkPink,
                            fontSize: 10,
                          )),
                        ),
                        Text(
                          "5 Jun 23",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            color: offblack,
                            fontSize: 10,
                          )),
                        ),
                      ],
                    )
                  ]),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 18),
                    height: 28,
                    width: 99,
                    decoration: BoxDecoration(
                        color: greenLight,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      "Confirmed",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: greenDark,
                              fontSize: 13,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: aaa),
                              child: Text(
                                "10",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: greenPaid,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Total",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                color: darkBlack,
                                fontSize: 12,
                              )),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: lightAsmani),
                              child: Text(
                                "7",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: offRama,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Adult",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                color: darkBlack,
                                fontSize: 12,
                              )),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: lightPnk),
                              child: Text(
                                "3",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: darkPink2,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Children",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                color: darkBlack,
                                fontSize: 12,
                              )),
                            )
                          ],
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 10),
                            child:
                                const Image(image: AssetImage(AppAssets.group298)))
                      ]),
                  const SizedBox(
                    height: 15.72,
                  ),
                  Container(
                      height: 1, width: double.infinity, color: lightwhite),
                  const SizedBox(
                    height: 18,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 18,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 84,
                                width: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage(AppAssets.kaabaimage),
                                        fit: BoxFit.fill)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(top: 11),
                                height: 28,
                                width: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: colourAsmani),
                                child: Text(
                                  '15D / 14N',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    color: containerColour,
                                    fontSize: 10,
                                  )),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Special Umrah Package',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: darkpurple,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 16),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image(
                                        image:
                                            AssetImage(AppAssets.fullbackground)),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Image(
                                        image:
                                            AssetImage(AppAssets.group13)),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Image(
                                        image:
                                            AssetImage(AppAssets.group14)),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Image(
                                        image:
                                            AssetImage(AppAssets.group17)),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.location_on_outlined,
                                      color: offblue,
                                      size: 15,
                                    ),
                                    Text(
                                      " From",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                        color: darkpurple,
                                        fontSize: 11,
                                      )),
                                    ),
                                    Text(
                                      " Mumbai",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: darkpurple,
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 14.62),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.settings_outlined,
                                      color: offblue,
                                      size: 15,
                                    ),
                                    Text(
                                      " Operated by ",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                        color: darkpurple,
                                        fontSize: 9,
                                      )),
                                    ),
                                    Text(
                                      " Akbar Travels",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: colourAsmani,
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

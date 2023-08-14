import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';

import '../../app_theme/app_colour.dart';

class CompletedUmrah extends StatefulWidget {
  static String routeName="/completedumrah";
  const CompletedUmrah({super.key});

  @override
  State<CompletedUmrah> createState() => _CompletedUmrahState();
}

class _CompletedUmrahState extends State<CompletedUmrah> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(
          width: 230,
        ),
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: lightGrey1,
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
              child: Column(
            children: [
              const SizedBox(
                height: 27.91,
              ),
              textRow("Completed Umrah","View All "),
              const SizedBox(
                height: 15.91,
              ),
              cursurSlider( "Haj 1444 (H)-2023 CE", "5 Jun 23", "10", "Total", "7", "Adult","3",  "Children","Commission","INR 3245"),
              const SizedBox(
                height: 31.76,
              ),
              textRow2( "Best Umrah Packages", "View All "),
              cursurSliderStack( "Special Umrah Package", "15D / 14N", " From"," Mumbai"," Operated by", " Akbar Travels", "Inquiry"),
              textRow3("Past Umrah Packages","View All "),
              cursurSliderStack1( "Special Umrah Package","15D / 14N"," From",  " Mumbai", " Operated by", " Akbar Travels","Inquiry"),
              const SizedBox(
                height: 17,
              ),
            ],
          )),
        ),
      ),
    );
  }

  Widget textRow(String text1,String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 21),
          child: Text(
            text1,
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
                onPressed: () {},
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

  Widget cursurSlider(String text1,String text2,String text3,String text4,String text5,String text6,String text7,String text8,String text9,String text10,) {
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
                     text1,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: lightGrey1,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Text(
                     text2,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        color: offblack,
                        fontSize: 13,
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
                                 text3,
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
                               text4,
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
                                 text5,
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
                               text6,
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
                                  text7,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color:
                                              Color.fromRGBO(214, 90, 132, 1),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                              text8,
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
                    padding: const EdgeInsets.only(left: 22, right: 5),
                    decoration: BoxDecoration(
                        color: lightGrey1,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text9,
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
                              text10,
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

  Widget textRow2(String text1,String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 21),
          child: Text(
           text1,
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
                onPressed: () {},
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

  Widget cursurSliderStack(String text1,String text2,String text3,String text4,String text5,String text6,String text7,) {
    return CarouselSlider(
      options: CarouselOptions(height: 400),
      items: [1].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.only(left: 10),
                width: 333,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30)),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
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
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                 text1,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: blackColour,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width: 66,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: lightGrey1,
                                  ),
                                  child: Text(
                                   text2,
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
                            height: 22,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          color: offblue,
                                          size: 23,
                                        ),
                                        Text(
                                         text3,
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                            color: blackColour,
                                            fontSize: 14,
                                          )),
                                        ),
                                        Text(
                                          text4,
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  color: blackColour,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.settings_outlined,
                                      color: offblue,
                                      size: 23,
                                    ),
                                    Text(
                                      text5,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                        color: blackColour,
                                        fontSize: 14,
                                      )),
                                    ),
                                    Text(
                                     text6,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: lightGrey1,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 54,
                      width: 234,
                      margin: const EdgeInsets.only(top: 343),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: containerColour,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: glow, width: 4)),
                      child: Text(
                       text7,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 15,
                                color: chiku,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ));
          },
        );
      }).toList(),
    );
  }

  Widget textRow3(String text1,String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 21),
          child: Text(
            text1,
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
                onPressed: () {},
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

  Widget cursurSliderStack1(String text1,String text2,String text3,String text4,String text5,String text6,String text7,) {
    return CarouselSlider(
      options: CarouselOptions(height: 400),
      items: [1].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.only(left: 10),
                width: 333,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30)),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
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
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                 text1,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: blackColour,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width: 66,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: lightGrey1,
                                  ),
                                  child: Text(
                                    text2,
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
                            height: 22,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          color: offblue,
                                          size: 23,
                                        ),
                                        Text(
                                          text3,
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                            color: blackColour,
                                            fontSize: 14,
                                          )),
                                        ),
                                        Text(
                                        text4,
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  color: blackColour,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.settings_outlined,
                                      color: offblue,
                                      size: 23,
                                    ),
                                    Text(
                                     text5,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                        color: blackColour,
                                        fontSize: 14,
                                      )),
                                    ),
                                    Text(
                                     text6,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: lightGrey1,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 54,
                      width: 234,
                      margin: const EdgeInsets.only(top: 343),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: containerColour,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: glow, width: 4)),
                      child: Text(
                        text7,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 15,
                                color: chiku,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ));
          },
        );
      }).toList(),
    );
  }
}

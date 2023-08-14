import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';

import '../../app_theme/app_colour.dart';

class EnquiryPage extends StatefulWidget {
  static String routeName="/enquiry_page";
  const EnquiryPage({super.key});

  @override
  State<EnquiryPage> createState() => _EnquiryPageState();
}

class _EnquiryPageState extends State<EnquiryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: colourAsmani,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 15,
            )),
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
                image: AssetImage(AppAssets.appSliderImg4))),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 27.91,
            ),
            Container(
              height: 345,
              width: 310,
              padding: const EdgeInsets.only(top: 21),
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: containerColour),
              child: mainColumn(),
            ),
            const SizedBox(
              height: 15.91,
            ),
            Container(
              height: 345,
              width: 310,
              padding: const EdgeInsets.only(top: 21),
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: containerColour),
              child: secoundColumn(),
            ),
            const SizedBox(
              height: 15.91,
            ),
            Container(
              height: 345,
              width: 310,
              padding: const EdgeInsets.only(top: 21),
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: containerColour),
              child: thirdColumn(),
            ),
            const SizedBox(
              height: 15.91,
            ),
          ],
        )),
      ),
    ));
  }

  Widget mainColumn() {
    return Column(
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
                    color: colourAsmani,
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
              color: greenLight, borderRadius: BorderRadius.circular(30)),
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
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
                    borderRadius: BorderRadius.circular(10), color: aaa),
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
                    borderRadius: BorderRadius.circular(10), color: lightPnk),
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
              child: const Image(image: AssetImage(AppAssets.group298)))
        ]),
        const SizedBox(
          height: 15.72,
        ),
        Container(height: 1, width: double.infinity, color: lightwhite),
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
                              image: AssetImage(AppAssets.kaabaimage),
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
                              color: blackColour,
                              fontSize: 10,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(image: AssetImage(AppAssets.fullbackground)),
                          SizedBox(
                            width: 25,
                          ),
                          Image(image: AssetImage(AppAssets.group13)),
                          SizedBox(
                            width: 25,
                          ),
                          Image(image: AssetImage(AppAssets.group14)),
                          SizedBox(
                            width: 25,
                          ),
                          Image(image: AssetImage(AppAssets.group17)),
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
                              color: blackColour,
                              fontSize: 11,
                            )),
                          ),
                          Text(
                            " Mumbai",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 14.62),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              color: blackColour,
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
    );
  }

  Widget secoundColumn() {
    return Column(
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
                    color: colourAsmani,
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
              color: greenLight, borderRadius: BorderRadius.circular(30)),
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
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
                    borderRadius: BorderRadius.circular(10), color: aaa),
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
                    borderRadius: BorderRadius.circular(10), color: lightPnk),
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
              child: const Image(image: AssetImage(AppAssets.group298)))
        ]),
        const SizedBox(
          height: 15.72,
        ),
        Container(height: 1, width: double.infinity, color: lightwhite),
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
                              image: AssetImage(AppAssets.kaabaimage),
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
                              color: blackColour,
                              fontSize: 10,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(image: AssetImage(AppAssets.fullbackground)),
                          SizedBox(
                            width: 25,
                          ),
                          Image(image: AssetImage(AppAssets.group13)),
                          SizedBox(
                            width: 25,
                          ),
                          Image(image: AssetImage(AppAssets.group14)),
                          SizedBox(
                            width: 25,
                          ),
                          Image(image: AssetImage(AppAssets.group17)),
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
                              color: blackColour,
                              fontSize: 11,
                            )),
                          ),
                          Text(
                            " Mumbai",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 14.62),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              color: blackColour,
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
    );
  }

  Widget thirdColumn() {
    return Column(
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
                    color: colourAsmani,
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
              color: greenLight, borderRadius: BorderRadius.circular(30)),
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
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
                    borderRadius: BorderRadius.circular(10), color: aaa),
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
                    borderRadius: BorderRadius.circular(10), color: lightPnk),
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
              child: const Image(image: AssetImage(AppAssets.group298)))
        ]),
        const SizedBox(
          height: 15.72,
        ),
        Container(height: 1, width: double.infinity, color: lightwhite),
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
                              image: AssetImage(AppAssets.kaabaimage),
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
                              color: blackColour,
                              fontSize: 10,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(image: AssetImage(AppAssets.fullbackground)),
                          SizedBox(
                            width: 25,
                          ),
                          Image(image: AssetImage(AppAssets.group13)),
                          SizedBox(
                            width: 25,
                          ),
                          Image(image: AssetImage(AppAssets.group14)),
                          SizedBox(
                            width: 25,
                          ),
                          Image(image: AssetImage(AppAssets.group17)),
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
                              color: blackColour,
                              fontSize: 11,
                            )),
                          ),
                          Text(
                            " Mumbai",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 14.62),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              color: blackColour,
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
    );
  }
}

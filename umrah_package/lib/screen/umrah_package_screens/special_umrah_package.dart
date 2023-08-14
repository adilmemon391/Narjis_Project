import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';

import '../../app_theme/app_colour.dart';

class SpecialUmrahPackage extends StatefulWidget {
  static String routeName="/SpecialUmrah_Package";
  const SpecialUmrahPackage({super.key});

  @override
  State<SpecialUmrahPackage> createState() => _SpecialUmrahPackageState();
}

class _SpecialUmrahPackageState extends State<SpecialUmrahPackage> {
  bool isReadmore1 = false;
  bool isReadmore2 = false;
  bool isReadmore3 = false;
  bool isReadmore4 = false;
  bool isReadmore5 = false;

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
              Icons.arrow_back_ios_new,
              size: 17,
            )),
        title: Text(
          "Special Umrah Package",
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
        child: SingleChildScrollView(child: mainColumn()),
      ),
    ));
  }

  Widget mainColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10),
              height: 570,
              width: 333,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                          width: 92,
                          height: 85,
                          image: AssetImage(
                            AppAssets.rectangle68,
                          )),
                      Image(
                          width: 92,
                          height: 85,
                          image: AssetImage(
                            AppAssets.rectangle69,
                          )),
                      Image(
                          width: 92,
                          height: 85,
                          image: AssetImage(
                            AppAssets.rectangle70,
                          )),
                    ],
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
                          "Special Umrah Package",
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
                            color: colourAsmani,
                          ),
                          child: Text(
                            "15D / 14N",
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
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "INR 84000",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: colourAsmani,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        " Amount per tax",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          color: gravy,
                          fontSize: 11,
                        )),
                      )
                    ],
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: offblue,
                                  size: 23,
                                ),
                                Text(
                                  " From",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    color: blackColour,
                                    fontSize: 14,
                                  )),
                                ),
                                Text(
                                  " Mumbai",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: blackColour,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                          const Image(
                              height: 48,
                              width: 84,
                              image: AssetImage(AppAssets.halal)),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Image(
                                height: 17.4,
                                width: 17.4,
                                image: AssetImage(AppAssets.menu)),
                            Text(
                              "  Category ",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                color: blackColour,
                                fontSize: 14,
                              )),
                            ),
                            Text(
                              "Normal",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: blackColour,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
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
                              size: 23,
                            ),
                            Text(
                              " Operated by",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                color: blackColour,
                                fontSize: 14,
                              )),
                            ),
                            Text(
                              " Akbar Travels",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: colourAsmani,
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
              margin: const EdgeInsets.only(top: 570),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: containerColour,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: glow, width: 4)),
              child: Text(
                "Book Now",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 15,
                        color: chiku,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 17),
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (isReadmore1
                    ? Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 33, bottom: 20),
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        height: 200,
                        width: 333,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: containerColour,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 19,
                            ),
                            Text("Package Overview",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        decoration: TextDecoration.none,
                                        color: blackColour,
                                        fontWeight: FontWeight.bold))),
                            const Text("\n"
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,"
                                " sed diam nonumy eirmod tempor invidunt ut labore et dolore"
                                " magna aliquyam erat, sed diam voluptua. At vero eos et accusam..."),
                          ],
                        ),
                      )
                    : Container(
                        height: 58,
                        width: 333,
                        padding: const EdgeInsets.only(
                            top: 19, left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text("Package Overview",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    color: blackColour,
                                    fontWeight: FontWeight.bold))),
                      )),
              ],
            ),
            (isReadmore1
                ? Container(
                    margin: const EdgeInsets.only(left: 300, top: 215),
                    alignment: Alignment.center,
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: containerColour,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 3,
                        color: glow,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // toggle the bool variable true or false
                          isReadmore1 = !isReadmore1;
                        });
                      },
                      child: const Icon(
                        size: 25,
                        Icons.keyboard_arrow_down_outlined,
                        color: colourAsmani,
                      ),
                    ),
                  )
                : Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 300, top: 12),
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: containerColour,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 3,
                        color: glow,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // toggle the bool variable true or false
                          isReadmore1 = !isReadmore1;
                        });
                      },
                      child: const Icon(
                        size: 25,
                        Icons.keyboard_arrow_up_outlined,
                        color: colourAsmani,
                      ),
                    ),
                  )),
          ],
        ),
        const SizedBox(
          height: 29,
        ),
        Container(
          height: 184,
          width: 333,
          padding: const EdgeInsets.only(top: 19, left: 10, right: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Inclusions",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            color: blackColour,
                            fontWeight: FontWeight.bold))),
                const SizedBox(
                  height: 13.75,
                ),
                Container(
                  height: 55,
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
                  height: 17.33,
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      height: 55.25,
                      width: 156,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.access_time_rounded),
                            const SizedBox(
                              width: 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Duration",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.none,
                                      color: blackColour,
                                    ))),
                                Text("15 Days (14 Nights)",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 12,
                                            decoration: TextDecoration.none,
                                            color: blackColour,
                                            fontWeight: FontWeight.bold)))
                              ],
                            )
                          ]),
                    ),
                    Container(
                        margin: const EdgeInsets.only(),
                        height: 43,
                        width: 1,
                        color: chiku),
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      alignment: Alignment.topLeft,
                      height: 55.25,
                      width: 156,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.groups_outlined,
                              color: blackColour,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Group size",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.none,
                                      color: blackColour,
                                    ))),
                                Text("40 Pax",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 12,
                                            decoration: TextDecoration.none,
                                            color: blackColour,
                                            fontWeight: FontWeight.bold)))
                              ],
                            )
                          ]),
                    ),
                  ],
                ),
              ]),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          height: 608,
          width: 333,
          decoration: BoxDecoration(
              color: containerColour, borderRadius: BorderRadius.circular(20)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: Text("Package Details",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          color: blackColour,
                          fontWeight: FontWeight.bold))),
            ),
            const SizedBox(
              height: 13.75,
            ),
            Container(
              height: 55,
              width: 305,
              padding: const EdgeInsets.only(top: 11.14, left: 11),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  border: Border.all(color: offgery)),
              margin: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(image: AssetImage(AppAssets.fullbackground)),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Onward Flight",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.none,
                            color: blackColour,
                          ))),
                      Text("To Jeddah",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  color: blackColour,
                                  fontWeight: FontWeight.bold)))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 144.75,
              width: 305,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  border: Border.all(color: offgery)),
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.only(top: 19.25, left: 11),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(image: AssetImage(AppAssets.maskGroup1)),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Air India",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                color: blackColour,
                              ))),
                          Text("Al-931",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.none,
                                      color: blackColour,
                                      fontWeight: FontWeight.bold)))
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.access_time_rounded,
                          color: chiku,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("7:10 PM",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                        color: Color.fromRGBO(30, 30, 30, 1),
                                        fontWeight: FontWeight.bold))),
                            Text("Mumbai \n[BOM]",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  color: blackColour,
                                ))),
                          ],
                        ),
                        const SizedBox(
                          width: 41.92,
                        ),
                        Column(
                          children: [
                            Text("05h 00m",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  color: blackColour,
                                ))),
                            const Text(
                              "------ ✈",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 30.8,
                        ),
                        Column(
                          children: [
                            Text("9:40 PM",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                        color: blackColour,
                                        fontWeight: FontWeight.bold))),
                            Text("Jeddah \n[JED]",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  color: blackColour,
                                ))),
                          ],
                        )
                      ]),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 11.7, left: 10),
              height: 120,
              width: 305,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: offgery)),
              child: Column(children: [
                const SizedBox(
                  height: 10.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 12.71,
                    ),
                    const Image(image: AssetImage(AppAssets.group13)),
                    const SizedBox(
                      width: 11.87,
                    ),
                    Text("Makkah",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                color: blackColour,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
                const SizedBox(
                  height: 9.72,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 12.71,
                    ),
                    const Image(
                        height: 60,
                        width: 85,
                        image: AssetImage(AppAssets.rectangle79)),
                    const SizedBox(
                      width: 11.7,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Al Jaad Madinah Hotel",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                    color: blackColour,
                                    fontWeight: FontWeight.bold))),
                        Text("7 Nigh In Makkah",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: blackColour,
                            ))),
                        Row(
                          children: [
                            Text("Similar",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  color: gravy,
                                ))),
                            const SizedBox(
                              width: 7.5,
                            ),
                            const Icon(Icons.star_rounded, color: orange),
                            const SizedBox(
                              width: 7.5,
                            ),
                            const Icon(Icons.star_rounded, color: orange)
                          ],
                        )
                      ],
                    )
                  ],
                )
              ]),
            ),
            const SizedBox(
              height: 11.54,
            ),
            Container(
              height: 55,
              width: 305,
              padding: const EdgeInsets.only(top: 11.14, left: 11),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  border: Border.all(color: offgery)),
              margin: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(image: AssetImage(AppAssets.fullbackground)),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Return Flight",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.none,
                            color: blackColour,
                          ))),
                      Text("To Mumbai",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  color: blackColour,
                                  fontWeight: FontWeight.bold)))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 144.75,
              width: 305,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  border: Border.all(color: offgery)),
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.only(top: 19.25, left: 11),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(image: AssetImage(AppAssets.maskGroup1)),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Air India",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                color: blackColour,
                              ))),
                          Text("Al-932",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.none,
                                      color: blackColour,
                                      fontWeight: FontWeight.bold)))
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.access_time_rounded,
                          color: chiku,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("10:40 PM",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                        color: blackColour,
                                        fontWeight: FontWeight.bold))),
                            Text("Jeddah \n[JED]",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  color: blackColour,
                                ))),
                          ],
                        ),
                        const SizedBox(
                          width: 41.92,
                        ),
                        Column(
                          children: [
                            Text("05h 00m",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  color: blackColour,
                                ))),
                            const Text(
                              "------ ✈",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 30.8,
                        ),
                        Column(
                          children: [
                            Text("6:40 PM",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                        color: blackColour,
                                        fontWeight: FontWeight.bold))),
                            Text("Mumbai \n[BOM]",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  color: blackColour,
                                ))),
                          ],
                        )
                      ]),
                ],
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 12,
        ),
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (isReadmore2
                    ? Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 33, bottom: 20),
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        height: 200,
                        width: 333,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: containerColour,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 19,
                            ),
                            Text("Inclusions",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        decoration: TextDecoration.none,
                                        color: blackColour,
                                        fontWeight: FontWeight.bold))),
                            const Text("\n"
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,"
                                " sed diam nonumy eirmod tempor invidunt ut labore et dolore"
                                " magna aliquyam erat, sed diam voluptua. At vero eos et accusam..."),
                          ],
                        ),
                      )
                    : Container(
                        height: 58,
                        width: 333,
                        padding: const EdgeInsets.only(
                            top: 19, left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text("Inclusions",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    color: blackColour,
                                    fontWeight: FontWeight.bold))),
                      )),
              ],
            ),
            (isReadmore2
                ? Container(
                    margin: const EdgeInsets.only(left: 300, top: 215),
                    alignment: Alignment.center,
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: containerColour,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 3,
                        color: glow,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // toggle the bool variable true or false
                          isReadmore2 = !isReadmore2;
                        });
                      },
                      child: const Icon(
                        size: 25,
                        Icons.keyboard_arrow_down_outlined,
                        color: colourAsmani,
                      ),
                    ),
                  )
                : Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 300, top: 12),
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: containerColour,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 3,
                        color: glow,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // toggle the bool variable true or false
                          isReadmore2 = !isReadmore2;
                        });
                      },
                      child: const Icon(
                        size: 25,
                        Icons.keyboard_arrow_up_outlined,
                        color: colourAsmani,
                      ),
                    ),
                  )),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: (isReadmore3
                      ? Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 33, bottom: 20),
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          height: 200,
                          width: 333,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: containerColour,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 19,
                              ),
                              Text("Exclusions",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          decoration: TextDecoration.none,
                                          color: blackColour,
                                          fontWeight: FontWeight.bold))),
                              const Text("\n"
                                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,"
                                  " sed diam nonumy eirmod tempor invidunt ut labore et dolore"
                                  " magna aliquyam erat, sed diam voluptua. At vero eos et accusam..."),
                            ],
                          ),
                        )
                      : Container(
                          height: 58,
                          width: 333,
                          padding: const EdgeInsets.only(
                              top: 19, left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("Exclusions",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      decoration: TextDecoration.none,
                                      color: blackColour,
                                      fontWeight: FontWeight.bold))),
                        )),
                ),
              ],
            ),
            (isReadmore3
                ? Container(
                    margin: const EdgeInsets.only(left: 300, top: 215),
                    alignment: Alignment.center,
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: containerColour,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 3,
                        color: glow,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isReadmore3 = !isReadmore3;
                        });
                      },
                      child: const Icon(
                        size: 25,
                        Icons.keyboard_arrow_down_outlined,
                        color: colourAsmani,
                      ),
                    ),
                  )
                : Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 300, top: 12),
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: containerColour,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 3,
                        color: glow,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isReadmore3 = !isReadmore3;
                        });
                      },
                      child: const Icon(
                        size: 25,
                        Icons.keyboard_arrow_up_outlined,
                        color: colourAsmani,
                      ),
                    ),
                  )),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: (isReadmore4
                      ? Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 33, bottom: 20),
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          height: 200,
                          width: 333,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: containerColour,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 19,
                              ),
                              Text("Terms & Conditions",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          decoration: TextDecoration.none,
                                          color: blackColour,
                                          fontWeight: FontWeight.bold))),
                              const Text("\n"
                                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,"
                                  " sed diam nonumy eirmod tempor invidunt ut labore et dolore"
                                  " magna aliquyam erat, sed diam voluptua. At vero eos et accusam..."),
                            ],
                          ),
                        )
                      : Container(
                          height: 58,
                          width: 333,
                          padding: const EdgeInsets.only(
                              top: 19, left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("Terms & Conditions",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      decoration: TextDecoration.none,
                                      color: blackColour,
                                      fontWeight: FontWeight.bold))),
                        )),
                ),
              ],
            ),
            (isReadmore4
                ? Container(
                    margin: const EdgeInsets.only(left: 300, top: 215),
                    alignment: Alignment.center,
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: containerColour,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 3,
                        color: glow,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // toggle the bool variable true or false
                          isReadmore4 = !isReadmore4;
                        });
                      },
                      child: const Icon(
                        size: 25,
                        Icons.keyboard_arrow_down_outlined,
                        color: colourAsmani,
                      ),
                    ),
                  )
                : Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 300, top: 12),
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: containerColour,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 3,
                        color: glow,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // toggle the bool variable true or false
                          isReadmore4 = !isReadmore4;
                        });
                      },
                      child: const Icon(
                        size: 25,
                        Icons.keyboard_arrow_up_outlined,
                        color: colourAsmani,
                      ),
                    ),
                  )),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: (isReadmore5
                      ? Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 33, bottom: 20),
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          height: 489,
                          width: 333,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: containerColour,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 19,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Text("Detailed day wise linearly",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 14,
                                            decoration: TextDecoration.none,
                                            color: blackColour,
                                            fontWeight: FontWeight.bold))),
                                const SizedBox(
                                  height: 28,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 52,
                                      width: 52,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: colourAsmani),
                                      child: Text("DAY 1",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontSize: 10,
                                                  color: containerColour,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ),
                                    const SizedBox(
                                      width: 17,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Makkah",
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 13,
                                                    color: blackColour,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                        Text(
                                            "Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy",
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: blackColour,
                                            )))
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                    margin: const EdgeInsets.only(
                                        left: 42.5, top: 6.5, bottom: 6.5),
                                    height: 43,
                                    width: 1,
                                    color: chiku),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 52,
                                      width: 52,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: colourAsmani),
                                      child: Text("DAY 2",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontSize: 10,
                                                  color: containerColour,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ),
                                    const SizedBox(
                                      width: 17,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Makkah",
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 13,
                                                    color: blackColour,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                        Text(
                                            "Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy",
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: blackColour,
                                            )))
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                    margin: const EdgeInsets.only(
                                        left: 42.5, top: 6.5, bottom: 6.5),
                                    height: 43,
                                    width: 1,
                                    color: chiku),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 52,
                                      width: 52,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: colourAsmani),
                                      child: Text("DAY 3",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontSize: 10,
                                                  color: containerColour,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ),
                                    const SizedBox(
                                      width: 17,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Makkah",
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 13,
                                                    color: blackColour,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                        Text(
                                            "Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy",
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: blackColour,
                                            )))
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                    margin: const EdgeInsets.only(
                                        left: 42.5, top: 6.5, bottom: 6.5),
                                    height: 43,
                                    width: 1,
                                    color: chiku),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 52,
                                      width: 52,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: colourAsmani),
                                      child: Text("DAY 4",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontSize: 10,
                                                  color: containerColour,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ),
                                    const SizedBox(
                                      width: 17,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Makkah",
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 13,
                                                    color: blackColour,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                        Text(
                                            "Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy",
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: blackColour,
                                            )))
                                      ],
                                    )
                                  ],
                                ),
                              ]))
                      : Container(
                          height: 58,
                          width: 333,
                          padding: const EdgeInsets.only(
                              top: 19, left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("Detailed day wise linearly",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      decoration: TextDecoration.none,
                                      color: blackColour,
                                      fontWeight: FontWeight.bold))),
                        )),
                ),
              ],
            ),
            (isReadmore5
                ? Container(
                    margin: const EdgeInsets.only(left: 300, top: 503),
                    alignment: Alignment.center,
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: containerColour,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 3,
                        color: glow,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // toggle the bool variable true or false
                          isReadmore5 = !isReadmore5;
                        });
                      },
                      child: const Icon(
                        size: 25,
                        Icons.keyboard_arrow_down_outlined,
                        color: colourAsmani,
                      ),
                    ),
                  )
                : Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 300, top: 12),
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: containerColour,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 3,
                        color: glow,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // toggle the bool variable true or false
                          isReadmore5 = !isReadmore5;
                        });
                      },
                      child: const Icon(
                        size: 25,
                        Icons.keyboard_arrow_up_outlined,
                        color: colourAsmani,
                      ),
                    ),
                  )),
          ],
        ),
        const SizedBox(
          height: 32,
        )
      ],
    );
  }
}

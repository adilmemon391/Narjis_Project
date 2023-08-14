import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';
import 'package:umrah_package/screen/dashboard_screen/dashboard_start.dart';

import '../../app_theme/app_colour.dart';
import '../../app_theme/size_conform.dart';

  class FeedbackPage extends StatefulWidget {
  static String routeName="/feedback_page";
   const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  int _buttonindex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(DashbordScreen.routeName, (route) => false);
                  },
                  icon:  const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 15,
                  )),
              backgroundColor:  colourAsmani,
              title: Text(
                "Feedback",
                style: GoogleFonts.poppins(
                  textStyle:  const TextStyle(
                      color:containerColour, fontSize: 17),
                ),
              ),
            ),
            body: Container(
                height: SizeConfig.screenHeight,
                width: SizeConfig.screenWidth,
                decoration:  const BoxDecoration(
                    color: allconcol,
                    image: DecorationImage(
                      image: AssetImage(
                        AppAssets.group,
                      ),
                      fit: BoxFit.cover,
                    )),
                child: SingleChildScrollView(
                    child: mainColumn("Lorem ipsum dolor sit ame?", "Lorem Ispum","Lorem Ispum Sit", "Submit","Next")))));
  }
  Widget mainColumn(String lorenText,String lorenTextscan,String lorenTextSit,String sabmitText,String button2){
    return Column(
        children: [
          Stack(
            children: [
              Container(
                margin:  const EdgeInsets.all(20),
                width: SizeConfig.screenWidth,
                height: getHeight(400),
                decoration: BoxDecoration(
                  color: containerColour,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: getWidth(280),
                            margin:  const EdgeInsets.all(20),
                            child: Text(
                              lorenText,
                              style: GoogleFonts.poppins(
                                textStyle:  const TextStyle(
                                  fontSize: 15,
                                  color: blackColour,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                      ],
                    ),
                    Container(
                      margin:
                      const EdgeInsets.only(left: 19, right: 19),
                      decoration:  const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 2,
                                  color: pink))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _buttonindex = 1;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: _buttonindex == 1
                                  ?  chiku
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 60,
                            width: 150,
                            child: Text(
                             lorenTextscan,
                              style: GoogleFonts.poppins(
                                textStyle:  const TextStyle(
                                  fontSize: 13,
                                  color: blackColour,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _buttonindex = 0;
                            });
                          },
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: _buttonindex == 0
                                    ?  chiku
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),),
                              height: 60,
                              width: 150,
                              child: Text(
                                lorenTextSit,
                                style: GoogleFonts.poppins(
                                  textStyle:  const TextStyle(
                                    fontSize: 13,
                                    color: blackColour,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _buttonindex = 2;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: _buttonindex == 2
                                  ?  chiku
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(20),),
                            height: 60,
                            width: 200,
                            child: Text(
                              "Lorem Ispum Sit Amet",
                              style: GoogleFonts.poppins(
                                textStyle:  const TextStyle(
                                  fontSize: 13,
                                  color: blackColour,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _buttonindex = 3;
                            });
                          },
                          child: Container(
                              alignment: Alignment.center,
                              decoration:BoxDecoration(
                                color: _buttonindex == 3
                                    ?  chiku
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),),
                              height: 60,
                              width: 100,
                              child: Text(
                                "Lorems",
                                style: GoogleFonts.poppins(
                                  textStyle:  const TextStyle(
                                    fontSize: 13,
                                    color: blackColour,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 230,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2,
                        color:  glow),
                    borderRadius: BorderRadius.circular(20)),
                margin:  const EdgeInsets.only(top: 390, left: 80),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:  const MaterialStatePropertyAll(
                            containerColour),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(20)))),
                    onPressed: () {},
                    child: Text(
                     sabmitText,
                      style: GoogleFonts.poppins(
                        textStyle:  const TextStyle(
                          fontSize: 15,
                          color: chiku,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 230,
            height: 50,
            decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:  const MaterialStatePropertyAll(
                        colourAsmani),
                    shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                onPressed: () {},
                child: Text(
                  button2,
                  style: GoogleFonts.poppins(
                    textStyle:  const TextStyle(
                      fontSize: 15,
                      color:containerColour,
                    ),
                  ),
                )),
          ),
        ]);
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_theme/app_assets.dart';
import '../../app_theme/app_colour.dart';
import 'mobile_Login_page.dart';
import 'feedback.dart';

class FeedBackQna extends StatefulWidget {
  static String routeName="/feedback_qna";
  const FeedBackQna({super.key});

  @override
  State<FeedBackQna> createState() => _FeedBackQnaState();
}

class _FeedBackQnaState extends State<FeedBackQna> {
  int _buttonindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 15,
            )),
        backgroundColor: colourAsmani,
        title: Text(
          "Feedback / QNA",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(color: containerColour, fontSize: 17),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: allconcol,
            image: DecorationImage(
              image: AssetImage(
                AppAssets.group,
              ),
              fit: BoxFit.cover,
            )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              feedBackContainer("QNA", "Feedback"),
              const SizedBox(
                height: 80,
              ),
              row("Submit feedback on content\n about you"),
              const SizedBox(
                height: 55,
              ),
              textFieldName('Enter Name'),
              textFieldNumber('Enter Number'),
              textFieldSizeBox('Enter Message'),
              const SizedBox(
                height: 40,
              ),
              elevationButton("Send Message")
            ],
          ),
        ),
      ),
    ));
  }

  Widget feedBackContainer(String qnatext,String feedbacltext) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: 230,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context,FeedbackPage.routeName);
              setState(() {
                _buttonindex = 1;
              });
            },
            child: Container(
              width: 100,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
              decoration: BoxDecoration(
                color: _buttonindex == 1 ? chiku : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                qnatext,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: _buttonindex == 1 ? Colors.white : Colors.black38),
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
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
              decoration: BoxDecoration(
                color: _buttonindex == 0 ? chiku : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
               feedbacltext,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: _buttonindex == 0 ? Colors.white : Colors.black38),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget row(String text) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 25),
          child:  Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: blackColour),
          ),
        ),
      ],
    );
  }

  Widget textFieldName(String hint) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: TextFormField(
        decoration:  InputDecoration(
          fillColor: Colors.grey,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 18.0, color: gravy),
        ),
      ),
    );
  }

  Widget textFieldNumber(String hint) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: TextFormField(
        decoration:  InputDecoration(
          fillColor: Colors.grey,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: containerColour),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: containerColour),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 18.0, color: gravy),
        ),
      ),
    );
  }

  Widget textFieldSizeBox(String hint) {
    return SizedBox(
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        height: 123,
        width: 355,
        decoration: BoxDecoration(
            border: Border.all(color: containerColour),
            borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all(15),
        child: TextFormField(
          decoration:  InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,


            hintText: hint,
            hintStyle: const TextStyle(fontSize: 18.0, color: gravy)
          ),
        ),
      ),
    );
  }

  Widget elevationButton(String button) {
    return SizedBox(
      height: 51,
      width: 275,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(colourAsmani),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)))),
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(MobilePageLoginPage.routeName, (route) => false);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.telegram,
                color: containerColour,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                button,
                style: GoogleFonts.poppins(
                  textStyle:
                      const TextStyle(color: containerColour, fontSize: 17),
                ),
              )
            ],
          )),
    );
  }
}

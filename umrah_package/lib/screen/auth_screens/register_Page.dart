import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';

import '../../app_theme/app_colour.dart';
import 'inquiry_Page.dart';

class RegisterPage extends StatefulWidget {
  static String routeName="register_page";
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: pink,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                arrowContainer(),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 21),
                  child: const Text(
                    "Join Al-Amin Family",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 21),
                  child: const Text(
                    "Enter you new account infromation",
                    style: TextStyle(
                      fontSize: 14,
                      color: lightGrey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  padding: const EdgeInsets.only(left: 7),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  child: textFIeldName('Enter Name'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  padding: const EdgeInsets.only(left: 7),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  child: textFIeldnumber('Enter Number'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  padding: const EdgeInsets.only(left: 7),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  child: textFIeldEmail('EMail'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  padding: const EdgeInsets.only(left: 7),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  child: textFieldSelectedCity('Selected city'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  padding: const EdgeInsets.only(left: 7),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  child: textFieldSelectedArea( 'Area'),
                ),
                const SizedBox(
                  height: 64,
                ),
                Container(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 275,
                      height: 51,
                      child: elevationButton("Join Request"),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget elevationButton(String text) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(lightGrey1),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        onPressed: () {
          Navigator.pushNamed(context, InquiryPage.routeName);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.login_rounded),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 15, color: Color.fromRGBO(255, 255, 255, 1))),
            )
          ],
        ));
  }

  Widget textFIeldName(String hintname) {
    return TextFormField(
      obscureText: true,
      decoration:  InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: hintname,
      ),
    );
  }

  Widget textFIeldnumber(String hintnumber) {
    return TextFormField(
      obscureText: true,
      decoration:  InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: hintnumber,
      ),
    );
  }

  Widget textFIeldEmail(String email) {
    return TextFormField(
      obscureText: true,
      decoration:  InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: email,
      ),
    );
  }

  Widget textFieldSelectedCity(String city) {
    return TextFormField(
      obscureText: true,
      decoration:  InputDecoration(
        suffixIcon: const Icon(Icons.arrow_drop_down_sharp),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: city,
      ),
    );
  }

  Widget textFieldSelectedArea(String area) {
    return TextFormField(
      obscureText: true,
      decoration:  InputDecoration(
        suffixIcon: const Icon(Icons.arrow_drop_down_sharp),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: area,
      ),
    );
  }

  Widget arrowContainer() {
    return Container(
      margin: const EdgeInsets.only(left: 21, top: 12),
      height: 35,
      alignment: Alignment.center,
      width: 35,
      decoration: BoxDecoration(
          color: lightGrey1, borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.white,
          size: 15,
          weight: 12,
        ),
      ),
    );
  }
}

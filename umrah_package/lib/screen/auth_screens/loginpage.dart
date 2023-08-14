import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';

import '../../app_theme/app_colour.dart';
import '../dashboard_screen/dashboard_start.dart';
import 'register_Page.dart';

class LoginPage extends StatefulWidget {
  static String routeName="/loginpage";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: pink,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(238, 246, 248, 1),
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
                  height: 100,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 23),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 23),
                  child: const Text(
                    "Enter you new account infromation",
                    style: TextStyle(
                      fontSize: 14,
                      color: lightGrey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  child: textFieldName('Enter Name'),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  child: textFieldNumber('Enter Number'),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  child: textFieldPassword('Password'),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 70),
                    alignment: Alignment.center,
                    child:elevationButtonLogin( "Login")  ),
                elevationButtonBack("Back")

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget elevationButtonBack(String text) {
    return Container(
        margin: const EdgeInsets.only(top: 15),
        alignment: Alignment.center,
        child: SizedBox(
          width: 220,
          height: 50,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                  const MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(20)))),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(DashbordScreen.routeName, (route) => false);
              },
              child: Text(
                text,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 15,
                        color: lightGrey1)),
              )),
        ));
  }
  Widget elevationButtonLogin(String text) {
    return SizedBox(
      width: 220,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(
                  lightGrey1),
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(20)))),
          onPressed: () {
            Navigator.pushNamed(context, RegisterPage.routeName);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.login_rounded,
                size: 15,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
               text,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 15,
                        color:
                        containerColour)),
              )
            ],
          )),
    );
  }
  Widget textFieldName(String hinttext){
    return  TextField(
      obscureText: true,
      decoration: InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: hinttext,
      ),
    );
  }
  Widget textFieldNumber(String hinttext){
    return TextFormField(
      obscureText: true,
      decoration:  InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: hinttext,
      ),
    );
  }
  Widget textFieldPassword(String password){
    return TextFormField(
      obscureText: true,
      decoration:  InputDecoration(
        suffixIcon: Icon(
          Icons.visibility,
          color: Colors.grey,
        ),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: password,
      ),
    );
  }
  Widget arrowContainer(){
    return Container(
      margin: const EdgeInsets.only(left: 21, top: 23),
      height: 35,
      alignment: Alignment.center,
      width: 35,
      decoration: BoxDecoration(
          color: lightGrey1,
          borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamedAndRemoveUntil(DashbordScreen.routeName, (route) => false);
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

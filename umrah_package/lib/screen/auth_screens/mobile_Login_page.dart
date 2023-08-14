import 'package:flutter/material.dart';
import 'package:umrah_package/app_theme/app_assets.dart';


import '../../app_theme/app_colour.dart';
import 'loginpage.dart';

class MobilePageLoginPage extends StatefulWidget {
  static String routeName="/mobilepage_login_page";
   const MobilePageLoginPage({super.key});

  @override
  State<MobilePageLoginPage> createState() => _MobilePageLoginPageState();
}

class _MobilePageLoginPageState extends State<MobilePageLoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor:  allconcol,
      body: Column(
        children: [
           const SizedBox(
            height: 120,
          ),
          Stack(
            children: [
              containerText( "You are not Logged-in please Login"),
              elevationButton("Login")
            ],
          ),
        ],
      ),
    ));
  }
  Widget containerText(String text){
    return Container(
      margin:  const EdgeInsets.all(20),
      decoration: BoxDecoration(
        image:
        const DecorationImage(image: AssetImage(AppAssets.mobile)),
        borderRadius: BorderRadius.circular(19),
        color:  containerColour,
      ),
      height: 450,
      width: 680,
      child: Column(
        children: [
          Container(
            margin:  const EdgeInsets.only(top: 350),
            child:   Text(
             text,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
  Widget elevationButton(String button){
    return Container(
      width: 200,
      margin:  const EdgeInsets.only(top: 445, left: 100),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 3,
            color:  glow,
          )),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:  const MaterialStatePropertyAll(
                  containerColour),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
          onPressed: () {
            Navigator.pushNamed(context, LoginPage.routeName);
          },
          child:   Text(
            button,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: chiku,
                fontSize: 15),
          )),
    );
  }
}

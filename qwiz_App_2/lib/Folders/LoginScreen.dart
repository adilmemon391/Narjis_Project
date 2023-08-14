// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qwiz_app_2/Folders/homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController countrycode = TextEditingController();

  var phone = "";

  @override
  void initState() {
    countrycode.text = "+91";
    super.initState();
    check_if_already_login();
  }

  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  SharedPreferences? logindata;
  bool? newuser;

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata?.getBool('login') ?? true);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
            color: Color.fromRGBO(252, 228, 236, 100),
            image: DecorationImage(
                image: AssetImage("assets/images/register_back.png"),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Text(
                "Login",
                style: GoogleFonts.robotoSlab(
                  textStyle: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black26,
                  ),
                ),
              ),
              Container(
                height: 55,
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black54),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countrycode,
                        style: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    Text(
                      "|",
                      style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: username_controller,
                          validator: ((value) {
                            if (value!.trim().isEmpty) {
                              return "Please enter Phone number";
                            }
                            return null;
                          }
                          ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mobile Number",
                        hintStyle: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 55,
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black54),
                      borderRadius: BorderRadius.circular(10)),
                  child: Expanded(
                      child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: password_controller,
                        validator: ((value) {
                          if (value!.trim().isEmpty) {
                            return "Please enter Password";
                          }
                          return null;
                        }),

                    onChanged: (value) {
                      phone = value;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ))
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors: [
                      Colors.yellow.shade900,
                      Colors.brown.shade800
                    ])),
                alignment: Alignment.center,
                height: 45,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    String username = username_controller.text;
                    String password = password_controller.text;
                    if (username != '' && password != '') {
                      logindata?.setBool('login', false);
                      logindata?.setString('username', username);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    }
                  },
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}

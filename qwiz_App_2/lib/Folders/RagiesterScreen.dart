import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gender_picker/gender_picker.dart';
import 'package:gender_picker/source/enums.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:qwiz_app_2/Folders/homescreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController countrycode = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  int image = 0;
  var phone = "";
  String gender = "";

  @override
  void initState() {
    countrycode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        decoration: const BoxDecoration(
            color: Color.fromRGBO(252, 228, 236, 100),
            image: DecorationImage(
                image: AssetImage("Assets/Image/regester_back.png"),
                fit: BoxFit.fill)
            // gradient: LinearGradient(colors: [Colors.cyanAccent,Colors.purple])
            ),
        height: 900,
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                textAlign: TextAlign.center,
                "Register",
                style: GoogleFonts.robotoSlab(
                    textStyle: const TextStyle(
                  fontSize: 34,
                  color: Colors.black,
                )),
              ),
              const SizedBox(
                height: 40,
              ),
              getWidget(true, true, gender),
              const SizedBox(
                height: 30,
              ),
              Container(
                  height: 55,
                  margin: const EdgeInsets.only(
                    top: 5,
                  ),
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: Border.all(width: 3, color: Colors.black54),
                      borderRadius: BorderRadius.circular(10)),
                  child: Expanded(
                      child: TextField(
                    keyboardType: TextInputType.name,
                    onChanged: (value) {
                      phone = value;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Your Name",
                      hintStyle: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                      )),
                    ),
                  ))),
              Container(
                margin: const EdgeInsets.only(top: 5),
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
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
                          color: Colors.black54,
                        )),
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(color: Colors.grey, fontSize: 34),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        phone = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mobile No",
                        hintStyle: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                        )),
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                  height: 55,
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: Border.all(width: 3, color: Colors.black54),
                      borderRadius: BorderRadius.circular(10)),
                  child: Expanded(
                      child: TextField(
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {
                      phone = value;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                      )),
                    ),
                  ))),
              Text(
                "Date Of Birth",
                style: GoogleFonts.robotoSlab(
                    textStyle: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          border: Border.all(width: 2, color: Colors.black54)),
                      height: 45,
                      width: 100,
                      child: Expanded(
                          child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.datetime,
                        style: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                        )),
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "DD",
                          hintStyle: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                          )),
                        ),
                      ))),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          border: Border.all(width: 2, color: Colors.black54)),
                      height: 45,
                      width: 100,
                      child: Expanded(
                          child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.datetime,
                        style: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                        )),
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "MM",
                          hintStyle: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                          )),
                        ),
                      ))),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          border: Border.all(width: 2, color: Colors.black54)),
                      height: 45,
                      width: 100,
                      child: Expanded(
                          child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.datetime,
                        style: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                        )),
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "YYYY",
                          hintStyle: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                          )),
                        ),
                      ))),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    width: 370,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                      controller: cityController,
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.streetAddress,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'Selected City',
                        hintStyle: TextStyle(fontSize: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide.none,
                        ),
                        filled: false,
                        contentPadding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors: [
                      Colors.yellow.shade900,
                      Colors.brown.shade800
                    ])),
                height: 45,
                width: double.infinity,
                child: TextButton(
                  onPressed: (() async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                    // await FirebaseAuth.instance.verifyPhoneNumber(
                    //   phoneNumber: '${countrycode.text+phone}',
                    //   verificationCompleted: (PhoneAuthCredential credential) {},
                    //   verificationFailed: (FirebaseAuthException e) {},
                    //   codeSent: (String verificationId, int? resendToken) {
                    //     Phone_Page.verify=verificationId;
                    //     Navigator.pushNamed(context, "otp");
                    //   },
                    //   codeAutoRetrievalTimeout: (String verificationId) {},
                    // );
                  }),
                  child: Text(
                    "Login",
                    style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  Widget getWidget(
    bool showOtherGender,
    bool alignVertical,
    String gender,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          gender = "Gender\t\t:",
          style: GoogleFonts.robotoSlab(
              textStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
        ),
        Container(
          alignment: Alignment.center,
          height: 100,
          width: 280,
          child: GenderPickerWithImage(
            verticalAlignedText: alignVertical,
            selectedGender: Gender.Male,
            selectedGenderTextStyle: GoogleFonts.robotoSlab(
                textStyle: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            )),
            unSelectedGenderTextStyle: GoogleFonts.robotoSlab(
                textStyle: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
            onChanged: (Gender? gender) {
              if (kDebugMode) {
                print(gender);
              }
            },
            isCircular: false,
            size: 100,
          ),
        ),
      ],
    );
  }
}

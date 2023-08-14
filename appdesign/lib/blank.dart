import 'package:appdesign/widget/nav.dart';
import 'package:flutter/material.dart';

class Blank extends StatefulWidget {
  const Blank({super.key});

  @override
  State<Blank> createState() => _BlankState();
}

class _BlankState extends State<Blank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient:const LinearGradient(colors: [
            Colors.blueAccent,
            Colors.black12,
          ], begin: Alignment.topCenter, end: Alignment.center),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => const Nav()),
                          (route) => false);
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        height: 40,
                        width: 40,
                        child:const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        // color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20)),
                    height: 120,
                    width: 140,
                    alignment: Alignment.center,
                    child:const CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.white,
                      child: Image(
                        fit: BoxFit.fill,
                        // height: 90,
                        // width: 90,

                        image: AssetImage(
                          "assets/images/babar.png",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const  SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "BABAR AZAM",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const   SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "email@BabarAzam.com",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black26,
                    ),
                  ),
                  const    SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "+91-232144314XX",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const   SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 70,
                    width: 140,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)))),
                        onPressed: () {},
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

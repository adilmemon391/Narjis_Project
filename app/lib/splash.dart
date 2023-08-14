import 'dart:async';

import 'package:app/informtion.dart';
import 'package:flutter/material.dart';

class spash extends StatefulWidget {
  const spash({super.key});

  @override
  State<spash> createState() => _spashState();
}

class _spashState extends State<spash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                //alignment: Alignment.center,
                height: 400,
                width: double.infinity,
                child: Image(
                  image: AssetImage(
                    "assets/icon/adil01.png",
                  ),
                )),
          ],
        ));
  }
}

import 'package:datalogin_pages/Screens/loginpage.dart';
import 'package:datalogin_pages/Screens/ragister.dart';
import 'package:datalogin_pages/Screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: spach(),
    );
  }
}

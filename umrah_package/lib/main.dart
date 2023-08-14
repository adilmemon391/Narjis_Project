import 'package:flutter/material.dart';
import 'package:umrah_package/app_theme/app_routes.dart';
import 'package:umrah_package/screen/intro_screen/intro_page2.dart';

import 'screen/splash_screens/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: routes,

    );
  }
}
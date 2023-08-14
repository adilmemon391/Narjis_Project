import 'package:flutter/material.dart';
import 'package:qwizapp/CategoryWidgets/AllColors.dart';
import 'package:qwizapp/CategoryWidgets/category.dart';
import 'package:qwizapp/CategoryWidgets/privacyPolicy.dart';
import 'package:qwizapp/CategoryWidgets/result.dart';
import 'package:qwizapp/CategoryWidgets/turm_condition.dart';
import 'package:qwizapp/ScreenFile/homepage.dart';
import 'package:qwizapp/ScreenFile/login_page.dart';
import 'package:qwizapp/ScreenFile/logout_page.dart';
import 'package:qwizapp/ScreenFile/register.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: appTextFieldSelectedDarkColor,
            ),
            drawer: Drawer(
              backgroundColor: appTextFieldSelectedDarkColor,
              width: 250,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                      child: Text(
                    "GoverMent Exam",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 10,
                    thickness: 1.5,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home_filled,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "home_filled",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "language",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Category(),
                          ));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.help,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "About Us",
                      style: TextStyle(color: Colors.white),
                    ),
                    // onTap: () => print(''),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TurmCondition(),
                          ));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.refresh,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Result",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ResultPage(),
                          ));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.update,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Latest Update",
                      style: TextStyle(color: Colors.white),
                    ),
                    // onTap: () => print(''),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HelpPage(),
                          ));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.how_to_reg,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Ragister Now",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ));
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Login now",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                    },
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 10,
                    thickness: 1.5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LogOut(),
                          ));
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: Colors.redAccent,
                      ),
                      title: Text(
                        "Logout",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image.png"),
                      fit: BoxFit.cover)),
              child: const Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "GoverMent Exam",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Upcoming 23-24",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            )));
  }
}

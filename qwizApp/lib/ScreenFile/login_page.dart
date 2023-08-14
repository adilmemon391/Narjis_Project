// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:qwizapp/ScreenFile/homepage.dart';
import 'package:qwizapp/ScreenFile/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final username_controller = TextEditingController();
  final useremail_controller = TextEditingController();
  final password_controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool securePassword = true;
  bool changeButton = false;
  SharedPreferences? logindata;
  bool? newuser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata?.getBool('login') ?? true);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    useremail_controller.dispose();
    password_controller.dispose();
    username_controller.dispose();
    super.dispose();
  }

  moveTohome(BuildContext context) async {
    setState(() {
      changeButton = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    await Navigator.push(
        context, MaterialPageRoute(builder: ((context) => const SignUpPage())));
    setState(() {
      changeButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 50),
                      child: const Text(
                        "Login Page",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      )),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: _TextFoemWidget_1()),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: _TextFormWidget_2()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget Password",
                            style: TextStyle(fontSize: 20),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                        height: 50,
                        width: 100,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              //background color of button

                              elevation: 5,
                              //elevation of button
                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            onPressed: () {
                              String username = useremail_controller.text;
                              String password = password_controller.text;

                              if (_formKey.currentState!
                                  .validate()) if (username !=
                                      '' &&
                                  password != '') {
                                logindata?.setBool('login', false);
                                logindata?.setString('username', username);
                                logindata?.setString('password', password);

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomePage()));
                              }
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ))),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  InkWell(
                    onTap: () => moveTohome(context),
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8)),
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              "Ragister Page",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _TextFoemWidget_1() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: useremail_controller,
        validator: ((value) {
          if (value!.trim().isEmpty) {
            return "Please enter email";
          } else if (!value.contains('@gmail.com')) {
            return 'Please Enter valid E-Mail ->@gmail.com';
          }

          return null;
        }),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.email,
            color: Colors.blue,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          labelStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          labelText: "E-Mail",
          hintText: "Please Enter e-Mail",
          hintStyle: const TextStyle(color: Color.fromARGB(255, 59, 11, 11)),
        ),
        onChanged: (value) {
          setState(() {});
        });
  }

  Widget _TextFormWidget_2() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: password_controller,
        obscureText: securePassword,
        validator: ((value) {
          if (value!.trim().isEmpty) {
            return "Please enter Password";
          }

          return null;
        }),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.lock,
            color: Colors.blue,
          ),
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  securePassword = !securePassword;
                });
              },
              icon: securePassword
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          labelStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          labelText: "Password",
          hintText: "Please Enter Password",
          hintStyle: const TextStyle(color: Color.fromARGB(255, 59, 11, 11)),
        ),
        onChanged: (value) {
          setState(() {});
        });
  }
}

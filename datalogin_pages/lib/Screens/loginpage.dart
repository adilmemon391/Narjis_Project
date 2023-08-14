// ignore_for_file: curly_braces_in_flow_control_structures, non_constant_identifier_names, use_build_context_synchronously

import 'package:datalogin_pages/Screens/dashbord.dart';
import 'package:datalogin_pages/Screens/ragister.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();
  TextEditingController useremail_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  FocusNode focusNode = FocusNode();
  bool securePassword = true;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    useremail_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }

  SharedPreferences? _logindata;
  bool? newuser;

  void check_if_already_login() async {
    _logindata = await SharedPreferences.getInstance();
    newuser = (_logindata?.getBool('login') ?? true);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const DashBord()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Login",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          body: scrollview()),
    );
  }

  Widget scrollview() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const SizedBox(
                height: 100,
              ),
              // IntlPhoneField(
              //   validator: (p0) {
              //     if (p0!.countryCode.isNotEmpty) {
              //       return 'Please Enter Contry code';
              //       return null;
              //     }
              //   },
              //   focusNode: focusNode,
              //   initialCountryCode: 'IN',
              //   controller: controller,
              //   decoration: InputDecoration(
              //     labelText: 'Phone Number',
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //   ),
              //   languageCode: "IN",
              //   onChanged: (phone) {
              //     if (kDebugMode) {
              //       print(phone.completeNumber);
              //     }
              //   },
              //   onCountryChanged: (country) {
              //     if (kDebugMode) {
              //       print('Country changed to: ${country.name}');
              //     }
              //   },
              // ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: useremail_controller,
                  validator: ((value) {
                    if (value!.trim().isEmpty) {
                      return "Please enter email";
                    } else if (!value.contains('@')) {
                      return 'Please Enter valid E-Mail ->@';
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
                    labelStyle:
                        const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    labelText: "E-Mail",
                    hintText: "Please Enter e-Mail",
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 59, 11, 11)),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  }),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: password_controller,
                  obscureText: securePassword,
                  validator: ((value) {
                    if (value!.trim().isEmpty) {
                      return "Please enter password";
                    }

                    return null;
                  }),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.password,
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
                    labelStyle:
                        const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    labelText: "Password",
                    hintText: "Please Enter password",
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 59, 11, 11)),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget password",
                        style: TextStyle(fontSize: 18),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () {
                      String _email = useremail_controller.text;
                      String _password = password_controller.text;
                      if (_formKey.currentState!.validate()) if (_email != '' &&
                          _password != '') {
                        _logindata?.setBool('login', false);
                        _logindata?.setString('_email', _email);
                        _logindata?.setString('_password', _password);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashBord()));
                      }
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Colors.transparent,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RagisterPage()));
                    },
                    child: const Text(
                      'Ragister Page',
                      style: TextStyle(fontSize: 18),
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
}

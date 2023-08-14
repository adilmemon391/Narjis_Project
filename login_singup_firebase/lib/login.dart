// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:login_singup_firebase/DatabaseHandle/DbHelper.dart';
import 'package:login_singup_firebase/Models/userModel.dart';
import 'package:login_singup_firebase/comm/gentextfield.dart';
import 'package:login_singup_firebase/signUp.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Future<SharedPreferences>_pref = SharedPreferences.getInstance();

  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  var dbHelper;
  SharedPreferences? logindata;
  bool? newuser;

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
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
      _conUserId.dispose();
      _conPassword.dispose();
    super.dispose();
  }

  login() async {
    String uid = _conUserId.text;
    String password = _conPassword.text;
    if(_formKey.currentState!.validate())if(uid !=''&& password!=''){
      logindata?.setBool('login', false);
      logindata?.setString('uid', uid);
      logindata?.setString('password', password);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
              const HomePage()));
    }
    if (uid.isEmpty) {
      if(_formKey.currentState!.validate())
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Please Enter User id"),
      ));
    } else if (password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Please Enter Password"),
      ));
    } else {
      await dbHelper.getLoginUser(uid, password).then((UserData) {
        if(UserData!=null){

          setSP(UserData).whenComplete((){
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const HomePage()),
                    (Route<dynamic> route) => false);
          });

        }
        else{
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Error : User not Found"),
          ));
        }

      }).catchError((error) {
        print(error);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Error : Login faield"),
        ));
      });
    }
  }

  Future setSP(UserModel user)async{
    final SharedPreferences sp=await _pref;

    sp.setString("UserId", user.UserId!);
    sp.setString("UserName", user.UserName!);
    sp.setString("email", user.email!);
    sp.setString("password", user.password!);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Login with Signup"),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 50),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    )),
                const SizedBox(
                  height: 50,
                ),
                // EMail TextField
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: gentextfield(
                    controller: _conUserId,
                    icon: Icons.person,
                    labeltext: 'User Id',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Password TextField
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: gentextfield(
                    controller: _conPassword,
                    icon: Icons.lock,
                    labeltext: 'Password',
                    isObscreText: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
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
                            login();
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ))),
                ),
                const SizedBox(
                  height: 110,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Does not have account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SignUpPage()));
                        },
                        child: const Text("Sign up"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

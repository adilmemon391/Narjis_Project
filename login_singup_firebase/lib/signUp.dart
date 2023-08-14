import 'package:flutter/material.dart';
import 'package:login_singup_firebase/DatabaseHandle/DbHelper.dart';
import 'package:login_singup_firebase/Models/userModel.dart';
import 'package:login_singup_firebase/comm/gentextfield.dart';
import 'package:login_singup_firebase/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  //bool securePassword1 = true;
  //bool securePassword2 = true;
  final _conUserId = TextEditingController();
  final _conUsername = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conCPassword = TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  var dbHelper;

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
  }

  signUP() async {
    //final form = _formKey.currentState;
    String uid = _conUserId.text;
    String username = _conUsername.text;
    String email = _conEmail.text;
    String password = _conPassword.text;
    String Cpassword = _conCPassword.text;

    if (uid.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Please Enter User id"),
      ));
    } else if (username.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Please Enter User name"),
      ));
    } else if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Please Enter Email"),
      ));
    } else if (password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Please Enter password"),
      ));
    } else if (Cpassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Please Enter Conform password"),
      ));
    }
    if (_formKey.currentState!.validate()) {
      if (password != Cpassword) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Password Does not match"),
        ));
      } else {
        _formKey.currentState!.save();

        UserModel uModel = UserModel(uid, username, email, password);
        await dbHelper.saveData(uModel).then((userData) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Successfully Saved"),
          ));
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const LoginPage()));
        }).catchError((error) {
          print(error);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Error : Data save fill"),
          ));
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up Page'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 30),
                    child: const Text(
                      "SignUp",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: gentextfield(
                    controller: _conUserId,
                    icon: Icons.person,
                    labeltext: 'User Id',
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: gentextfield(
                    controller: _conUsername,
                    inputType: TextInputType.name,
                    icon: Icons.person_outline,
                    labeltext: 'User Name',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: gentextfield(
                    controller: _conEmail,
                    inputType: TextInputType.emailAddress,
                    icon: Icons.email,
                    labeltext: 'Email',
                  ),
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
                  padding: const EdgeInsets.all(8.0),
                  child: gentextfield(
                    controller: _conCPassword,
                    icon: Icons.lock,
                    labeltext: 'Conform Password',
                    isObscreText: true,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
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
                            signUP();
                          },
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ))),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Does You have account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const LoginPage()),
                              (Route<dynamic> route) => false);
                        },
                        child: const Text("Sign in"))
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

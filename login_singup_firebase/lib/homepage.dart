import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:login_singup_firebase/DatabaseHandle/DbHelper.dart';
import 'package:login_singup_firebase/Models/userModel.dart';
import 'package:login_singup_firebase/comm/gentextfield.dart';
import 'package:login_singup_firebase/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = new GlobalKey<FormState>();
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  DbHelper? dbHelper;
  final _conUserId = TextEditingController();
  final _conDelUserId = TextEditingController();
  final _conUsername = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();
    dbHelper = DbHelper();
  }

  Future<Void?> getUserData() async {
    final SharedPreferences sp = await _pref;

    setState(() {
      //working onnnn
      _conUserId.text = sp.getString("UserId")!;
      _conDelUserId.text = sp.getString("UserId")!;
      _conUsername.text = sp.getString("UserName")!;

      /// //working offf
      _conEmail.text = sp.getString("email")!;
      print(_conEmail);
      _conPassword.text = sp.getString("password")!;
      print(_conPassword);
    });
  }

  update() async {
    String uid = _conUserId.text;
    String username = _conUsername.text;
    String email = _conEmail.text;
    String password = _conPassword.text;

    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      UserModel user = UserModel(uid, username, email, password);
      await dbHelper!.updateUser(user).then((value) {
        if (value == 1) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Successfully Update"),
          ));
          updateSP(user,true).whenComplete(() {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const LoginPage()),
                (Route<dynamic> route) => false);
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Error Update"),
          ));
        }
      }).catchError((error) {
        print(error);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Error"),
        ));
      });
    }
  }

  delete() async {
    String delUserID = _conDelUserId.text;
    await dbHelper!.deleteUser(delUserID).then((value) {
      if(value == 1) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Successfully Deleted"),
        ));
        //updateSP(null,false).whenComplete(() {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const LoginPage()),
                (Route<dynamic> route) => false);
        //});
      }
    });
  }

  Future updateSP(UserModel user,bool add) async {
    final SharedPreferences sp = await _pref;
    if(add){
      sp.setString("UserId", user.UserId!);
      sp.setString("UserName", user.UserName!);
      sp.setString("email", user.email!);
      sp.setString("password", user.password!);
    }
    else{
      sp.remove("UserId");
      sp.remove("UserName");
      sp.remove("email");
      sp.remove("password");
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Form(
          key: _formKey,
          child: Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: gentextfield(
                        controller: _conUserId,
                        isEnable: true,
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
                                update();
                              },
                              child: const Text(
                                "Update",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: gentextfield(
                        controller: _conDelUserId,
                        isEnable: true,
                        icon: Icons.person,
                        labeltext: 'User Id',
                      ),
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
                                delete();
                              },
                              child: const Text(
                                "Delete",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ))),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

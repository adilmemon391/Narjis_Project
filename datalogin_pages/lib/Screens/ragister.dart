// ignore_for_file: use_build_context_synchronously, curly_braces_in_flow_control_structures
import 'package:csc_picker/csc_picker.dart';
import 'package:datalogin_pages/Screens/dashbord.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RagisterPage extends StatefulWidget {
  const RagisterPage({super.key});

  @override
  State<RagisterPage> createState() => _RagisterPageState();
}

class _RagisterPageState extends State<RagisterPage> {
  TextEditingController countrycode = TextEditingController();
  TextEditingController name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _mobile = TextEditingController();
  var phone = "";
  final GlobalKey<FormState> _formKey = GlobalKey();
  SharedPreferences? logindata;
  bool? newuser;

  void checkIfAlreadyLogin() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata?.getBool('login') ?? true);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const DashBord()));
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _email.dispose();
    _password.dispose();
    name.dispose();
    _mobile.dispose();
    countrycode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkIfAlreadyLogin();

    countrycode.text = "+91";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ragister",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: formkey(),
    ));
  }

  Widget formkey() {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      controller: name,
                      keyboardType: TextInputType.emailAddress,
                      //controller: useremail_controller,
                      validator: ((value) {
                        if (value!.trim().isEmpty) {
                          return "Please enter name";
                        }

                        return null;
                      }),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0)),
                        labelText: "Name",
                        hintText: "Please name",
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 59, 11, 11)),
                      ),
                      onChanged: (value) {
                        setState(() {});
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //margin: const EdgeInsets.only(top: 5),
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(18)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countrycode,
                        style: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                        )),
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(color: Colors.grey, fontSize: 34),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextFormField(
                      controller: _mobile,
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        phone = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mobile No",
                        hintStyle: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                        )),
                      ),
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _password,
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
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _email,
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
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CSCPicker(
                layout: Layout.horizontal,
                flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,
                onCountryChanged: (contry) {},
                onStateChanged: (state) {},
                onCityChanged: (city) {},
                countryDropdownLabel: "*Contry",
                stateDropdownLabel: "*State",
                cityDropdownLabel: "*City",
                dropdownDialogRadius: 30,
                searchBarRadius: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.deepPurple,
              textColor: Colors.white,
              onPressed: () {
                String email = _email.text;
                String password = _password.text;
                String _name = name.text;
                String mobile = _mobile.text;
                String code = countrycode.text;
                if (_formKey.currentState!.validate()) if (email != '' &&
                    password != '' &&
                    _name != '' &&
                    code != '' &&
                    mobile != '') {
                  logindata?.setBool('login', false);
                  logindata?.setString('email', email);
                  logindata?.setString('password', password);
                  logindata?.setString('_name', _name);
                  logindata?.setString('mobile', mobile);
                  logindata?.setString('code', code);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashBord()));
                }
              },
              child: const Text(
                'Ragister',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

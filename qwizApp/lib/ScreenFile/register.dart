// ignore_for_file: library_private_types_in_public_api, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:qwizapp/ScreenFile/homepage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordControllerConform =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: ((value) {
                  if (value!.trim().isEmpty) {
                    return "Please enter valid name";
                  }

                  return null;
                }),
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                validator: ((value) {
                  if (value!.trim().isEmpty) {
                    return "Please enter Password";
                  }

                  return null;
                }),
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                validator: ((value) {
                  if (value!.trim().isEmpty) {
                    return "Please enter Conform Password";
                  }

                  return null;
                }),
                controller: _passwordControllerConform,
                decoration: const InputDecoration(
                  labelText: 'Conform Password',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!
                        .validate()) if (_usernameController !=
                            '' &&
                        _passwordController != '' &&
                        _passwordControllerConform != '') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    }
                  },
                  child: const Text("SIgn In"))
            ],
          ),
        ),
      ),
    );
  }
}




// import 'dart:io';
// import 'package:email_validator/email_validator.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:quizapp/common/custom_form_button.dart';
// import 'package:quizapp/common/page_header.dart';
// import '../common/custom_input_field.dart';
// import '../common/page_heading.dart';
// import 'loginpage.dart';
//
// enum GenderSelecation { male, female }
//
// class SignupPage extends StatefulWidget {
//   const SignupPage({Key? key}) : super(key: key);
//
//   @override
//   State<SignupPage> createState() => _SignupPageState();
// }
//
// class _SignupPageState extends State<SignupPage> {
//
//   TextEditingController passwordcontroller = TextEditingController();
//
//
//   final _signupFormKey = GlobalKey<FormState>();
//
//   File? imageFilee;
//   bool _hidePassword = false;
//   bool female = true;
//
//
//
//   Future pickImage() async {
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//
//       if (image == null) return;
//
//       final imageTemp = File(image.path);
//
//       setState(() => this.imageFilee = imageTemp);
//     } on PlatformException catch (e) {
//       print('Failed to pick image: $e');
//     }
//   }
//
//   Future cammera_Pic() async {
//     try {
//       final image = await ImagePicker().pickImage(
//           source: ImageSource.camera,
//           maxWidth: double.infinity,
//           maxHeight: double.infinity);
//
//       if (image == null) return;
//
//       final imageTemp = File(image.path);
//
//       setState(() => this.imageFilee = imageTemp);
//     } on PlatformException catch (e) {
//       print('Failed to pick image: $e');
//     }
//   }
//
//   void showPhotoOptions() {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: const Text("Upload Profile Picture"),
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 ListTile(
//                   onTap: () {
//                     Navigator.pop(context);
//                     pickImage();
//                     //selectImage(ImageSource.gallery);
//                   },
//                   leading: const Icon(Icons.photo_album),
//                   title: const Text("Select from Gallery"),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     Navigator.pop(context);
//                     cammera_Pic();
//                     //selectImage(ImageSource.camera);
//                   },
//                   leading: const Icon(Icons.camera_alt),
//                   title: const Text("Take a photo"),
//                 ),
//               ],
//             ),
//           );
//         });
//   }
//
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: const Color(0xffEEF1F3),
//         body: SingleChildScrollView(
//           child: Form(
//             key: _signupFormKey,
//             child: Column(
//               children: [
//                 const PageHeader(),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.vertical(
//                       top: Radius.circular(20),
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//                       const PageHeading(
//                         title: 'Sign-up',
//                       ),
//                       SizedBox(
//                         width: 130,
//                         height: 130,
//                         child: CupertinoButton(
//                           onPressed: () {
//                             showPhotoOptions();
//                           },
//                           padding: const EdgeInsets.all(0),
//                           child: CircleAvatar(
//                             backgroundColor: Colors.grey.shade200,
//                             radius: 60,
//                             backgroundImage: imageFilee != null
//                                 ? FileImage(imageFilee!)
//                                 : null,
//                             child: (imageFilee == null)
//                                 ? Stack(
//                               children: [
//                                 Positioned(
//                                   bottom: 5,
//                                   right: 5,
//                                   child: GestureDetector(
//                                     onTap: () => showPhotoOptions(),
//                                     child: Container(
//                                       height: 50,
//                                       width: 50,
//                                       decoration: BoxDecoration(
//                                         color: Colors.blue.shade400,
//                                         border: Border.all(
//                                             color: Colors.white,
//                                             width: 3),
//                                         borderRadius:
//                                         BorderRadius.circular(25),
//                                       ),
//                                       child: const Icon(
//                                         Icons.camera_alt_sharp,
//                                         color: Colors.white,
//                                         size: 25,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             )
//                                 : null,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 16,
//                       ),
//                       CustomInputField(
//                           labelText: 'Name',
//                           hintText: 'Your name',
//                           isDense: true,
//                           validator: (textValue) {
//                             if (textValue == null || textValue.isEmpty) {
//                               return 'Name field is required!';
//                             }
//                             return null;
//                           }),
//                       const SizedBox(
//                         height: 16,
//                       ),
//                       SizedBox(
//                           width: size.width * 0.8,
//                           child: const Text(
//                             "Select Gender:",
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold),
//                           )),
//                       const RadioExample(),
//
//                       const SizedBox(
//                         height: 16,
//                       ),
//                       CustomInputField(
//                           labelText: 'Email',
//                           hintText: 'Your email id',
//                           isDense: true,
//                           validator: (textValue) {
//                             if (textValue == null || textValue.isEmpty) {
//                               return 'Email is required!';
//                             }
//                             if (!EmailValidator.validate(textValue)) {
//                               return 'Please enter a valid email';
//                             }
//                             return null;
//                           }),
//                       const SizedBox(
//                         height: 16,
//                       ),
//                       // CustomInputField(
//                       //
//                       //     labelText: 'Contact no.',
//                       //     hintText: 'Your contact number',
//                       //
//                       //
//                       //     validator: (textValue) {
//                       //       if (textValue == null || textValue.isEmpty) {
//                       //         return 'Contact number is required!';
//                       //       }
//                       //       return null;
//                       //     }
//                       //
//                       //     ),
//                       Container(
//                         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
//                         height: 70,
//                         width: size.width * 0.9,
//                         // child:
//                       ),
//                       const SizedBox(
//                         height: 16,
//                       ),
//                       Container(
//                         height: 70,
//                         width: size.width,
//                         margin:
//                         const EdgeInsets.only(top: 10, left: 30, right: 30),
//                         alignment: Alignment.center,
//                         child: TextFormField(
//                           controller: passwordcontroller,
//                           decoration: InputDecoration(
//                               suffixIcon: GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     hidePassword = !hidePassword;
//                                   });
//                                 },
//                                 child: _hidePassword == true
//                                     ? const Icon(Icons.remove_red_eye)
//                                     : const Icon(Icons.remove_red_eye_outlined),
//                               ),
//                               prefixIcon: const Icon(Icons.vpn_key),
//                               border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30)),
//                               labelText: 'Password'),
//                           keyboardType: TextInputType.visiblePassword,
//                           obscureText: _hidePassword,
//
//                           validator: (textValue) {
//                             if (textValue == null || textValue.isEmpty) {
//                               return 'Password required!';
//                             }
//                             return null;
//                           },
//                           // ),
//                         ),
//                       ),
//
//                       const SizedBox(
//                         height: 22,
//                       ),
//                       CustomFormButton(
//                         innerText: 'Signup',
//                         onPressed: () {
//                           _handleSignupUser();
//                         },
//                       ),
//                       const SizedBox(
//                         height: 18,
//                       ),
//                       SizedBox(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             const Text(
//                               'Already have an account ? ',
//                               style: TextStyle(
//                                   fontSize: 13,
//                                   color: Color(0xff939393),
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             GestureDetector(
//                               onTap: () => {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                         const LoginScreen()))
//                               },
//                               child: const Text(
//                                 'Log-in',
//                                 style: TextStyle(
//                                     fontSize: 15,
//                                     color: Color(0xff748288),
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _handleSignupUser() {
//     // signup user
//     if (_signupFormKey.currentState!.validate()) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Submitting data..')),
//       );
//       Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const LoginScreen(),
//           ),
//               (route) => false);
//     }
//   }
// }
//
// enum SingingCharacter { male, female }
//
// class RadioExample extends StatefulWidget {
//   const RadioExample({super.key});
//
//   @override
//   State<RadioExample> createState() => _RadioExampleState();
// }
//
// class _RadioExampleState extends State<RadioExample> {
//   SingingCharacter? _character = SingingCharacter.male;
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SizedBox(
//       width: size.width * 0.8,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Expanded(
//             child: ListTile(
//               title: const Text('Male'),
//               leading: Radio<SingingCharacter>(
//                 value: SingingCharacter.male,
//                 groupValue: _character,
//                 onChanged: (SingingCharacter? value) {
//                   setState(() {
//                     _character = value;
//                   });
//                 },
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListTile(
//               titleAlignment: ListTileTitleAlignment.titleHeight,
//               title: const Text('Female'),
//               leading: Radio<SingingCharacter>(
//                 value: SingingCharacter.female,
//                 groupValue: _character,
//                 onChanged: (SingingCharacter? value) {
//                   setState(() {
//                     _character = value;
//                   });
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class IntlFild extends StatefulWidget {
//   final String? Function(String?) Validator;
//   const IntlFild({
//     Key? key,
//     required this.Validator,
//   }) : super(key: key);
//
//   @override
//   State<IntlFild> createState() => _IntlFildState();
// }
//
// class _IntlFildState extends State<IntlFild> {
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
//         height: 70,
//         width: size.width * 0.9,
//         child: IntlPhoneField(
//             decoration: const InputDecoration(
//                 labelText: 'Phone Number',
//                 enabledBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Colors.black54, width: 1))),
//             initialCountryCode: 'IN',
//
//             onChanged: (phone) {
//               print(phone.completeNumber);
//             },
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             validator:Widget.(textvalue) {
//     if(textvalue == null || textvalue.isEmpty){
//     return "phone Invilade";
//     }
//     };
//
//
//     ),
//     );
//   }
// }

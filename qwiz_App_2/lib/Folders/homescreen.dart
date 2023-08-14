import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qwiz_app_2/Folders/logout.dart';
import 'package:qwiz_app_2/Start_App/start_que.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _CategoriesState();
// }

// class _CategoriesState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("Assets/Image/main_back.png"),
//                 fit: BoxFit.fill)),
//         child: Column(
//           children: [
//             Container(
//               height: 50,
//               width: 100,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.grey,
//               ),
//               margin: const EdgeInsets.only(top: 30),
//               child: Text(
//                 "Home",
//                 style: GoogleFonts.robotoSlab(
//                   textStyle: const TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black54,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.only(top: 30, bottom: 30),
//               height: 80,
//               width: 150,
//               decoration: BoxDecoration(
//                   color: Colors.white24,
//                   borderRadius: BorderRadius.circular(20),
//                   image: const DecorationImage(
//                       image: AssetImage(
//                     "Assets/Image/logo.png",
//                   ))),
//             ),
//             Container(
//               alignment: Alignment.center,
//               height: 50,
//               width: 230,
//               color: Colors.black,
//               child: Column(
//                 children: [
//                   Text(
//                     "Goverment Exam",
//                     style: GoogleFonts.robotoSlab(
//                       textStyle: const TextStyle(
//                         fontSize: 20,
//                         color: Color.fromARGB(255, 232, 62, 140),
//                       ),
//                     ),
//                   ),
//                   Text(
//                     "Up Comming Goverment Exam 2023 - 24",
//                     style: GoogleFonts.robotoSlab(
//                       textStyle: const TextStyle(
//                         fontSize: 11,
//                         color: Color.fromARGB(255, 232, 62, 140),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   height: 50,
//                   width: 160,
//                   decoration: BoxDecoration(
//                       color: Colors.grey.shade400,
//                       borderRadius: BorderRadius.circular(15)),
//                   child: TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const CatagoryScreen(),
//                             ));
//                       },
//                       child: Text(
//                         "Catagorys ▼",
//                         style: GoogleFonts.robotoSlab(
//                           textStyle: const TextStyle(
//                             fontSize: 23,
//                             color: Colors.black,
//                           ),
//                         ),
//                       )),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   height: 50,
//                   width: 150,
//                   decoration: BoxDecoration(
//                       color: Colors.grey.shade400,
//                       borderRadius: BorderRadius.circular(15)),
//                   child: TextButton(
//                       onPressed: () {},
//                       child: Text(
//                         "About Us ►",
//                         style: GoogleFonts.robotoSlab(
//                           textStyle: const TextStyle(
//                             fontSize: 23,
//                             color: Colors.black,
//                           ),
//                         ),
//                       )),
//                 ),
//                 Container(
//                   height: 50,
//                   width: 150,
//                   decoration: BoxDecoration(
//                       color: Colors.grey.shade400,
//                       borderRadius: BorderRadius.circular(15)),
//                   child: TextButton(
//                       onPressed: () {},
//                       child: Text(
//                         "Help ►",
//                         style: GoogleFonts.robotoSlab(
//                           textStyle: const TextStyle(
//                             fontSize: 23,
//                             color: Colors.black,
//                           ),
//                         ),
//                       )),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   height: 50,
//                   width: 150,
//                   decoration: BoxDecoration(
//                       color: Colors.grey.shade400,
//                       borderRadius: BorderRadius.circular(15)),
//                   child: TextButton(
//                       onPressed: () {},
//                       child: Text(
//                         "Result ▓ ",
//                         style: GoogleFonts.robotoSlab(
//                           textStyle: const TextStyle(
//                             fontSize: 23,
//                             color: Colors.black,
//                           ),
//                         ),
//                       )),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 170,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   height: 50,
//                   width: 150,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.white70),
//                   child: TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const LoginScreen(),
//                             ));
//                       },
//                       child: Text(
//                         "Login",
//                         style: GoogleFonts.robotoSlab(
//                           textStyle: const TextStyle(
//                             fontSize: 23,
//                             color: Colors.black,
//                           ),
//                         ),
//                       )),
//                 ),
//                 Container(
//                   height: 50,
//                   width: 150,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       gradient: LinearGradient(
//                           begin: Alignment.bottomLeft,
//                           colors: [
//                             Colors.yellow.shade900,
//                             Colors.brown.shade800
//                           ])),
//                   child: TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const RegisterScreen(),
//                             ));
//                       },
//                       child: Text(
//                         "Register",
//                         style: GoogleFonts.robotoSlab(
//                           textStyle: const TextStyle(
//                             fontSize: 23,
//                             color: Colors.black,
//                           ),
//                         ),
//                       )),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        title: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LogOut()),
            );
          },
          child: Text(
            "Login",
            style: GoogleFonts.robotoSlab(
                textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.white60,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        actions: [
          Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    // background (button) color
                    foregroundColor: Colors.white, // foreground (text) color
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const StartQwiz()));
                  },
                  child: const Text("Start Qwiz")))
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "catogary",
                  style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StartQwiz()));
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //     topRight: Radius.circular(20),
                    //     topLeft: Radius.circular(20)),
                    color: Colors.grey,
                  ),
                  height: 60,
                  width: 160,
                  child: Text(
                    "Dart",
                    style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: 60,
                width: 160,
                child: Text(
                  "C++",
                  style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: 60,
                width: 160,
                child: Text(
                  "Asp.Net",
                  style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                height: 60,
                width: 160,
                child: Text(
                  "Java",
                  style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Result",
                  style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          // const ReadMoreText(
          //   'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
          //   trimLines: 2,
          //   colorClickableText: Colors.pink,
          //   trimMode: TrimMode.Line,
          //   trimCollapsedText: 'Show more',
          //   trimExpandedText: 'Show less',
          //   moreStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // ),
        ],
      ),
    );
  }
}

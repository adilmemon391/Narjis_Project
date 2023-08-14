import 'package:app/textfield.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _buttonindex = 0;
  int image = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: SafeArea(
        child: _WidgetColumn("Please Fill in the"),
        // child: Column(
        //   children: [
        //     SizedBox(
        //       height: 200,
        //     ),
        //     Container(
        //       alignment: Alignment.center,
        //       //height: 400,
        //       child: Text(
        //         "Please Fill in the ",
        //         style: TextStyle(
        //             fontSize: 30,
        //             fontStyle: FontStyle.italic,
        //             fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //     Container(
        //       alignment: Alignment.center,
        //       //height: 400,
        //       child: Text(
        //         "Information",
        //         style: TextStyle(fontSize: 30),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 40,
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
        //           InkWell(
        //             onTap: () {
        //               setState(() {
        //                 _buttonindex = 0;
        //               });
        //             },
        //             child: Container(
        //               decoration: BoxDecoration(
        //                   color: _buttonindex == 0 ? Colors.blue : Colors.white,
        //                   borderRadius: BorderRadius.circular(10),
        //                   image: DecorationImage(
        //                       image: AssetImage("assets/icon/72734.png"))),
        //               height: 190,
        //               width: 150,
        //               alignment: Alignment.bottomCenter,
        //               child:
        //                   // Icon(Icons.image), width: 15,
        //
        //                   Text(
        //                 "Vender",
        //                 style: TextStyle(
        //                     fontSize: 20, fontWeight: FontWeight.bold),
        //               ),
        //             ),
        //           ),
        //           SizedBox(
        //             width: 40,
        //           ),
        //           InkWell(
        //             onTap: () {
        //               setState(() {
        //                 _buttonindex = 1;
        //               });
        //             },
        //             child: Container(
        //                 decoration: BoxDecoration(
        //                   color: _buttonindex == 1 ? Colors.blue : Colors.white,
        //                   borderRadius: BorderRadius.circular(10),
        //                   image: DecorationImage(
        //                     image: AssetImage(
        //                       "assets/icon/2845719.png",
        //                     ),
        //                   ),
        //                 ),
        //                 height: 190,
        //                 width: 150,
        //                 alignment: Alignment.bottomCenter,
        //                 child: Text(
        //                   "ManuFecture",
        //                   style: TextStyle(
        //                       fontWeight: FontWeight.bold, fontSize: 18),
        //                 )
        //
        //                 //Icon(Icons.image),
        //
        //                 ),
        //           )
        //         ],
        //       ),
        //     ),
        //     SizedBox(
        //       height: 50,
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         ElevatedButton(
        //             style: ElevatedButton.styleFrom(
        //               foregroundColor: Colors.white,
        //               backgroundColor: Colors.purple,
        //               shadowColor: Colors.grey,
        //               elevation: 30,
        //               padding: EdgeInsets.only(
        //                   left: 100, right: 100, top: 10, bottom: 10),
        //               shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(32.0)),
        //             ),
        //             onPressed: () {
        //               Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                     builder: (context) => login(),
        //                   ));
        //             },
        //             child: Text(
        //               "Next",
        //               style: TextStyle(
        //                   fontStyle: FontStyle.italic,
        //                   fontWeight: FontWeight.bold,
        //                   fontSize: 20),
        //             ))
        //       ],
        //     )
        //   ],
        // ),
      ),
    );
  }
  Widget _WidgetColumn(String adil){
    return Column(
      children: [
        SizedBox(
          height: 200,
        ),
        Container(
          alignment: Alignment.center,
          //height: 400,
          child: Text(
            //"Please Fill in the ",
            adil,
            style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          //height: 400,
          child: Text(
            "Information",
            style: TextStyle(fontSize: 30),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _buttonindex = 0;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: _buttonindex == 0 ? Colors.blue : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/icon/72734.png"))),
                  height: 190,
                  width: 150,
                  alignment: Alignment.bottomCenter,
                  child:
                  // Icon(Icons.image), width: 15,

                  Text(
                    "Vender",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _buttonindex = 1;
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: _buttonindex == 1 ? Colors.blue : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/icon/2845719.png",
                        ),
                      ),
                    ),
                    height: 190,
                    width: 150,
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "ManuFecture",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    )

                  //Icon(Icons.image),

                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple,
                  shadowColor: Colors.grey,
                  elevation: 30,
                  padding: EdgeInsets.only(
                      left: 100, right: 100, top: 10, bottom: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => login(),
                      ));
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))
          ],
        )
      ],
    );
  }
}

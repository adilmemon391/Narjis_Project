import 'package:flutter/material.dart';

import 'blank.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(colors: [
              Colors.blueAccent,
              Colors.black12,
            ], begin: Alignment.topCenter, end: Alignment.center),
          ),
          child: SafeArea(
              child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.blue,
                                blurRadius: 6,
                                spreadRadius: 4)
                          ]),
                      child: const Icon(
                        Icons.location_on,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "A-602 \nA-602 Makarba .380051",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Colors.white,
                      )),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Blank()));
                      },
                      child: const CircleAvatar(
                        radius: 25,
                        // backgroundImage: NetworkImage(
                        //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOc9VDs02ZrmIC7pS3WzBTvXl8UrI3jwAOVQ&usqp=CAU"),
                        backgroundColor: Colors.cyan,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 12, right: 5, top: 5),
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.white70, Colors.white54],
                      ),
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/a2.png"),
                          alignment: Alignment.center),
                    ),
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 100, right: 50),
                              height: 25,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.deepOrange),
                              child: const Text(
                                "04",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20, left: 25),
                              alignment: Alignment.bottomCenter,
                              child: const Text(
                                "My Products",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5, right: 0, top: 5),
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.white70, Colors.white54],
                      ),
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/a3.png"),
                          alignment: Alignment.center),
                    ),
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(bottom: 20),
                    child: const Text(
                      "Add Products",
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 370,
                      child: Row(
                        children: [
                          Container(
                              height: 40,
                              margin: const EdgeInsets.only(left: 10),
                              child: const Image(
                                image: AssetImage(
                                  "assets/images/uniyen.png",
                                ),
                              )),
                          const Text(
                            "Enquiery Revied",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange,
                                ),
                                height: 30,
                                width: 39,
                                child: const Center(
                                    child: Text(
                                  "04",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ))),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 370,
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(left: 10),
                            child: const Image(
                                image:
                                    AssetImage("assets/images/myproduct.png")),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "Rating & Reviesews",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            " (3.25)",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.orange,
                                ),
                                height: 30,
                                width: 39,
                                child: const Center(
                                    child: Text(
                                  "04",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ))),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Recent Inquiery",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "See all  >",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    )
                  ],
                ),
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 5, bottom: 10),
                  child: Container(
                    height: 340,
                    width: 370,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                          )
                        ]),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10, left: 10),
                              child: const CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: Text(
                                  "K",
                                  style: TextStyle(
                                      fontSize: 31,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20, left: 20),
                              child: const Text(
                                "Adil\nJan 2023 1:15PM",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 2,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey, width: 1))),
                          ),
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: Text(
                                "\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eros dolor, mattis et sagittis nec, accumsan nec nulla. Praesent aliquet posuere nisi at molestie. Suspendisse condimentum elit",
                                style: TextStyle(fontSize: 18),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20, left: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black12,
                              ),
                              height: 30,
                              width: 130,
                              child: const Center(
                                  child: Text(
                                "Re Mark ▼",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 5, top: 9),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 20,
                                child: Icon(
                                  Icons.edit,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 75,
                          width: 330,
                          margin: const EdgeInsets.only(
                            top: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: const Text(
                                      "Me",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: const Text(
                                      "jan 13, 2023 21:14 PM",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur",
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ],
          )),
        ),
      ]),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home,
      //             //    color: Colors.black,
      //             color: Colors.blue),
      //         label: 'Home',
      //         backgroundColor: Colors.white12),
      //     BottomNavigationBarItem(
      //         icon: InkWell(
      //           onTap: (){
      //             Navigator.push(context, MaterialPageRoute(builder: (context)=>nextpage()));
      //           },
      //             child: Icon(Icons.business, color: Colors.blue)),
      //         label: 'Business',
      //         backgroundColor: Colors.orange),
      //     BottomNavigationBarItem(
      //         icon: InkWell(
      //           onTap: (){
      //             Navigator.push(context, MaterialPageRoute(builder: (context)=>shoes()));
      //           },
      //           child: Icon(
      //             Icons.forward_to_inbox_outlined,
      //             color: Colors.blue,
      //           ),
      //         ),
      //         label: 'forward_to_inbox_outlined',
      //         backgroundColor: Colors.black),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.settings, color: Colors.blue),
      //         label: 'settings',
      //         backgroundColor: Colors.yellow)
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.white,
      //   onTap: _onItemTapped,
      //
      //   //currentIndex: _selectedIndex,
      // ),
    );
  }
}

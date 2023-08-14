import 'package:appdesign/widget/nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      width: 390,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Img slides.png"),
                              fit: BoxFit.fill)),
                      padding: const EdgeInsets.all(3),
                      height: 230,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white10,
                        ),
                        margin: const EdgeInsets.only(left: 20, top: 30),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Nav()),
                                (route) => false);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.grey,
                          ),
                        ),
                      )),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ivolks Wireless Charger Cordless CellPhone\nRapid Charger.",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "\$310.00",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "\$999.00",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "( -50% )",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "(40)",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Product detail",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
               const Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Are you tired of slow, inefficient charging with too many wires that get tangled with each other? ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black45,
                        )),
                  )),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                        Text("If you are, we have just the solution for you!",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                            )),
                  )),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Combining super-fast charging and wireless technology, Ivolks is proud to present…",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black45,
                        )),
                  )),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(top: 30, left: 10),
                    child: Text("Manufacturer",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  )),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                height: 155,
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle 31.png"))),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10, top: 20),
                                height: 30,
                                width: 150,
                                alignment: Alignment.center,
                                child: const Text(
                                  "Kalapi Clothes",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                                margin: const EdgeInsets.only(left: 40),
                                height: 30,
                                width: 40,
                                alignment: Alignment.center,
                                child: const Text("4.0",
                                    style: TextStyle(color: Colors.white)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 5),
                                height: 40,
                                width: 200,
                                alignment: Alignment.centerLeft,
                                child: RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 30,
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                height: 40,
                                child: const Text(
                                  "10 Products 10 Services available in..",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

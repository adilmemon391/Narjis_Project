import 'package:appdesign/widget/nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShoesScreen extends StatefulWidget {
  const ShoesScreen({super.key});

  @override
  State<ShoesScreen> createState() => _ShoesScreenState();
}

class _ShoesScreenState extends State<ShoesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(colors: [
          Colors.blueAccent,
          Colors.black12,
        ], begin: Alignment.topCenter, end: Alignment.center),
      ),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 70,
                  width: 370,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        height: 30,
                        width: 30,
                        child: const Icon(Icons.location_on),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 19, right: 90),
                                        child: const Text(
                                          "A-602",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.all(5),
                                        child: const Text(
                                          "A-602. Makraba. 380051",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Nav()),
                                              (route) => false);
                                        },
                                        child: const Icon(
                                          Icons.arrow_drop_down_sharp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.only(left: 100, top: 5),
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.account_circle,
                                      size: 35,
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      )
                    ],
                  )),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    width: 370,
                    child: TextFormField(
                      //keyboardType: TextInputType.emailAddress,

                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        border: InputBorder.none,
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        hintText: "Search here..",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 59, 11, 11)),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: const Text(
                        "My Products",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 230,
                    width: 170,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/shoes1.png",
                                      ),
                                      fit: BoxFit.fill)),
                              height: 150,
                              width: 170,
                            ),
                          ],
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 3),
                            child: const Text(
                              "Sport shoes",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 3),
                            child: const Text(
                              "@1,450.00",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 3),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "@999.00",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 8),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "( -50% )",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 3),
                              alignment: Alignment.centerLeft,
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "( 40 )",
                                style: TextStyle(color: Colors.black38),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 230,
                    width: 170,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/shoes2.png",
                                      ),
                                      fit: BoxFit.fill)),
                              height: 150,
                              width: 170,
                            ),
                          ],
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 3),
                            child: const Text(
                              "Sport shoes",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            margin: const EdgeInsets.only(left: 3),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "@1,450.00",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 3),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "@999.00",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 8),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "( -50% )",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 3),
                              alignment: Alignment.centerLeft,
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "( 40 )",
                                style: TextStyle(color: Colors.black38),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 230,
                    width: 170,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/shoes1.png",
                                      ),
                                      fit: BoxFit.fill)),
                              height: 150,
                              width: 170,
                            ),
                          ],
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 3),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "Sport shoes",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            margin: const EdgeInsets.only(left: 3),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "@1,450.00",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 3),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "@999.00",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 8),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "( -50% )",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 3),
                              alignment: Alignment.centerLeft,
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "( 40 )",
                                style: TextStyle(color: Colors.black38),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 230,
                    width: 170,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/shoes2.png",
                                      ),
                                      fit: BoxFit.fill)),
                              height: 150,
                              width: 170,
                            ),
                          ],
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 3),
                            child: const Text(
                              "Sport shoes",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            margin: const EdgeInsets.only(left: 3),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "@1,450.00",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                        Row(
                          children: [
                            Container(
                                alignment: Alignment.topLeft,
                                margin: const EdgeInsets.only(left: 3),
                                child: const Text(
                                  "@999.00",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 8),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "( -50% )",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 3),
                              alignment: Alignment.centerLeft,
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "( 40 )",
                                style: TextStyle(color: Colors.black38),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 230,
                    width: 170,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/shoes1.png",
                                      ),
                                      fit: BoxFit.fill)),
                              height: 150,
                              width: 170,
                            ),
                          ],
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 3),
                            child: const Text(
                              "Sport shoes",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            margin: const EdgeInsets.only(left: 3),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "@1,450.00",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 3),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "@999.00",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 8),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "( -50% )",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 3),
                              alignment: Alignment.centerLeft,
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "( 40 )",
                                style: TextStyle(color: Colors.black38),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 230,
                    width: 170,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/shoes2.png",
                                      ),
                                      fit: BoxFit.fill)),
                              height: 150,
                              width: 170,
                            ),
                          ],
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 3),
                            child: const Text(
                              "Sport shoes",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            margin: const EdgeInsets.only(left: 3),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "@1,450.00",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 3),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "@999.00",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 8),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "( -50% )",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 3),
                              alignment: Alignment.centerLeft,
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "( 40 )",
                                style: TextStyle(color: Colors.black38),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 230,
                    width: 170,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/shoes1.png",
                                      ),
                                      fit: BoxFit.fill)),
                              height: 150,
                              width: 170,
                            ),
                          ],
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 3),
                            child: const Text(
                              "Sport shoes",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            margin: const EdgeInsets.only(left: 3),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "@1,450.00",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 3),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "@999.00",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 8),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "( -50% )",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 3),
                              alignment: Alignment.centerLeft,
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "( 40 )",
                                style: TextStyle(color: Colors.black38),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 230,
                    width: 170,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/shoes2.png",
                                      ),
                                      fit: BoxFit.fill)),
                              height: 150,
                              width: 170,
                            ),
                          ],
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 3),
                            child: const Text(
                              "Sport shoes",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            margin: const EdgeInsets.only(left: 3),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "@1,450.00",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                        Row(
                          children: [
                            Container(
                                alignment: Alignment.topLeft,
                                margin: const EdgeInsets.only(left: 3),
                                child: const Text(
                                  "@999.00",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 8),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "( -50% )",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 3),
                              alignment: Alignment.centerLeft,
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "( 40 )",
                                style: TextStyle(color: Colors.black38),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

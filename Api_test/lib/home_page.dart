import 'dart:convert';

import 'package:api_test/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Future function
  Future<List> getdata() async {
    final responce =
        await http.get(Uri.parse('http://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(responce.body.toString()) ;
    if (responce.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        samplepost.add(SamplePost.fromJson(index));
      }
      return samplepost;
    } else {
      return samplepost;
    }
  }

  List<SamplePost> samplepost = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getdata(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: samplepost.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 290,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User id:${samplepost[index].userId}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          "id:${samplepost[index].id}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Title:${samplepost[index].title}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Body:${samplepost[index].body}",
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  );
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

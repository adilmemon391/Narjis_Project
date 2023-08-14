import 'dart:convert';

import 'package:custom_selectable_text/custom_selectable_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../All_Models/dartModel.dart';
import 'package:http/http.dart' as http;

import '../CategoryWidgets/AllColors.dart';

class DartQuestion extends StatefulWidget {
  const DartQuestion({super.key});

  @override
  State<DartQuestion> createState() => _DartQuestionState();
}

class _DartQuestionState extends State<DartQuestion> {
  List<Dart> samplepost = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: FutureBuilder(
              future: getdata(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: samplepost.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 350,
                          decoration: BoxDecoration(
                              color: appCustomTextFieldHintDarkColor,
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "albumId: ${samplepost[index].albumId}",
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              Text(
                                "id: ${samplepost[index].id}",
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Text(
                                "Title: ${samplepost[index].title}",
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              CustomSelectableText(
                                "url,:, ${samplepost[index].url}",
                                items: [
                                  CustomSelectableTextItem.icon(
                                      icon: const Icon(Icons.copy),
                                      controlType: SelectionControlType.copy,
                                      onPressed: (text) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text("Copied $text text"),
                                        ));
                                      }),
                                  CustomSelectableTextItem.icon(
                                    controlType: SelectionControlType.selectAll,
                                    icon: const Icon(Icons.select_all),
                                  ),
                                  CustomSelectableTextItem.icon(
                                      icon: const Icon(Icons.share),
                                      onPressed: (text) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text("Shared $text text"),
                                        ));
                                      }),
                                  // CustomSelectableTextItem.popUpMenuButton(
                                  //     child: PopupMenuButton(
                                  //       itemBuilder: (context) =>
                                  //       [
                                  //         const PopupMenuItem(
                                  //           child: Text("Text 1"),
                                  //         ),
                                  //         const PopupMenuItem(
                                  //           child: Text("Text 2"),
                                  //         ),
                                  //       ],
                                  //     )),
                                ],
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Card(
                                color: Colors.blue,
                                child: Text(
                                  "thumbnailUrl: ${samplepost[index].thumbnailUrl}",
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                } else {
                  return Center(
                    child: Lottie.network(
                        'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
                  );
                }
              }),
        ),
      ),
    );
  }

  Future<List<Dart>> getdata() async {
    final responce = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(responce.body.toString());
    if (responce.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        samplepost.add(Dart.fromJson(index));
      }
      return samplepost;
    } else {
      return samplepost;
    }
  }
}

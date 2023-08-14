// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qwiz_app_2/Start_App/question.dart';
import 'package:qwiz_app_2/Start_App/screenchange.dart';

class StartQwiz extends StatefulWidget {
  const StartQwiz({super.key});

  @override
  State<StartQwiz> createState() => _StartQwizState();
}

class _StartQwizState extends State<StartQwiz> {
  Color maincolor = const Color(0xFF252c4a);
  Color secoundcolor = const Color(0xFF117eeb);

  final PageController _controller = PageController(initialPage: 0);
  bool ispressed = false;
  Color isAnswer = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = const Color(0xFF117eeb);
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: maincolor,
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            onPageChanged: (Page) {
              setState(() {
                ispressed = false;
              });
            },
            itemCount: question.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1}/${question.length}",
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 28.0),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 8.0,
                    thickness: 1.0,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    question[index].Question!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  for (int i = 0; i < question[index].answer!.length; i++)
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 18.0),
                      child: MaterialButton(
                        shape: const StadiumBorder(),
                        color: ispressed
                            ? question[index].answer!.entries.toList()[i].value
                                ? isAnswer
                                : isWrong
                            : secoundcolor,
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        onPressed: ispressed
                            ? () {}
                            : () {
                                setState(() {
                                  ispressed = true;
                                });
                                if (question[index]
                                    .answer!
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  score += 10;
                                  if (kDebugMode) {
                                    print(score);
                                  }
                                }
                              },
                        child: Text(
                          question[index].answer!.keys.toList()[i],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                          onPressed: ispressed
                              ? index + 1 == question.length
                                  ? () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  ScreenChange(score))));
                                    }
                                  : () {
                                      _controller.nextPage(
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.linear);
                                    }
                              : null,
                          style: OutlinedButton.styleFrom(
                              shape: const StadiumBorder(),
                              side: const BorderSide(
                                  color: Colors.orange, width: 1.0)),
                          child: Text(
                            index + 1 == question.length
                                ? "see result"
                                : "next Question",
                            style: const TextStyle(color: Colors.white),
                          )),
                    ],
                  )
                ],
              );
            }),
      ),
    ));
  }
}

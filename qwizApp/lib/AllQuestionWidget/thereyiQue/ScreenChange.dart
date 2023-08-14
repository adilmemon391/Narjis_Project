import 'package:flutter/material.dart';
import 'package:qwizapp/AllQuestionWidget/thereyiQue/startQue.dart';

import '../../CategoryWidgets/category.dart';

class ScreenChange extends StatefulWidget {
  final int score;

  const ScreenChange(this.score, {Key? key}) : super(key: key);

  @override
  State<ScreenChange> createState() => _ScreenChangeState();
}

class _ScreenChangeState extends State<ScreenChange> {
  @override
  Widget build(BuildContext context) {
    Color maincolor = const Color(0xFF252c4a);
    //Color secoundcolor = const Color(0xFF117eeb);

    return Scaffold(
      backgroundColor: maincolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Congratulation",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "your score is :",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "${widget.score}",
              style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: ((context) => const Category())),
                (route) => false,
              );
            },
            elevation: 0.0,
            color: Colors.orange,
            textColor: Colors.white,
            child: const Text("Repit the Qwiz "),
          )
        ],
      ),
    );
  }
}

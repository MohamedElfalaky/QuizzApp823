import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizz_iti_823/Screens/opening_screen.dart';

import '../Global/quizz_data.dart';

class ScoreScreen extends StatefulWidget {
  final int totalScore;
  final int totalNumOfQuestion;
  // StreamController? myStream;
  // Timer? myTimer;

  ScoreScreen(
      {super.key, required this.totalScore, required this.totalNumOfQuestion});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
                    text: "Congrate ",
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                    children: [
                  TextSpan(
                      text: "${userNameController.text} \n",
                      style: TextStyle(
                          color: Color.fromARGB(255, 196, 12, 52),
                          fontSize: 25)),
                  const TextSpan(text: "your score is "),
                  TextSpan(
                      text:
                          "${widget.totalScore} / ${widget.totalNumOfQuestion}",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 196, 12, 52),
                          fontSize: 25)),
                ])),

            TextButton(
                onPressed: () {
                  // Navigator.pushAndRemoveUntil(
                  //   context,
                  //   MaterialPageRoute<void>(
                  //     builder: (BuildContext context) => const OpeningScreen(),
                  //   ),
                  // );

                  Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const OpeningScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text("Play again"))
            // Text("Congrate Mohamed your score is 6/10")
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    userNameController.clear();
    // widget.myStream!.close();           // Memory leak
    // widget.myTimer!.cancel();           // Memory leak
  }
}

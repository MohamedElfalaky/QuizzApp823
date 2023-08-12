import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  List quizName = ["Sport Test", "History Test", "General Test"];
  List quizColor = [Colors.blue, Colors.red, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 3; i++)
            Expanded(
              // بتاخد اقصى مساحة ممكنة من المساحة المتاحة
              child: Container(
                child: Center(
                  child: Text(quizName[i]),
                ),
                decoration: BoxDecoration(
                    color: quizColor[i],
                    border: Border.all(width: 1, color: Colors.black)),
              ),
            )
        ],
      ),
    );
  }
}

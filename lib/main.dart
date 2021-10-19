// ignore_for_file: prefer_const_constructors, must_be_immutable

import "package:flutter/material.dart";

// void main() {
// runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
    // ignore: avoid_print
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var questions = [
      "What is your favourite colour?",
      "What is your favourite animal?",
      "What is your favourite food?",
    ]; // Questions
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First app"),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              child: Text("Answer1"),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text("Answer2"),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text("Answer3"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}

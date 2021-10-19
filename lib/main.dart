// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

// void main() {
// runApp(MyApp());
// }
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void answerQuestion() {
    // ignore: avoid_print
    print("Anser chosen!");
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var questions = [
      "What is your favourite colour?",
      "What is your favourite animal?",
    ]; // Questions
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First app"),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text("The question!"),
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

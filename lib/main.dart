// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_element, unused_import

import "package:flutter/material.dart";
import './question.dart';
import './answer.dart';

// void main() {
// runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var questions = [
      {
        "questionText": "What is your favourite colour?",
        "answers": ["Black", "Green", "Red", "White"]
      },
      {
        "questionText": "What is your favourite animal?",
        "answers": ["Rabbit", "Snake", "Elephant", "Lion"]
      },
      {
        "questionText": "What is your favourite food?",
        "answers": ["Hamburger", "Pizza", "Tacos", "Sushi"]
      },
    ]; // Questions
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First app"),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Question(
              questions[_questionIndex]['questionText']?.toString() ?? ' ',
            ),
            ...(questions[_questionIndex]["answers"] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

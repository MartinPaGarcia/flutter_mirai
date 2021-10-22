// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_element, unused_import

import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';

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
  // ignore: unused_local_variable
  static const _questions = [
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
  ]; // _Questions
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print("We have more questions");
    } else {
      // ignore: avoid_print
      print("No more questions");
    }
  }

  //Set questionIndex = 0
  void _setquestionIndex() {
    setState(() {
      _questionIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: () => _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
              resetIndexResult:() => _setquestionIndex,

            ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  //final VoidCallback answerQuestion;
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Question(
          questions[questionIndex]['questionText']?.toString() ?? ' ',
        ),
        ...(questions[questionIndex]["answers"] as List<String>).map((answer) {
          return Answer(answerQuestion(), answer);
        }).toList()
      ],
    );
  }
}

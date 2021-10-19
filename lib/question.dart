

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    //ignore: avoid_unnecessary_containers, sized_box_for_whitespace
    return Container(
      width: double.infinity,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.all(10),
      child: Text(
      questionText,
      // ignore: prefer_const_constructors
      style:TextStyle(fontSize: 28),
      textAlign:TextAlign.center,
      ),
    );
  }
}

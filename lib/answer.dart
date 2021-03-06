// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color(0xFF00B8D4),
        textColor: Colors.white70,
        child: Text(answerText),
        //tambien puede usarse asi onPressed: () => selectHandler(),
        onPressed: selectHandler,
      ),
    );
  }
}

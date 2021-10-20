// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child:RaisedButton(
        color:Colors.greenAccent,
        child: Text("Answer1"),
        onPressed: null,
      ),
    );
  }
}

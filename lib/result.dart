// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, deprecated_member_use
import "package:flutter/material.dart";


class Result extends StatelessWidget {
  final Function resetIndexResult;
  Result({required this.resetIndexResult});

  @override
  Widget build(BuildContext context) {
    return Center( 
      child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("You did it bitch"),
        TextButton(
          onPressed:() => resetIndexResult(), 
          child: Text("Hello mf"),
        )
      ]
    )
    );
  }
}

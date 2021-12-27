import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  late String answerText;
  late VoidCallback answerTap;
  bool pressedButton = false;

  Answer({required this.answerText, required this.answerTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        answerTap();
        pressedButton = !pressedButton;
      },
      child: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
        width: double.infinity,
        decoration: BoxDecoration(
            color: pressedButton ? Colors.red : Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20.0)),
        child: Text(
          answerText,
          style: TextStyle(fontSize: 15.0),
        ),
      ),
    );
  }
}

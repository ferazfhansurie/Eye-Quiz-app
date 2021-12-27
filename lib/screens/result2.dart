import 'package:flutter/material.dart';
import 'package:quiz/screens/category.dart';

class Result2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      SizedBox(height: 150),
      Container(
          height: 250,
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mood_bad,
                size: 70,
                color: Colors.black,
              ),
              Icon(
                Icons.mood_bad,
                size: 70,
                color: Colors.black,
              ),
              Icon(
                Icons.mood_bad,
                size: 70,
                color: Colors.black,
              ),
            ],
          )),
      Text(
        "Unfortunetly,you failed the test",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        "please conduct further full eye examination to confirm",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 15,
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shadowColor: MaterialStateProperty.all<Color>(Colors.green),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ))),
          child: Container(
              height: 55,
              width: 120,
              margin: EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text("Back",
                      style: TextStyle(
                          fontSize: 20.0, color: Colors.grey.shade900))))),
    ])));
  }
}

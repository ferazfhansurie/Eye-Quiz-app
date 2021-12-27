import 'package:flutter/material.dart';
import 'package:quiz/screens/category.dart';

class Result extends StatelessWidget {
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
                Icons.celebration,
                size: 70,
                color: Colors.red.shade900,
              ),
              Icon(
                Icons.celebration,
                size: 70,
                color: Colors.green.shade900,
              ),
              Icon(
                Icons.celebration,
                size: 70,
                color: Colors.blue.shade900,
              ),
            ],
          )),
      Text(
        "Congratulation, you pass your vision screening.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        "your certification will be delivered by email",
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

import 'package:flutter/material.dart';
import 'package:quiz/font/eyes.dart';

import 'package:quiz/screens/quiz1.dart';
import 'package:quiz/screens/quiz2%20copy.dart';
import 'package:quiz/screens/quiz2.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      SizedBox(
        height: 50,
      ),
      Text(
        "Category",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35.0,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 25,
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60))),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red.shade900,
                        ),
                        child: Column(children: [
                          IconButton(
                            iconSize: 65,
                            icon: Icon(Icons.baby_changing_station),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Quiz1()));
                            },
                          ),
                          Text("New Born")
                        ]),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue.shade900,
                        ),
                        child: Column(children: [
                          IconButton(
                            iconSize: 65,
                            icon: Icon(Icons.elderly),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Quiz2()));
                            },
                          ),
                          Text("Elderly")
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.green.shade900,
                        ),
                        child: Column(children: [
                          IconButton(
                            iconSize: 65,
                            icon: Icon(Icons.person),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Quiz3()));
                            },
                          ),
                          Text("Adult")
                        ]),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shadowColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                                      fontSize: 20.0,
                                      color: Colors.grey.shade900))))),
                ],
              ),
            ),
          ),
        ),
      ),
    ])));
  }
}

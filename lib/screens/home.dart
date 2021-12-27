import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quiz/screens/profile.dart';
import 'package:quiz/services/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:quiz/screens/language.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.red.shade500,
          Colors.red.shade600,
          Colors.red.shade900,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "Eye",
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "Q2",
                          style: TextStyle(
                              color: Colors.red.shade900,
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "HoL",
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Main Menu",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 35,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Language()));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red.shade900),
                                shadowColor: MaterialStateProperty.all<Color>(
                                    Colors.green),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ))),
                            child: Container(
                                height: 65,
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Text("Start Your Quiz",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white))))),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profile()));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shadowColor: MaterialStateProperty.all<Color>(
                                    Colors.green),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ))),
                            child: Container(
                                height: 65,
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Text("User Profile",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.grey.shade600))))),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

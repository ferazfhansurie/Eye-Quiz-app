import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:quiz/services/auth_service.dart';

class Profile extends StatefulWidget {
  final _auth = FirebaseAuth.instance;
  dynamic user;
  late String userEmail;
  late String userPhoneNumber;

  void getCurrentUserInfo() {
    user = _auth.currentUser;
    userEmail = user.email;
    userPhoneNumber = user.phoneNumber;
  }

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        SizedBox(
          height: 75,
        ),
        Text(
          "Profile",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35.0,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 55,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Feraz@gmail.com",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                    ))
              ],
            )
          ],
        ),
        SizedBox(
          height: 375,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shadowColor: MaterialStateProperty.all<Color>(Colors.green),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
            child: Container(
                height: 30,
                width: 150,
                margin: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text("Back",
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.red.shade600))))),
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
            onPressed: () {
              context.read<AuthenticationService>().signOut();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shadowColor: MaterialStateProperty.all<Color>(Colors.green),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
            child: Container(
                height: 30,
                width: 150,
                margin: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text("Log out",
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.grey.shade600))))),
      ]),
    ));
  }
}

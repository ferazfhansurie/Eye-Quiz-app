import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  // collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('user');

  Future<void> updateUserData(
      String email, String name, String quizdone) async {
    return await userCollection.doc(uid).set({
      'email': email,
      'name': name,
      'quizdone': quizdone,
    });
  }
}

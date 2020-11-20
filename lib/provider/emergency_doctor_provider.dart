import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EmergencyDoctorProvider with ChangeNotifier {
  void addDoc({BuildContext ctx, String name, int mob, String mail}) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      // final userData = await FirebaseFirestore.instance
      //     .collection('users')
      //     .doc(user.uid)
      //     .get();
      //sending message to firestore
      FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .collection("doctor")
          .add({
        "name": name,
        "mob": mob,
        "mail": mail,
      });
      print("Emergency Doctor stored");
    } catch (err) {
      print("Error in period provider");
      print(err);
    }
  }
}

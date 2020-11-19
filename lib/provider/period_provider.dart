import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PeriodProvider with ChangeNotifier {
  void addPeriod(
      {BuildContext ctx, String from, String to, int pain, int blood}) async {
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
          .collection("Period")
          .add({
        "from": from,
        "to": to,
        "blood": blood,
        "pain": pain,
      });
    } catch (err) {
      print("Error in period provider");
      print(err);
    }
  }
}

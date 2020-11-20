import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../model/emergencyDoctor.dart';

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

  // ignore: missing_return
  Future<EmegencyDoctor> getEmergencyDoctor() async {
    try {
      final user = FirebaseAuth.instance.currentUser;

      final querrySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .collection("doctor")
          .get();

      final data = querrySnapshot.docs[0].data();
      print("Getting emergency doctor from firestore");

      EmegencyDoctor fetchDoctor = EmegencyDoctor(
        name: data['name'],
        phone: data['mob'],
        email: data['mail'],
      );
      return fetchDoctor;
      // print(fetchDoctor);
    } catch (err) {
      print(err);
    }
  }
}

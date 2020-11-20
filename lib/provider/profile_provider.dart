import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../model/profile.dart';

class ProfileProvider with ChangeNotifier {
  // ignore: missing_return
  Future<Profile> getProfile() async {
    try {
      final user = FirebaseAuth.instance.currentUser;

      final querrySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();

      final data = querrySnapshot.data();
      print("Getting Profile from firestore");
      print(data['email']);
      print(DateTime.parse(data['dob']));
      print(data['mobile']);
      print(data['name']);
      print(data['username']);
      Profile fetchProfile = Profile(
        name: data['name'],
        phone: data['mob'],
        email: data['email'],
        dob: DateTime.parse(data['dob']),
        userName: data['username'],
      );
      return fetchProfile;
      //print(fetchDoctor);
    } catch (err) {
      print(err);
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:womenism/model/period.dart';

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

  // ignore: missing_return
  Future<List<Period>> getPeriodList() async {
    List<Period> periodList = [];
    try {
      final user = FirebaseAuth.instance.currentUser;

      final querrySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .collection("Period")
          .orderBy('from')
          .get();
      querrySnapshot.docs.forEach((element) {
        //element.data();
        //print(element.data()['pain']);
        final eachPeriod = Period(
          bloodIndex: element.data()['blood'],
          from: DateTime.parse(element.data()['from']),
          painIndex: element.data()['pain'],
          to: DateTime.parse(element.data()['to']),
        );
        periodList.add(eachPeriod);
      });

      return periodList;
      //print(fetchDoctor);
    } catch (err) {
      print(err);
    }
  }
}

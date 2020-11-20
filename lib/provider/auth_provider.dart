import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Auth with ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  final currentUser = FirebaseAuth.instance.currentUser;
  UserCredential authResult; // for getting response from firebase

  void inputUserDetails(
      {String name,
      String userName,
      String dob,
      int mob,
      String uid,
      BuildContext ctx}) async {
    final currentUser = FirebaseAuth.instance.currentUser;
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .update({
        'name': name,
        'username': userName,
        'dob': dob,
        'mobile': mob,
      });
      Navigator.of(ctx).pop();
      Navigator.of(ctx).pop();
      print("User Details Created Sucessfully");
    } on PlatformException catch (error) {
      var message = "An error occured, Please check your credientials!";
      if (error.message != null) {
        message = error.message;
      }
      Scaffold.of(ctx).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Theme.of(ctx).errorColor,
        ),
      );
    } catch (error) {
      print("Error in Auth  provider while saving details");
      print(error);
    }
  }

  void submitAuthForm({
    String email,
    String userName,
    String password,
    bool isLogin,
    BuildContext ctx,
  }) async {
    try {
      if (isLogin) {
        authResult = await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        Navigator.of(ctx).pop();
        print("Login Succesfull");
      } else {
        authResult = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        authResult = await _auth.signInWithEmailAndPassword(
            email: email, password: password);

        await FirebaseFirestore.instance
            .collection('users')
            .doc(authResult.user.uid)
            .set({
          'username': userName,
          'email': email,
        });
        print("SignUp  Succesfull");
      }
    } on PlatformException catch (error) {
      var message = "An error occured, Please check your credientials!";
      if (error.message != null) {
        message = error.message;
      }
      Scaffold.of(ctx).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Theme.of(ctx).errorColor,
        ),
      );
    } catch (error) {
      print("Error in auth provider");
      print(error);
    }
    notifyListeners();
  }
}

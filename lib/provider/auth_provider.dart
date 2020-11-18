import 'package:flutter/material.dart';

class Auth with ChangeNotifier {
  // String _userID;
  // String username;
  // String email;
  // String password;
  // String _token;

  // bool get isAuthenticated {
  //   return token != null;
  //   //we getting token from getter which locally validate
  //   // that means we are authenticated
  // }

  // String get userId {
  //   return _userID;
  // }

  // String get token {
  //   if (_token != null) {
  //     // if expiry date is further that current time our token is valid
  //     return _token;
  //   } else {
  //     return null;
  //   }
  // }

  // Future<void> _authenticate(
  //     {String userName,
  //     String email,
  //     String password,
  //     String urlSegment}) async {
  //   final Map<String, String> headers = {
  //     'Content-Type': 'application/json;charset=UTF-8',
  //     'Charset': 'utf-8',
  //   };
  //   var url = "https://engraveapi.herokuapp.com/api/auth/$urlSegment";

  //   try {
  //     if (urlSegment == "register") {
  //       final response = await httpUsing.post(url,
  //           headers: headers,
  //           body: json.encode(
  //             {
  //               "username": userName,
  //               "email": email,
  //               "password": password,
  //             },
  //           ));

  //       final responseData = json.decode(response.body);
  //       print("responded data $responseData.");
  //       urlSegment = "login";
  //       url = "https://engraveapi.herokuapp.com/api/auth/$urlSegment";
  //     }

  //     final response = await httpUsing.post(url,
  //         headers: headers,
  //         body: json.encode(
  //           {
  //             "email": email,
  //             "password": password,
  //           },
  //         ));

  //     // final response = await httpUsing.get(
  //     //   url,
  //     //   headers: headers,
  //     // );

  //     final responseData = json.decode(response.body);
  //     print("responded data $responseData.");
  //     print(responseData['user']['_id']);

  //     _token = responseData['token'];
  //     _userID = responseData['user']['_id'];

  //     notifyListeners();
  //     final prefSaved = await SharedPreferences.getInstance();
  //     // as we need string to set in preferences so encdoding to json as json is string
  //     final userData = json.encode(
  //       {
  //         'token': _token,
  //         'userId': _userID,
  //       },
  //     );
  //     //storing string data in saved preferences as json data
  //     prefSaved.setString('userData', userData);
  //   } catch (error) {
  //     print("Printing json error");
  //     print(error);
  //     // throw error;
  //   }
  // }

  // Future<bool> tryAutoLogin() async {
  //   print("Loging in user automatically...");
  //   final prefSaved = await SharedPreferences.getInstance();
  //   if (prefSaved.containsKey('userData')) {
  //     final prefFetch = prefSaved.getString('userData');
  //     //converting that json data to map form
  //     final extractedUserData = json.decode(prefFetch) as Map<String, Object>;

  //     _token = extractedUserData['token'];
  //     _userID = extractedUserData['userId'];

  //     notifyListeners();
  //     return true;
  //   } else {
  //     print("Failed to Log in user automatically...");
  //     return false;
  //   }
  // }

  // Future<void> signUP({String username, String email, String password}) async {
  //   print("Singing up user...");
  //   return _authenticate(
  //     userName: username,
  //     email: email,
  //     password: password,
  //     urlSegment: "register",
  //   );
  // }

  // Future<void> logIn({String email, String password}) async {
  //   print("Logging in user...");
  //   return _authenticate(
  //     email: email,
  //     password: password,
  //     urlSegment: "login",
  //   );
  // }

  // Future<void> logOut() async {
  //   _token = null;
  //   _userID = null;

  //   notifyListeners();
  //   // when we notifi this to provider
  //   // in main home : where we check is authenticated or not then it will
  //   //return a false so we render AuthScreeen() in front
  //   // * we also need to clear all shared preferences data
  //   // converting log out to async cause we need in preferences await so
  //   final prefSaved = await SharedPreferences.getInstance();
  //   //clear specifc key value
  //   prefSaved.remove('userData');
  //   // for clearing all use
  //   // prefSaved.clear();
  //   print("User Logged out succesfully");
  // }
}

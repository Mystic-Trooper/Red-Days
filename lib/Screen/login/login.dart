import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = 'login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // var _isLoading = false;
  final userController = TextEditingController();

  final passController = TextEditingController();

  // void onSaved(BuildContext context) {
  //   if (userController.text.isNotEmpty && passController.text.isNotEmpty) {
  //     Provider.of<Auth>(context, listen: false).logIn(
  //       email: userController.text,
  //       password: passController.text,
  //     );
  //     print(userController.text);
  //   } else {}
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 250,
                child: SvgPicture.asset(
                  'assets/images/my_password_d6kg.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 4,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.account_circle),
                        ),
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                        controller: userController,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                        ),
                        controller: passController,
                      ),
                      RaisedButton(
                        onPressed: () {
                          // onSaved(context);
                          Navigator.of(context).pushNamed(HomeScreen.routeName);
                        },
                        child: Text('Login'),
                        textColor: Colors.purple,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

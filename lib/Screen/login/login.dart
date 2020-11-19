import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:womenism/provider/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = 'login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _isLoading = false;
  final userController = TextEditingController();

  final passController = TextEditingController();

  void onSaved(BuildContext context) {
    if (userController.text.isNotEmpty && passController.text.isNotEmpty) {
      Provider.of<Auth>(context, listen: false).submitAuthForm(
        ctx: context,
        email: userController.text,
        password: passController.text,
        isLogin: true,
      );
      print(userController.text);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 300,
              child: SvgPicture.asset(
                'assets/images/my_password_d6kg.svg',
                fit: BoxFit.cover,
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
                      _isLoading
                          ? CircularProgressIndicator()
                          : RaisedButton(
                              onPressed: () {
                                onSaved(context);
                                // Navigator.of(context)
                                //     .pushNamed(HomeScreen.routeName);
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

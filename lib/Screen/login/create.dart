import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './details.dart';
import 'dart:core';
// import 'package:email_validator/email_validator.dart';

class CreateScreen extends StatelessWidget {
  static const routeName = 'Signup';
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final bool sas = usernameController.text.isEmpty;
    return Scaffold(
        appBar: AppBar(
          title: Text(" SignUp"),
          backgroundColor: Colors.blueGrey,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 250,
                  child: SvgPicture.asset(
                    'assets/images/medicine_b1ol.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 4,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.account_circle),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          controller: usernameController,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                          ),
                          controller: passwordController,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            prefixIcon: Icon(Icons.lock),
                          ),
                          controller: confirmController,
                        ),
                        Builder(
                          builder: (context) {
                            return RaisedButton(
                              color: Colors.red,
                              onPressed: () {
                                // if (sas == false) {
                                if (confirmController.text ==
                                    passwordController.text) {
                                  Navigator.of(context)
                                      .pushNamed(DetailScreen.routeName);
                                  // } else {
                                  Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          'Confirmed Password is not matched!'),
                                    ),
                                  );
                                }
                                // } else {
                                //   Scaffold.of(context).showSnackBar(SnackBar(
                                //     content: Text('Email must be filled!'),
                                //   ));
                                // }
                              },
                              child: Text('Signup'),
                              textColor: Colors.amber,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

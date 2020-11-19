import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = 'details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" SignUp"),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Username',
            prefixIcon: Icon(Icons.account_circle),
          ),
          // controller: usernameController,
        ),
      ),
    );
  }
}

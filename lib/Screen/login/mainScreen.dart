import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Row(
      //     children: [

      //       Text('Womenism'),
      //     ],
      //   ),
      //   backgroundColor: Colors.blueGrey,

      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Card(
                child: Text(
                  "WELCOME TO THE Womenism!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: 300,
                child: SvgPicture.asset('assets/images/medical_care_movn.svg'),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {
                          // Navigator.of(context)
                          //     .pushNamed(LoginScreen.routeName);
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          '-----OR-----',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Color.fromARGB(0, 50, 100, 50),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        child: Text(
                          'Create An Account',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {
                          // Navigator.of(context)
                          //     .pushNamed(CreateScreen.routeName);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = 'details';
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final ageController = TextEditingController();
  final number = TextEditingController();
  final dob = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Info"),
          backgroundColor: Colors.indigo,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  height: 150,
                  child: SvgPicture.asset('assets/images/profilehh.svg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Card(
                      elevation: 3,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                        ),
                        controller: nameController,
                      ),
                    ),
                    Card(
                      elevation: 3,
                      child: TextFormField(decoration: InputDecoration(
                        labelText: 'UserName',
                      ),
                      controller:usernameController ,
                      )
                    ),
                    Card(
                      elevation: 3,
                      child: TextFormField(
                        decoration: InputDecoration(
                        labelText: 'Date Of Birth',
                      ),
                      keyboardType: TextInputType.datetime,
                      controller: dob ,
                      ),
                    ),
                    Card(
                      elevation: 3,
                      child: TextFormField(decoration: InputDecoration(
                        labelText: 'age',
                      ),
                      keyboardType: TextInputType.number,
                      controller : ageController ,
                      )
                    ),
                    Card(
                      elevation: 3,
                      child: TextFormField(decoration: InputDecoration(
                        labelText: 'Mobile Number',
                      ),
                      keyboardType: TextInputType.number,
                      controller: number ,
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

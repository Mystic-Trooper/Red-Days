import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import '../Home/home_screen.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = 'details';
  final format = DateFormat("yyyy-MM-dd");

  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final ageController = TextEditingController();
  final number = TextEditingController();
  final dob = TextEditingController();

  void _saveForm(BuildContext context) async {
    print("Form Save Pressed");
  }

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
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'UserName',
                      ),
                      controller: usernameController,
                    ),
                  ),
                  Card(
                    elevation: 3,
                    child: DateTimeField(
                        format: format,
                        decoration: InputDecoration(
                          labelText: "  Date Of Birth",
                        ),
                        initialValue: null,
                        onShowPicker: (context, currentValueCFrom) async {
                          currentValueCFrom = DateTime.now();
                          final date = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1960),
                            initialDate: currentValueCFrom ?? DateTime.now(),
                            lastDate: DateTime.now(),
                          );
                          return date;
                        }),
                  ),
                  Card(
                    elevation: 3,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'age',
                      ),
                      keyboardType: TextInputType.number,
                      controller: ageController,
                    ),
                  ),
                  Card(
                    elevation: 3,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Mobile Number',
                      ),
                      keyboardType: TextInputType.number,
                      controller: number,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "Save",
          style: TextStyle(color: Colors.black),
        ),
        isExtended: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          _saveForm(context);
          Navigator.of(context).pushNamed(HomeScreen.routeName);
        },
      ),
    );
  }
}

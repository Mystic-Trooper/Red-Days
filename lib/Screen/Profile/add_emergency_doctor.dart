import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:womenism/provider/emergency_doctor_provider.dart';

// ignore: must_be_immutable
class AddEmergencyDoctor extends StatelessWidget {
  static const routeName = '/emergency-doctor';

  final _formKey = GlobalKey<FormState>();
  var name = '';
  var phone = 0;
  var mail = '';

  void _saveForm(
    BuildContext context,
  ) async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print(name);
      print(phone);
      print(mail);
      Provider.of<EmergencyDoctorProvider>(context, listen: false).addDoc(
        ctx: context,
        mail: mail,
        mob: phone,
        name: name,
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    bool _showFloating = MediaQuery.of(context).viewInsets.bottom == 0.0;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Emergency Doctor Details"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: TextFormField(
                              initialValue: "",
                              decoration: InputDecoration(
                                hintText: "e.g Zakir Khan",
                                labelText: "Doctors Full Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              validator: (value) {
                                if (value.isNotEmpty) {
                                  return null;
                                } else {
                                  return "Please provide Doctor name";
                                }
                              },
                              onSaved: (value) {
                                name = value;
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: TextFormField(
                              initialValue: "",
                              decoration: InputDecoration(
                                hintText: "e.g. +91 1234567890",
                                labelText: "Contact Number",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              validator: (value) {
                                if (value.length >= 10) {
                                  return null;
                                } else {
                                  return "Enter Doctors Contact Details";
                                }
                              },
                              onSaved: (value) {
                                phone = int.parse(value);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: TextFormField(
                              initialValue: "",
                              decoration: InputDecoration(
                                hintText: "e.g. womenism@gmail.com",
                                labelText: "Email Address",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              validator: (value) {
                                if (value.isNotEmpty) {
                                  return null;
                                } else {
                                  return "Enter Valid Email Address";
                                }
                              },
                              onSaved: (value) {
                                mail = value;
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _showFloating
          ? FloatingActionButton.extended(
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
              },
            )
          : null,
    );
  }
}

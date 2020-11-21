import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:womenism/Constant/colors.dart';
import '../../provider/custom_url_launcher.dart';
import 'package:womenism/provider/custom_url_launcher.dart';

class DoctorListScreen extends StatelessWidget {
  static const routeName = 'doctor-list';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Column(
            children: [
              ListTile(
                trailing: IconButton(
                  icon: Icon(
                    Icons.call,
                    color: Colors.green[400],
                  ),
                  onPressed: () {
                    String contact = 'tel: +8630292417';
                    customLaunch(contact);
                  },
                ),
                leading: CircleAvatar(
                  child: ClipOval(
                      child: SvgPicture.asset(
                    "assets/images/profile.svg",
                  )),
                ),
                title: Text(
                  "DR. Shashi Chavan",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Noida",
                      style: TextStyle(fontSize: 17),
                    ),
                    Text("Available Now"),
                  ],
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

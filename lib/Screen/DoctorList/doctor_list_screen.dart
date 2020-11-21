import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:womenism/Constant/colors.dart';
import 'package:womenism/model/doctor.dart';
import '../../Constant/doctorDetails.dart';

// ignore: must_be_immutable
class DoctorListScreen extends StatelessWidget {
  static const routeName = 'doctor-list';
  List<Doctor> doctorList = [];

  List<Doctor> getDoctorList() {
    for (int i = 0; i < doctorDetail.length; i++) {
      if (doctorDetail[i].location.contains('Delhi')) {
        doctorList.add(doctorDetail[i]);
      }
    }
    return doctorList;
  }

  @override
  Widget build(BuildContext context) {
    final listOfDoctorFetched = getDoctorList();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
        ),
        body: ListView.builder(
          itemCount: listOfDoctorFetched.length,
          itemBuilder: (context, index) => Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: ClipOval(
                      child: SvgPicture.asset(
                    "assets/images/profile.svg",
                  )),
                ),
                title: Text(
                  listOfDoctorFetched[index].name,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listOfDoctorFetched[index].location,
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(listOfDoctorFetched[index].isAvailable
                        ? "Available Now"
                        : "Not Available"),
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

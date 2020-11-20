import 'package:flutter/material.dart';
import 'package:womenism/Screen/Profile/add_emergency_doctor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmergencyDocCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      height: 0.2.sh,
      width: 0.89.sw,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Add Emergency Doctor Details",
            style: TextStyle(fontSize: 18),
          ),
          OutlineButton(
            child: Text("Add"),
            onPressed: () {
              Navigator.of(context).pushNamed(AddEmergencyDoctor.routeName);
            },
          )
        ],
      ),
      decoration: BoxDecoration(
        gradient: RadialGradient(
          radius: 5,
          colors: [Colors.yellow, Colors.purple, Colors.red],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

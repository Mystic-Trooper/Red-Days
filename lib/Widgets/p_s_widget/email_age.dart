import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PSEmailPhoneCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(
                    width: 0.025.sw,
                  ),
                  Text("aishwarya324@gmail.com")
                ],
              ),
              SizedBox(
                height: 0.005.sh,
              ),
              Row(
                children: [
                  Icon(FlutterIcons.date_range_mdi),
                  SizedBox(
                    width: 0.025.sw,
                  ),
                  Text("32 Yrs old"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

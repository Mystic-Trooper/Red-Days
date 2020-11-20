import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:womenism/model/profile.dart';

class PSEmailPhoneCard extends StatelessWidget {
  final Profile profileDetails;

  const PSEmailPhoneCard(this.profileDetails);
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
                    width: 10,
                  ),
                  Text(profileDetails?.email ?? "Email")
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Icon(FlutterIcons.date_range_mdi),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                      "${(DateTime.now()).difference(profileDetails?.dob ?? DateTime.now()).inDays.toString()} Days Old"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

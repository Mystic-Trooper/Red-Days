import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
                    width: 10,
                  ),
                  Text("aishwarya324@gmail.com")
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
                  Text("32 Yrs old"),
                ],
              ),
            ],
          ),
          OutlineButton.icon(
            icon: Icon(Icons.edit),
            label: Text("Edit"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

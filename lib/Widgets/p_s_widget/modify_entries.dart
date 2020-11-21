import 'package:flutter/material.dart';
import '../../Screen/Profile/modify_entries_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModifyEntries extends StatelessWidget {
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
            "Updated Period Details",
            style: TextStyle(fontSize: 18),
          ),
          OutlineButton(
            child: Text("View"),
            onPressed: () {
              Navigator.of(context).pushNamed(ModifyScreen.routeName);
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

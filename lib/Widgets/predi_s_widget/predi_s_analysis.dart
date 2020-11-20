import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Analysis extends StatelessWidget {
  final message = [
    'Heavy bleeding from last 2 months',
    'Irregularities by 10 Days',
    'Everything is Going Well',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.blueAccent[100].withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 0.1.sh,
      alignment: Alignment.center,
      child: Text(
        message[2],
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.blue[600],
          fontSize: 20,
          fontWeight: FontWeight.w300,
          wordSpacing: 4,
        ),
      ),
    );
  }
}

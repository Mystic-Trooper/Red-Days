import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpectedDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber.withOpacity(0.6),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 400.h,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Ovulation Starts',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),
                Text(
                  '2020',
                  //yr
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'March 5',
                  //date
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Saturday',
                  //day
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber.withOpacity(0.6),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 400.h,
            alignment: Alignment.center,
            child: Text(
              '03/19',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.blue[800],
                fontSize: 40,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

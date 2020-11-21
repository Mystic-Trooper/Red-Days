import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:womenism/provider/anaysis_text_provider.dart';

class Analysis extends StatelessWidget {
  final message = [
    'Late period irregularity by 10 days',
    'Early period irregularity by 10 days',
    'Everything is Going Well',
    'Missed your period this month',
  ];

  @override
  Widget build(BuildContext context) {
    //days diff should be used dynamically
    int days = 37;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.blueAccent[100].withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 0.1.sh,
      alignment: Alignment.center,
      child: Text(
        analysisText(message, days),
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

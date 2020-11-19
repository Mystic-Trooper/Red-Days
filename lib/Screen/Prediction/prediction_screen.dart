import 'package:flutter/material.dart';
import '../../Widgets/predi_s_widget/predi_s_expectedDate.dart';
import '../../Widgets/predi_s_widget/predi_s_BarGraphTrack.dart';

class PredictionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Statistics",
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  child: BarGraphTrack(),
                  height: 260,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Expected ",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                ExpectedDate(),
                SizedBox(height: 10),
                Container(
                  child: Stack(
                    children: [
                      Container(
                        height: 190,
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'No need to\t \n Consult a\t \n Doctor\t',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.blue[600],
                              fontSize: 30,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/images/doctor-s-stethoscope.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  height: 260,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

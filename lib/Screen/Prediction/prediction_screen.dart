import 'package:flutter/material.dart';
import '../../Widget/homescreen/h_s_BarGraphTrack.dart';

class PredictionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: BarGraphTrack(),
            height: 260,
            margin: EdgeInsets.symmetric(horizontal: 10),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 200,
                      alignment: Alignment.center,
                      child: Text(
                        'Calculated \n Prediction',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 200,
                      alignment: Alignment.center,
                      child: Text(
                        '03/19',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}

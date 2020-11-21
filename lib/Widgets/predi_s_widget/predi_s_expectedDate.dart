import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:womenism/model/period.dart';
import 'package:womenism/provider/period_provider.dart';
import 'package:intl/intl.dart' as intl;

// ignore: must_be_immutable
class ExpectedDate extends StatelessWidget {
  DateTime predictedDate = DateTime.now();
  DateTime predictedOvulationDate = DateTime.now();
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<PeriodProvider>(context).getPeriodList(),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            List<Period> periodList = snapshot.data;
            int days = 0;
            for (int i = 0; i < snapshot.data.length - 1; i++) {
              days = days +
                  (periodList[i + 1]?.from ?? DateTime.now())
                      .difference(periodList[i]?.from ?? DateTime.now())
                      .inDays;
            }

            final daysDouble = days / periodList.length;
            if (periodList != null && periodList.length > 1) {
              predictedDate =
                  periodList[periodList.length > 1 ? periodList.length - 1 : 0]
                      .to
                      .add(
                        Duration(
                          days: daysDouble.round(),
                        ),
                      );
              predictedOvulationDate = predictedDate.add(Duration(days: 14));
              flag = true;
            } else {
              flag = false;
            }
          }
          return snapshot.data == null
              ? Center(
                  child: Container(
                    height: 0.21.sh,
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 0.85.sw,
                    child: Center(child: Text("Predicted Dates appear here")),
                  ),
                )
              : Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 0.21.sh,
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
                                  intl.DateFormat('yyyy')
                                      .format(predictedOvulationDate),
                                  //yr
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.w300,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  intl.DateFormat('MMM d')
                                      .format(predictedOvulationDate),
                                  //date
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.w300,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  intl.DateFormat('EEE')
                                      .format(predictedOvulationDate),
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
                          width: 0.01.sw,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 0.21.sh,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Alert Date',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  intl.DateFormat('yyyy').format(predictedDate),
                                  //yr
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.w300,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  intl.DateFormat('MMM d')
                                      .format(predictedDate),
                                  //date
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.w300,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  intl.DateFormat('EEE').format(predictedDate),
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
                      ]),
                );
        });
  }
}

class DateFormat {}

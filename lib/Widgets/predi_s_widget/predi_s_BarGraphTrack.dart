import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:provider/provider.dart';
import 'package:womenism/Class/home_screen/h_s_BarGraphData.dart';
import 'package:womenism/model/period.dart';
import 'package:womenism/provider/period_provider.dart';
import 'package:intl/intl.dart';
//import 'package:flutter/foundation.dart';

class BarGraphTrack extends StatelessWidget {
  final List<BarGraphData> data = [];

  /*BarGraphTrack({
    @required this.data,
  }); */

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarGraphData, String>> series = [
      charts.Series(
        id: "Tracker",
        data: data,
        domainFn: (BarGraphData series, _) => series.month,
        measureFn: (BarGraphData series, _) => series.days,
        //colorFn: (BarGraphData series, _) => series.barColor,
      )
    ];

    // return charts.BarChart(
    //   series,
    //   animate: true,
    // );
    return FutureBuilder(
        future: Provider.of<PeriodProvider>(context).getPeriodList(),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            List<Period> periodList = snapshot.data;
            for (int i = 0; i < snapshot.data.length - 1; i++) {
              final newBarGraphData = BarGraphData(
                month: DateFormat('MMM')
                    .format(periodList[i]?.to ?? DateTime.now()),
                days: (periodList[i + 1]?.to ?? DateTime.now())
                    .difference(periodList[i]?.from ?? DateTime.now())
                    .inDays,
              );
              data.add(newBarGraphData);
            }
            // periodList.forEach((element) {
            //   final newBarGraphData = BarGraphData(
            //     month:
            //         DateFormat('MMM').format(element?.from ?? DateTime.now()),
            //     days: (element.to)
            //         .difference(element.from ?? DateTime.now())
            //         .inDays,
            //   );
            //   data.add(newBarGraphData);
            // });
          }

          return snapshot.data == null
              ? Center(
                  child: Text("Statistics of your period trend appers here"),
                )
              : charts.BarChart(
                  series,
                  animate: true,
                );
        });
  }
}

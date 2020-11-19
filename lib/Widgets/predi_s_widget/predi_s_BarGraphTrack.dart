import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:womenism/Class/home_screen/h_s_BarGraphData.dart';
//import 'package:flutter/foundation.dart';

class BarGraphTrack extends StatelessWidget {
  final List<BarGraphData> data = [
    BarGraphData(
      month: "jan",
      days: 24,
    ),
    BarGraphData(
      month: 'feb',
      days: 28,
    ),
    BarGraphData(
      month: 'mar',
      days: 26,
    ),
    BarGraphData(
      month: 'apr',
      days: 27,
    ),
    BarGraphData(
      month: 'may',
      days: 25,
    ),
    BarGraphData(
      month: 'jun',
      days: 28,
    ),
  ];

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

    return charts.BarChart(
      series,
      animate: true,
    );
  }
}

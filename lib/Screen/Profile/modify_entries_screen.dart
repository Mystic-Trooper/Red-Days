import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:womenism/provider/period_provider.dart';

class ModifyScreen extends StatelessWidget {
  static const routeName = 'modify-screen';
  static const BleedingIntensity = ["Heavy", "Normal", "Low"];
  static const PainIntensity = ["High", "Moderate", "Low"];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<PeriodProvider>(context).getPeriodList(),
      builder: (context, snapshot) => Scaffold(
        appBar: AppBar(
          title: Text("List All entries"),
        ),
        body: snapshot.data == null
            ? Center(child: Text("No data Available"))
            : ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      title: Text(
                          "${snapshot.data[index].from}- ${snapshot.data[index].to}"),
                      subtitle: Row(
                        children: [
                          Text(
                            "Pain: " +
                                    BleedingIntensity[
                                        snapshot?.data[index]?.painIndex] ??
                                "Normal",
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Bleeding: " +
                                    PainIntensity[
                                        snapshot.data[index]?.bloodIndex] ??
                                "Low",
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    )
                  ],
                ),
              ),
      ),
    );
  }
}

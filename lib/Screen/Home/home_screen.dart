import "package:flutter/material.dart";
import 'package:womenism/Constant/colors.dart';
import '../../Screen/Prediction/prediction_screen.dart';
import 'package:womenism/Screen/Profile/profile_screen.dart';
import '../../Screen/NewPeriod/add_period_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AddPeriodScreen.routeName);
              })
        ],
      ),
      body: selectedPageIndex == 2
          ? ProfileScreen()
          : selectedPageIndex == 0
              ? PredictionScreen()
              : selectedPageIndex == 1
                  //ToDo: Add your scaffold screen here- Recomendation
                  ? Container(
                      child: Center(child: Text("Recomendation")),
                      height: 260,
                    )
                  : null,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedPageIndex = index;
          });
          print(index);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'Prediction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.recommend),
            label: 'Recommendations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

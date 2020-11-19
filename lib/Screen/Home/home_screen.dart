import "package:flutter/material.dart";
import 'package:womenism/Screen/Recomended/recomended_screen.dart';
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
      backgroundColor: Theme.of(context).backgroundColor,
      body: selectedPageIndex == 2
          ? ProfileScreen()
          : selectedPageIndex == 0
              ? PredictionScreen()
              : selectedPageIndex == 1
                  //ToDo: Add your scaffold screen here- Recomendation
                  ? RecomendedScreen()
                  : null,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedPageIndex = index;
          });
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.black),
        onPressed: () {
          Navigator.of(context).pushNamed(AddPeriodScreen.routeName);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../Screen/NewPeriod/add_period_screen.dart';

Map<String, Widget Function(BuildContext)> routeTable = {
  // LoginScreen.routeName: (ctx) {
  //   return LoginScreen();
  // },
  AddPeriodScreen.routeName: (ctx) {
    return AddPeriodScreen();
  },
};

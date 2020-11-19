import 'package:flutter/material.dart';
import '../Screen/Profile/modify_entries_screen.dart';
import '../Screen/NewPeriod/add_period_screen.dart';
import '../Screen/login/create.dart';
import '../Screen/login/login.dart';
import '../Screen/Home/home_screen.dart';

Map<String, Widget Function(BuildContext)> routeTable = {
  LoginScreen.routeName: (ctx) {
    return LoginScreen();
  },
  HomeScreen.routeName: (ctx) {
    return HomeScreen();
  },
  CreateScreen.routeName: (ctx) {
    return CreateScreen();
  },
  AddPeriodScreen.routeName: (ctx) {
    return AddPeriodScreen();
  },
  ModifyScreen.routeName: (ctx) {
    return ModifyScreen();
  },
};

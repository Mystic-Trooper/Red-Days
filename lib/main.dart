import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:provider/provider.dart';
import './main_properties/theme.dart';
import './main_properties/provider_list.dart';
import 'Screen/Home/home_screen.dart';

import 'main_properties/routs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providerList,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: theme,

        /// For debug purpose add your screen Widget here and define it in route table
        /// make sure to comment out your changes once you ready to send a PR.
        home: FutureBuilder(
          builder: (context, snapshot) {
            ScreenUtil.init(
              context,
            );
            return HomeScreen();
          },
        ),
        // if we are unable to log in then show authentication screen

        routes: routeTable,
      ),
    );
  }
}

//import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:womenism/provider/auth_provider.dart';

List<SingleChildWidget> providerList = [
  ChangeNotifierProvider(
    create: (context) => Auth(),
  ),
  // ChangeNotifierProvider(
  //   create: (context) => UserProvider(),
  // ),
];

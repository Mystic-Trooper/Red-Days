import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:womenism/provider/auth_provider.dart';
import 'package:womenism/provider/emergency_doctor_provider.dart';
import '../provider/period_provider.dart';

List<SingleChildWidget> providerList = [
  ChangeNotifierProvider(
    create: (context) => Auth(),
  ),
  ChangeNotifierProvider(
    create: (context) => PeriodProvider(),
  ),
  ChangeNotifierProvider(
    create: (context) => EmergencyDoctorProvider(),
  ),
  // ChangeNotifierProvider(
  //   create: (context) => UserProvider(),
  // ),
];

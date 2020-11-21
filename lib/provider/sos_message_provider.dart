import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sms/sms.dart';
import 'package:womenism/provider/emergency_doctor_provider.dart';

void sosDoc(BuildContext ctx) async {
  print("SoS running");
  final doctorDetails =
      await Provider.of<EmergencyDoctorProvider>(ctx, listen: false)
          .getEmergencyDoctor();
  SmsSender sender = new SmsSender();
  String address =
      //'sms:9410234020'; //add doctor number in place of contact added
      'sms:${doctorDetails.phone}';
  sender.sendSms(new SmsMessage(address,
      'EMERGENCY ALERT..! Urgently need medical help, Please come to my location or arrange an ambulance asap..!'));
}

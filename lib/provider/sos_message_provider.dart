//import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_sms/flutter_sms.dart';

/*
contact() {
  String sos = 'sms:01217964519';
  SmsSender sender = new SmsSender(SmsSender);
  sender.sendSms(new SmsMessage(sos, 'Emergency..!'));
  //launch(sos);
}*/

void sendSOSMessage(String message, List<String> recipents) async {
  String result = await sendSMS(
    message: message,
    recipients: recipents,
  ).catchError((onError) {
    print(onError);
  });
  print(result);
}

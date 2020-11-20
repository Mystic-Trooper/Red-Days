import 'package:sms/sms.dart';

void sosDoc() {
  SmsSender sender = new SmsSender();
  String address =
      'sms:9410234020'; //add doctor number in place of contact added
  sender.sendSms(new SmsMessage(address, 'HELP'));
}

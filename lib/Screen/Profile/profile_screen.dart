import 'package:flutter/material.dart';
import 'package:womenism/Constant/colors.dart';
import '../../Widgets/p_s_widget/modify_entries.dart';
import '../../Widgets/p_s_widget/email_age.dart';
import '../../Widgets/p_s_widget/name_card.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            PSPicNameListTile(),
            SizedBox(height: 10),
            PSEmailPhoneCard(),
            SizedBox(height: 20),
            ModifyEntries()
          ],
        ),
      ),
    );
  }
}

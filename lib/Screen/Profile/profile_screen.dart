import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:womenism/Constant/colors.dart';
import '../../Widgets/p_s_widget/emergency_doc_card.dart';
import '../../Widgets/p_s_widget/modify_entries.dart';
import '../../Widgets/p_s_widget/email_age.dart';
import '../../Widgets/p_s_widget/name_card.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(FlutterIcons.sign_out_alt_faw5s),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              })
        ],
        backgroundColor: appBarColor,
      ),
      body: Container(
        child: Column(
          children: [
            PSPicNameListTile(),
            SizedBox(height: 10),
            PSEmailPhoneCard(),
            SizedBox(height: 20),
            ModifyEntries(),
            SizedBox(height: 20),
            EmergencyDocCard()
          ],
        ),
      ),
    );
  }
}

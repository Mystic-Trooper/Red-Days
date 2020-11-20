import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:womenism/Constant/colors.dart';
import 'package:womenism/provider/profile_provider.dart';
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
              icon: Icon(Icons.accessibility_sharp),
              onPressed: () {
                Provider.of<ProfileProvider>(context, listen: false)
                    .getProfile();
              }),
          IconButton(
              icon: Icon(FlutterIcons.sign_out_alt_faw5s),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              })
        ],
        backgroundColor: appBarColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PSPicNameListTile(),
            SizedBox(height: 0.01.sw),
            PSEmailPhoneCard(),
            SizedBox(height: 0.04.sw),
            ModifyEntries(),
            SizedBox(height: 0.04.sw),
            EmergencyDocCard()
          ],
        ),
      ),
    );
  }
}

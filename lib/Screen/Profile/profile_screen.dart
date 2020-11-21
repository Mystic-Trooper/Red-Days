import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
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
    return FutureBuilder(
      future: Provider.of<ProfileProvider>(context).getProfile(),
      builder: (context, snapshot) => Scaffold(
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
        body: snapshot?.data == null
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  children: [
                    PSPicNameListTile(snapshot.data),
                    SizedBox(height: 10),
                    PSEmailPhoneCard(snapshot.data),
                    SizedBox(height: 20),
                    ModifyEntries(),
                    SizedBox(height: 20),
                    EmergencyDocCard()
                  ],
                ),
              ),
      ),
    );
  }
}

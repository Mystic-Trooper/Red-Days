import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:womenism/model/profile.dart';

class PSPicNameListTile extends StatelessWidget {
  final Profile profileDetails;

  PSPicNameListTile(this.profileDetails);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 70,
        child: Hero(
          tag: "ProfileHeroKey",
          child: ClipOval(
              child: SvgPicture.asset(
            "assets/images/profile.svg",
          )),
        ),
      ),
      title: Text(
        profileDetails?.name ?? "Your name",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        profileDetails?.userName ?? "username",
      ),
    );
  }
}

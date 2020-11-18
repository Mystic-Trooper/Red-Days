import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PSPicNameListTile extends StatelessWidget {
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
        "Aishwarya Mohanraj",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        "aish12dc",
      ),
    );
  }
}

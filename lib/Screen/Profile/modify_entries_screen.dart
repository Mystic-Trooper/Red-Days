import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModifyScreen extends StatelessWidget {
  static const routeName = 'modify-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List All entries"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => Column(
                children: [
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    title: Text("28 Oct- 30 Oct 20"),
                    subtitle: Row(
                      children: [
                        Text("Pain: More"),
                        SizedBox(width: 0.01.sw),
                        Text("Bleeding: Heavy"),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  )
                ],
              )),
    );
  }
}

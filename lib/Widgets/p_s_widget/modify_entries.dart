import 'package:flutter/material.dart';

class ModifyEntries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        height: 150,
        width: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Last Updated 34 days before",
              style: TextStyle(fontSize: 18),
            ),
            OutlineButton(
              child: Text("Modify"),
              onPressed: () {},
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(20)));
  }
}

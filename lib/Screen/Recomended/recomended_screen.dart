import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecomendedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) => Column(
            children: [
              InkWell(
                onTap: () {
                  print("Blog tapped $index");
                },
                child: Container(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    //color: Colors.amber,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          "assets/images/choice.svg",
                          height: 100,
                        ),
                      ),
                      SizedBox(height: 7),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.blue[400],
                            Colors.red,
                          ]),
                          // border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Title of the BLog" * 4,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                            SizedBox(height: 7),
                            Text(
                              "This is description of the blog" * 10,
                              maxLines: 3,
                              style: TextStyle(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FlutterIcons.youtube_ant,
                                  ),
                                ),
                                SizedBox(width: 12),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

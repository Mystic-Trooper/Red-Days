import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';
import 'package:womenism/provider/period_provider.dart';
import '../../Constant/blogDetail.dart';
import '../../model/blog.dart';
import 'package:url_launcher/url_launcher.dart';

class RecomendedScreen extends StatelessWidget {
  List<Blog> bleeding(String bleedingIntensity, String pain) {
    var i = 0;
    List<Blog> bloglist = [];

    if (bleedingIntensity == 'Normal') {
      i = 0;
      while (i < blogDetail.length) {
        if ((blogDetail[i]['isMenorrhagia'] == 'false') &&
            blogDetail[i]['disease'] == 'null') {
          final newBlog = Blog(
            url: blogDetail[i]['url'],
            imageUrl: blogDetail[i]['ImageUrl'],
            youtubeUrl: blogDetail[i]['YoutubeUrl'],
            isAgeBelow: blogDetail[i]['isAgeBelow'],
            disease: blogDetail[i]['disease'],
            isMenorrhagia: blogDetail[i]['isMenorrhagia'],
            title: blogDetail[i]['title'],
            description: blogDetail[i]['description'],
          );
          bloglist.add(newBlog);
        }
        i = i + 1;
      }
    } else if (bleedingIntensity.contains('low')) {
      i = 0;
      while (i < blogDetail.length) {
        if ((blogDetail[i]['isMenorrhagia'] == 'false') &&
            blogDetail[i]['disease'] == 'hypomenorrhea') {
          final newBlog = Blog(
            url: blogDetail[i]['url'],
            imageUrl: blogDetail[i]['ImageUrl'],
            youtubeUrl: blogDetail[i]['YoutubeUrl'],
            isAgeBelow: blogDetail[i]['isAgeBelow'],
            disease: blogDetail[i]['disease'],
            isMenorrhagia: blogDetail[i]['isMenorrhagia'],
            title: blogDetail[i]['title'],
            description: blogDetail[i]['description'],
          );
          bloglist.add(newBlog);
        }
        i = i + 1;
      }
    } else if (bleedingIntensity.contains('high')) {
      i = 0;
      while (i < blogDetail.length) {
        if ((blogDetail[i]['isMenorrhagia'] == 'true')) {
          final newBlog = Blog(
            url: blogDetail[i]['url'],
            imageUrl: blogDetail[i]['ImageUrl'],
            youtubeUrl: blogDetail[i]['YoutubeUrl'],
            isAgeBelow: blogDetail[i]['isAgeBelow'],
            disease: blogDetail[i]['disease'],
            isMenorrhagia: blogDetail[i]['isMenorrhagia'],
            title: blogDetail[i]['title'],
            description: blogDetail[i]['description'],
          );
          bloglist.add(newBlog);
        }
        i = i + 1;
      }
    }
    if (pain.contains('high') || pain.contains('High')) {
      i = 0;
      while (i < blogDetail.length) {
        if ((blogDetail[i]['disease'] == 'dysmenorrhea') ||
            (blogDetail[i]['disease'] == 'Anemia')) {
          final newBlog = Blog(
            url: blogDetail[i]['url'],
            imageUrl: blogDetail[i]['ImageUrl'],
            youtubeUrl: blogDetail[i]['YoutubeUrl'],
            isAgeBelow: blogDetail[i]['isAgeBelow'],
            disease: blogDetail[i]['disease'],
            isMenorrhagia: blogDetail[i]['isMenorrhagia'],
            title: blogDetail[i]['title'],
            description: blogDetail[i]['description'],
          );
          bloglist.add(newBlog);
        }

        i = i + 1;
      }
    } else {
      print("else case running");
      i = 0;
      while (i < blogDetail.length) {
        final newBlog = Blog(
          url: blogDetail[i]['url'],
          imageUrl: blogDetail[i]['ImageUrl'],
          youtubeUrl: blogDetail[i]['YoutubeUrl'],
          isAgeBelow: blogDetail[i]['isAgeBelow'],
          disease: blogDetail[i]['disease'],
          isMenorrhagia: blogDetail[i]['isMenorrhagia'],
          title: blogDetail[i]['title'],
          description: blogDetail[i]['description'],
        );
        bloglist.add(newBlog);

        i = i + 1;
      }
    }

    return bloglist;
  }

  static const BleedingIntensity = ["Heavy", "Normal", "Low", "abc"];
  static const PainIntensity = ["High", "Moderate", "Low", "abc"];

  @override
  Widget build(BuildContext context) {
    final listOfPeriods = Provider.of<PeriodProvider>(context)
        .periodListProvideFromAlredyFetched();
    List<Blog> bloglist = [];
    if (listOfPeriods != null) {
      bloglist = bleeding(
          BleedingIntensity[
              listOfPeriods == null ? listOfPeriods[0].bloodIndex : 3],
          PainIntensity[
              listOfPeriods == null ? listOfPeriods[0].painIndex : 3]);
    }

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        child: ListView.builder(
          itemCount: bloglist.length,
          itemBuilder: (context, index) => Column(
            children: [
              InkWell(
                onTap: () async {
                  String url = bloglist[index].url;
                  try {
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  } catch (error) {
                    print(error);
                  }
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
                        child: Image.network(
                          bloglist[index].imageUrl ??
                              'https://i.pinimg.com/736x/56/58/eb/5658ebd81676b99acd753488dcadd054.jpg',
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
                              bloglist[index].title,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                            SizedBox(height: 7),
                            Text(
                              bloglist[index].description,
                              maxLines: 3,
                              style: TextStyle(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () async {
                                    String url = bloglist[index].youtubeUrl;
                                    try {
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    } catch (error) {
                                      print(error);
                                    }
                                  },
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

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Constant/blogDetail.dart';
import '../../model/blog.dart';


class RecomendedScreen extends StatelessWidget {
  List<Blog> bleeding(String bleedingIntensity, String pain) {
    var i = 0;
    List<Blog> bloglist = [];
    print(blogDetail[i]['description']);
    if (bleedingIntensity == 'Normal') {
      i = 0;
      while (i < blogDetail.length) {
        if ((blogDetail[i]['isMenorrhagia'] == 'false') &&
            blogDetail[i]['disease'] == 'null') {
          print(blogDetail[i]['description']);
          final newBlog = Blog(
            url: blogDetail[i]['url'],
            imageUrl: blogDetail[i]['ImageUrl'],
            youtubeUrl: blogDetail[i]['youtubeUrl'],
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
    } else if (bleedingIntensity == 'low') {
      i = 0;
      while (i < blogDetail.length) {
        if ((blogDetail[i]['isMenorrhagia'] == 'false') &&
            blogDetail[i]['disease'] == 'hypomenorrhea') {
          print(blogDetail[i]['description']);
          final newBlog = Blog(
            url: blogDetail[i]['url'],
            imageUrl: blogDetail[i]['ImageUrl'],
            youtubeUrl: blogDetail[i]['youtubeUrl'],
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
    } else if (bleedingIntensity == 'high') {
      i = 0;
      while (i < blogDetail.length) {
        if ((blogDetail[i]['isMenorrhagia'] == 'true')) {
          print(blogDetail[i]['description']);
          final newBlog = Blog(
            url: blogDetail[i]['url'],
            imageUrl: blogDetail[i]['ImageUrl'],
            youtubeUrl: blogDetail[i]['youtubeUrl'],
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
    if (pain == 'high') {
      i = 0;
      while (i < blogDetail.length) {
        if ((blogDetail[i]['disease'] == 'dysmenorrhea') ||
            (blogDetail[i]['disease'] == 'Anemia')) {
          print(blogDetail[i]['description']);
          final newBlog = Blog(
            url: blogDetail[i]['url'],
            imageUrl: blogDetail[i]['ImageUrl'],
            youtubeUrl: blogDetail[i]['youtubeUrl'],
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
    print(bloglist[0].title);
    return bloglist;
  }

  @override
  Widget build(BuildContext context) {
    final bloglist = bleeding('low', 'high');
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        child: ListView.builder(
          itemCount: bloglist.length,
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

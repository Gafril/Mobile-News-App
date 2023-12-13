import 'package:flutter/material.dart';
import 'package:trendtrack/models/news_model.dart';
import '../screens/details_screen.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:
          NewsData.hotNewsData.length, // Use hotNewsData instead of newsList
      itemBuilder: (context, index) {
        return NewHotList(NewsData
            .hotNewsData[index]); // Pass hotNewsData[index] to NewListTile
      },
    );
  }
}

class NewHotList extends StatelessWidget {
  final NewsData data;

  NewHotList(this.data);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(data),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20.0),
        padding: EdgeInsets.all(12.0),
        height: 130,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(26.0),
        ),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(data.UrlToImage!),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Flexible(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title!,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // SizedBox(
                  //   height: 8.0,
                  // ),
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child: Text(
                  //     data.category!,
                  //     overflow: TextOverflow.ellipsis,
                  //     style: TextStyle(
                  //       color: Colors.white54,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      data.author!,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

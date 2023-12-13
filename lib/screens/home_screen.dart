import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trendtrack/components/breaking_news_card.dart';
import 'package:trendtrack/components/new_list_tile.dart';
import 'package:trendtrack/models/news_model.dart';
import 'package:trendtrack/components/drawer_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
        centerTitle: true, // Menempatkan teks di tengah
        title: Text(
          "TrendTrack",
          style: TextStyle(
              fontSize: 25, color: Colors.lightGreenAccent, fontWeight: FontWeight.w700),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.notifications_outlined,
        //       color: Colors.black,
        //     ),
        //   ),
        // ],
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Membuka drawer
            },
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
            ),
          ),
        ),
      ),
      drawer: DrawerContent(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Breaking News",
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                itemCount: NewsData.breakingNewsData.length,
                itemBuilder: (context, index, id) =>
                    BreakingNewsCard(NewsData.breakingNewsData[index]),
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Recent News",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Column(
                children:
                    NewsData.recentNewsData.map((e) => NewListTile(e)).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

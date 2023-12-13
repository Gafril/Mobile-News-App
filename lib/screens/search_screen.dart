import 'package:flutter/material.dart';
import 'package:trendtrack/components/hotnews.dart';
import 'package:trendtrack/models/news_model.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchPageState();
}

class _SearchPageState extends State<Search> {
  TextEditingController searchController = TextEditingController();
  List<NewsData> searchResults = [];
  bool showHotNews = true;

  void performSearch(String query) {
    setState(() {
      searchResults = NewsData.hotNewsData
          .where(
              (news) => news.title!.toLowerCase().contains(query.toLowerCase()))
          .toList();
      showHotNews = false; // Hide "Hot News" when performing a search
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white, // Change background color
        centerTitle: true,
        title: Text(
          "TrendTrack",
          style: TextStyle(
            fontSize: 20, color: Colors.black,
            fontWeight: FontWeight.w700, // Increase font size
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.transparent, // Add a background color
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white, // Input field background color
                labelText: 'Search',
                prefixIcon: Icon(Icons.search), // Move search icon to the left
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded border
                ),
              ),
            ),
          ),
          if (searchResults.isEmpty)
            Center(
              child: Text(
                "No results found",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey, // Change text color
                ),
              ),
            )
          else
            Expanded(
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2, // Add shadow
                    margin: EdgeInsets.all(8),
                    child: ListTile(
                      title: Text(
                        searchResults[index].title!,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ),
          if (showHotNews)
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Hot News",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: NewsData.hotNewsData
                          .map((e) => NewHotList(e))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:trendtrack/models/news_model.dart';
import '../components/other_news_grid_view.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.data, {Key? key}) : super(key: key);
  final NewsData data;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.blue.shade900),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
                child: Image.network(
                  widget.data.UrlToImage!,
                  height: 350.0, // Ubah tinggi gambar sesuai preferensi Anda
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                widget.data.title!,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                widget.data.author!,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                widget.data.date!,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                widget.data.content!,
                style: TextStyle(
                  fontSize:
                      16.0, // Ubah ukuran teks konten sesuai preferensi Anda
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "Other News",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              OtherNewsGridView(NewsData.otherNewsData),
            ],
          ),
        ),
      ),
    );
  }
}

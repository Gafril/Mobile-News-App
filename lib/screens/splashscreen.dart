import 'dart:async';
import 'package:flutter/material.dart';
import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Tambahkan delay untuk simulasi splash screen
    Timer(
      Duration(seconds: 3), // Ganti dengan durasi yang diinginkan
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Ganti dengan tampilan splash screen yang sesuai
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Splash.JFIF', width: 200, height: 200),
            const SizedBox(height: 20.0),
            const Text(
              "TrendTrack",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            )
          ]
      )
    )
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    theme: ThemeData(
      // primarySwatch: Colors.blue, // Ganti dengan warna tema utama Anda
    ),
  ));
}
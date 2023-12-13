import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkModeSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting',
          style: TextStyle(color: Colors.black), // Warna teks App Bar
        ),
        backgroundColor: Colors.white, // Warna latar belakang App Bar
        iconTheme: IconThemeData(color: Colors.black), // Warna tombol kembali
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dark Mode',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: Text('Aktifkan Dark Mode'),
              value: darkModeSwitch,
              onChanged: (value) {
                setState(() {
                  darkModeSwitch = value;
                  // Tambahkan logika untuk mengubah tema aplikasi
                  if (darkModeSwitch) {
                    // Aktifkan tema gelap
                    // Misalnya: ThemeManager.enableDarkMode();
                    // Anda perlu menyesuaikan dengan manajemen tema aplikasi yang Anda gunakan
                  } else {
                    // Nonaktifkan tema gelap
                    // Misalnya: ThemeManager.disableDarkMode();
                    // Anda perlu menyesuaikan dengan manajemen tema aplikasi yang Anda gunakan
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: SettingsPage(),
    ),
  );
}

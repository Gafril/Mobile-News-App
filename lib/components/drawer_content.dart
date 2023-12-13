import 'package:flutter/material.dart';
import 'package:trendtrack/screens/login_page.dart';
import 'package:trendtrack/screens/profile_page.dart';
import 'package:trendtrack/screens/setting_page.dart';

class DrawerContent extends StatefulWidget {
  const DrawerContent({Key? key});

  @override
  State<DrawerContent> createState() => _DrawerContentState();
}

class _DrawerContentState extends State<DrawerContent> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color:
            Colors.white, // Mengubah warna latar belakang drawer menjadi putih
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 105, 104, 104),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/gafril.jpg'),
                      radius: 40,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ahmad Gafril Mandiri',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  // Text(
                  //   '080687699376',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //   ),
                  // ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors
                    .black, // Mengubah warna ikon pengaturan menjadi hitam
              ),
              title: Text(
                'Pengaturan',
                style: TextStyle(
                  color: Colors
                      .black, // Mengubah warna teks Pengaturan menjadi hitam
                ),
              ),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
            Divider(), // Garis pemisah
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black, // Mengubah warna ikon keluar menjadi hitam
              ),
              title: Text(
                'Keluar',
                style: TextStyle(
                  color:
                      Colors.black, // Mengubah warna teks Keluar menjadi hitam
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

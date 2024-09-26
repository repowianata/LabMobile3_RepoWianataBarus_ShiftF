import 'package:flutter/material.dart';
import 'package:pertemuan3/about_page.dart';
import 'package:pertemuan3/home_page.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff1f4037), Color(0xff99f2c8)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/dungeon_banner.png'), // Pastikan gambar ini ada di folder assets
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Dungeon Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PressStart2P',
                  ),
                ),
              ),
            ),
            _buildMenuItem(
              icon: Icons.home,
              title: 'Home',
              context: context,
              page: const HomePage(),
            ),
            _buildMenuItem(
              icon: Icons.info,
              title: 'About',
              context: context,
              page: const AboutPage(),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method untuk membuat ListTile yang seragam
  Widget _buildMenuItem(
      {required IconData icon, required String title, required BuildContext context, Widget? page}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'PressStart2P',
        ),
      ),
      onTap: () {
        Navigator.pop(context); // Menutup drawer
        if (page != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        } else {
          // Logika untuk keluar atau tutup aplikasi
          Navigator.pop(context);
        }
      },
      hoverColor: Colors.tealAccent.withOpacity(0.3), // Warna saat ditahan/diklik
      tileColor: Colors.black.withOpacity(0.2), // Background item
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    );
  }
}

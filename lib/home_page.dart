import 'package:flutter/material.dart';
import 'package:pertemuan3/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? namauser;

  void _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      namauser = prefs.getString('username');
    });
  }

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(
            fontFamily: 'PressStart2P',
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: const Sidemenu(),
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff141e30), Color(0xff243b55)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.gamepad,
                    color: Colors.white,
                    size: 100,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Welcome, ${namauser ?? 'Player'}!',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PressStart2P',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'This is your home page, where you can access all your features!',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontFamily: 'PressStart2P',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  _buildFeatureGrid(),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Explore',
                      style: TextStyle(
                        fontFamily: 'PressStart2P',
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      // Navigasi ke halaman lain
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                        fontFamily: 'PressStart2P',
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      // Tambahkan logika logout
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Method untuk membuat grid dengan ikon fitur
  Widget _buildFeatureGrid() {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        _buildFeatureItem(
          icon: Icons.explore,
          title: 'Quests',
          onTap: () {
            // Aksi saat item Quests ditekan
          },
        ),
        _buildFeatureItem(
          icon: Icons.inventory,
          title: 'Inventory',
          onTap: () {
            // Aksi saat item Inventory ditekan
          },
        ),
        _buildFeatureItem(
          icon: Icons.leaderboard,
          title: 'Leaderboard',
          onTap: () {
            // Aksi saat item Leaderboard ditekan
          },
        ),
        _buildFeatureItem(
          icon: Icons.shield,
          title: 'Guild',
          onTap: () {
            // Aksi saat item Guild ditekan
          },
        ),

        _buildFeatureItem(
          icon: Icons.shop,
          title: 'Shop',
          onTap: () {
            // Aksi saat item Shop ditekan
          },
        ),
        _buildFeatureItem(
          icon: Icons.dangerous,
          title: 'Dungeon',
          onTap: () {
            // Aksi saat item Dungeon ditekan
          },
        ),
        _buildFeatureItem(
          icon: Icons.assignment,
          title: 'Missions',
          onTap: () {
            // Aksi saat item Missions ditekan
          },
        ),
        _buildFeatureItem(
          icon: Icons.support,
          title: 'Support',
          onTap: () {
            // Aksi saat item Support ditekan
          },
        ),
      ],
    );
  }

  // Method untuk membuat item fitur
  Widget _buildFeatureItem({required IconData icon, required String title, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white, width: 2),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'PressStart2P',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

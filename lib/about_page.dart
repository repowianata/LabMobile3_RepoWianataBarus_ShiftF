import 'package:flutter/material.dart';
import 'package:pertemuan3/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About the Game'),
        backgroundColor: Colors.black87,
      ),
      drawer: const Sidemenu(),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff0f2027), Color(0xff203a43), Color(0xff2c5364)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image or Icon representing the game
                const Icon(
                  Icons.videogame_asset,
                  color: Colors.white,
                  size: 100,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Dungeon Adventure',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'PressStart2P', // Game-style font
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Embark on an epic adventure through mysterious dungeons filled with perilous traps, terrifying monsters, and hidden treasures! As a brave hero, your mission is to explore the depths, solve ancient puzzles, and defeat formidable bosses to uncover the secrets of the dungeon.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontFamily: 'PressStart2P',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Features:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'PressStart2P',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                _buildFeatureItem(
                  icon: Icons.shield,
                  title: 'Hero Customization',
                  description: 'Choose your character class, weapons, and abilities to suit your playstyle.',
                ),
                _buildFeatureItem(
                  icon: Icons.pets,
                  title: 'Companion System',
                  description: 'Recruit loyal pets and allies to aid you in your quest.',
                ),
                _buildFeatureItem(
                  icon: Icons.bug_report,
                  title: 'Challenging Enemies',
                  description: 'Face off against unique and challenging enemies with their own tactics.',
                ),
                _buildFeatureItem(
                  icon: Icons.map,
                  title: 'Dynamic Maps',
                  description: 'Explore randomly generated dungeons that change every time you play.',
                ),

                const SizedBox(height: 30),
                const Text(
                  'Are you ready to become a legend? The dungeon awaits!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'PressStart2P',
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build feature items
  Widget _buildFeatureItem({required IconData icon, required String title, required String description}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.yellowAccent,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'PressStart2P',
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                    fontFamily: 'PressStart2P',
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

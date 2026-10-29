import 'package:flutter/material.dart';
import 'select_team_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String favoriteTeam = 'Chennai Super Kings';

  Future<void> changeTeam() async {
    final String? selectedTeam = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (context) => const SelectTeamScreen()),
    );

    if (!mounted || selectedTeam == null) return;

    setState(() {
      favoriteTeam = selectedTeam;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorite IPL Team'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.sports_cricket,
                size: 90,
                color: Colors.deepOrange,
              ),
              const SizedBox(height: 24),
              const Text(
                'Your Favorite Team',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(height: 12),
              Text(
                favoriteTeam,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: changeTeam,
                icon: const Icon(Icons.swap_horiz),
                label: const Text('Change Team'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

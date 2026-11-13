import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  PlaylistScreen({super.key});

  final List<String> playlists = [
    'Today\'s Top Hits',
    'Discover Weekly',
    'Release Radar',
    'Chill Hits',
    'Mood Booster',
    'Rock Classics',
    'RapCaviar',
    'Peaceful Piano',
    'All Out 2000s',
    'Dance Party',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),

      appBar: AppBar(
        title: const Text(
          'Your Playlists',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF121212),
      ),

      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: playlists.length,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              playlists[index],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        },

        // Custom Spotify green divider
        separatorBuilder: (context, index) {
          return const Divider(
            color: Color(0xFF1DB954),
            thickness: 2,
            height: 1,
          );
        },
      ),
    );
  }
}

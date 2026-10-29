import 'package:flutter/material.dart';

class SongDetailsScreen extends StatefulWidget {
  const SongDetailsScreen({super.key});

  @override
  State<SongDetailsScreen> createState() => _SongDetailsScreenState();
}

class _SongDetailsScreenState extends State<SongDetailsScreen> {
  String songTitle = '';
  String artistName = '';

  @override
  void initState() {
    super.initState();

    // Load mock song data when the screen initializes
    loadSongDetails();
  }

  void loadSongDetails() {
    // Mock data source
    final Map<String, String> songData = {
      'title': 'Perfect',
      'artist': 'Ed Sheeran',
    };

    songTitle = songData['title']!;
    artistName = songData['artist']!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Song Details'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(24),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.music_note,
                  size: 70,
                  color: Colors.deepPurple,
                ),
                const SizedBox(height: 20),
                Text(
                  songTitle,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  'Artist: $artistName',
                  style: const TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

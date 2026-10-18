import 'package:flutter/material.dart';
import 'widgets/song_tile.dart';

void main() {
  runApp(const MyMusicTheme());
}

class MyMusicTheme extends StatelessWidget {
  const MyMusicTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMusicTheme',
      debugShowCheckedModeBanner: false,

      // Global app theme
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        fontFamily: 'Poppins',

        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.deepPurple,
          secondary: Colors.orange,
        ),

        // Global ElevatedButton style
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
      ),

      home: const MusicHomeScreen(),
    );
  }
}

class MusicHomeScreen extends StatelessWidget {
  const MusicHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Music')),
      body: ListView(
        children: [
          SongTile(
            songName: 'Perfect - Ed Sheeran',
            onAddToPlaylist: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Song added to playlist'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),

          SongTile(
            songName: 'Shape of You - Ed Sheeran',
            onAddToPlaylist: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Song added to playlist'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),

          SongTile(
            songName: 'Blinding Lights - The Weeknd',
            onAddToPlaylist: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Song added to playlist'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

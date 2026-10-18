import 'package:flutter/material.dart';
// import 'package:my_music_theme/food_home_screen.dart';
import 'package:my_music_theme/home_screen.dart';
// import 'package:my_music_theme/playlist_screen.dart';
// import 'package:my_music_theme/restaurant_list_screen.dart';
// import 'widgets/song_tile.dart';

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

      home: MyHomeScreen(),
    );
  }
}

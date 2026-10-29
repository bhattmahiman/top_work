import 'package:flutter/material.dart';
import 'package:my_music_theme/app_routes.dart';
// import 'package:my_music_theme/food_home_screen.dart';
import 'package:my_music_theme/home_screen.dart';
import 'package:my_music_theme/screens/favourites.dart';
import 'package:my_music_theme/screens/playlist_screen.dart';
import 'package:my_music_theme/screens/home_screen.dart';
import 'package:my_music_theme/screens/settings_screen.dart';
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

      // home: MyHomeScreen(),
      initialRoute: "/",
      routes: {
        AppRoutes.home: (context) => HomeScreen(),
        AppRoutes.playlist: (context) => PlaylistScreen(),
        AppRoutes.settings: (context) => SettingsScreen(),
        AppRoutes.favourites: (context) => Favourites(),
      },
    );
  }
}

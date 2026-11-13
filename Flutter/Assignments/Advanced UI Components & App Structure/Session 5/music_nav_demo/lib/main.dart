import 'package:flutter/material.dart';
import 'package:music_nav_demo/widgets/custom_bottom_nav.dart';

import 'screens/songs_screen.dart';
import 'screens/albums_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Navigation Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MusicHomeScreen(),
    );
  }
}

class MusicHomeScreen extends StatefulWidget {
  const MusicHomeScreen({super.key});

  @override
  State<MusicHomeScreen> createState() => _MusicHomeScreenState();
}

class _MusicHomeScreenState extends State<MusicHomeScreen> {
  // Track currently selected tab
  int selectedIndex = 0;

  // List of screens
  final List<Widget> screens = const [
    SongsScreen(),
    AlbumsScreen(),
    ProfileScreen(),
  ];

  // Update selected index
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Navigation'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      // Display selected screen
      body: screens[selectedIndex],

      // Bottom Navigation Bar
      bottomNavigationBar: CustomBottomNav(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}

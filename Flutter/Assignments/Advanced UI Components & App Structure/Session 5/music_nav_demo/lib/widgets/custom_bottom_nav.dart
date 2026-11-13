import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,

      onTap: onItemTapped,

      selectedItemColor: const Color(0xFF1DB954),
      unselectedItemColor: Colors.grey,

      selectedFontSize: 14,
      unselectedFontSize: 12,

      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),

      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),

      type: BottomNavigationBarType.fixed,

      showSelectedLabels: true,
      showUnselectedLabels: true,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note_outlined),
          activeIcon: Icon(Icons.music_note),
          label: 'Songs',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.album_outlined),
          activeIcon: Icon(Icons.album),
          label: 'Albums',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}

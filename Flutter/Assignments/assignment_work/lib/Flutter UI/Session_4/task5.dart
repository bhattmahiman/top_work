import 'package:flutter/material.dart';

class PlaylistCardResponsive extends StatelessWidget {
  const PlaylistCardResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: screenSize.width * 0.9,
        margin: EdgeInsets.all(screenSize.width * 0.04),
        padding: EdgeInsets.all(screenSize.width * 0.05),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.green, Color(0xFF004D40)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(screenSize.width * 0.05),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.3),
              blurRadius: screenSize.width * 0.03,
              offset: Offset(0, screenSize.height * 0.005),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.music_note,
              color: Colors.white,
              size: screenSize.width * 0.1,
            ),
            SizedBox(height: screenSize.height * 0.02),
            Text(
              'My Favorite Playlist',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenSize.width * 0.055,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenSize.height * 0.01),
            Text(
              '25 Songs',
              style: TextStyle(
                color: Colors.white70,
                fontSize: screenSize.width * 0.04,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

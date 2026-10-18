import 'package:flutter/material.dart';
import 'widgets/playlist_card.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Playlists')),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            PlaylistCard(
              imageUrl:
                  'https://images.unsplash.com/photo-1470225620780-dba8ba36b745',
              playlistName: 'Chill Vibes',
              songCount: 25,
            ),

            PlaylistCard(
              imageUrl:
                  'https://images.unsplash.com/photo-1516280440614-37939bbacd81',
              playlistName: 'Workout Hits',
              songCount: 40,
            ),

            PlaylistCard(
              imageUrl:
                  'https://images.unsplash.com/photo-1511379938547-c1f69419868d',
              playlistName: 'My Favorites',
              songCount: 18,
            ),
          ],
        ),
      ),
    );
  }
}

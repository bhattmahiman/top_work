import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFF121212),
        appBar: AppBar(
          title: const Text(
            'My Music',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xFF121212),
          foregroundColor: Colors.white,
          bottom: const TabBar(
            indicatorColor: Color(0xFF1DB954),
            labelColor: Color(0xFF1DB954),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.queue_music), text: 'My Playlists'),
              Tab(icon: Icon(Icons.favorite), text: 'Liked Songs'),
              Tab(icon: Icon(Icons.history), text: 'Recently Played'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [PlaylistTab(), LikedSongsTab(), RecentlyPlayedTab()],
        ),
      ),
    );
  }
}

// My Playlists Tab
class PlaylistTab extends StatefulWidget {
  const PlaylistTab({super.key});

  @override
  State<PlaylistTab> createState() => _PlaylistTabState();
}

class _PlaylistTabState extends State<PlaylistTab>
    with AutomaticKeepAliveClientMixin {
  final List<String> playlists = [
    'Blinding Lights',
    'Shape of You',
    'Perfect',
    'Starboy',
    'Levitating',
    'Save Your Tears',
    'Believer',
    'Attention',
    'Faded',
    'Memories',
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ListView.builder(
      itemCount: playlists.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.music_note, color: Color(0xFF1DB954)),
          title: Text(
            playlists[index],
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}

// Liked Songs Tab
class LikedSongsTab extends StatefulWidget {
  const LikedSongsTab({super.key});

  @override
  State<LikedSongsTab> createState() => _LikedSongsTabState();
}

class _LikedSongsTabState extends State<LikedSongsTab>
    with AutomaticKeepAliveClientMixin {
  final List<String> likedSongs = [
    'Die With A Smile',
    'Heat Waves',
    'Night Changes',
    'Until I Found You',
    'Let Me Down Slowly',
    'Perfect',
    'Someone You Loved',
    'Photograph',
    'Dandelions',
    'Daylight',
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ListView.builder(
      itemCount: likedSongs.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.favorite, color: Colors.red),
          title: Text(
            likedSongs[index],
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}

// Recently Played Tab
class RecentlyPlayedTab extends StatefulWidget {
  const RecentlyPlayedTab({super.key});

  @override
  State<RecentlyPlayedTab> createState() => _RecentlyPlayedTabState();
}

class _RecentlyPlayedTabState extends State<RecentlyPlayedTab>
    with AutomaticKeepAliveClientMixin {
  final List<String> recentlyPlayed = [
    'Night Changes',
    'Faded',
    'Believer',
    'Starboy',
    'Heat Waves',
    'Perfect',
    'Memories',
    'Photograph',
    'Levitating',
    'Daylight',
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ListView.builder(
      itemCount: recentlyPlayed.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.history, color: Colors.orange),
          title: Text(
            recentlyPlayed[index],
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}

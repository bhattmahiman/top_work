import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  // Change this list to add or remove tabs.
  static const List<String> tabNames = ['Favourites', 'Trending', 'Downloaded'];

  // Different icons for each tab.
  static const List<IconData> tabIcons = [
    Icons.favorite,
    Icons.trending_up,
    Icons.download,
  ];

  // Sample songs for each tab.
  static const List<List<String>> songs = [
    ['Perfect', 'Blinding Lights', 'Shape of You', 'Starboy', 'Levitating'],
    [
      'Die With A Smile',
      'APT.',
      'Birds of a Feather',
      'Espresso',
      'Beautiful Things',
    ],
    ['Night Changes', 'Heat Waves', 'Faded', 'Memories', 'Believer'],
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabNames.length,
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
              Tab(icon: Icon(Icons.favorite), text: 'Favourites'),
              Tab(icon: Icon(Icons.trending_up), text: 'Trending'),
              Tab(icon: Icon(Icons.download), text: 'Downloaded'),
            ],
          ),
        ),

        body: TabBarView(
          children: List.generate(
            tabNames.length,
            (index) => SongList(songs: songs[index]),
          ),
        ),
      ),
    );
  }
}

// Reusable song list widget
class SongList extends StatefulWidget {
  final List<String> songs;

  const SongList({super.key, required this.songs});

  @override
  State<SongList> createState() => _SongListState();
}

class _SongListState extends State<SongList>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ListView.builder(
      itemCount: widget.songs.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.music_note, color: Color(0xFF1DB954)),
          title: Text(
            widget.songs[index],
            style: const TextStyle(color: Colors.white),
          ),
          trailing: const Icon(Icons.more_vert, color: Colors.grey),
        );
      },
    );
  }
}

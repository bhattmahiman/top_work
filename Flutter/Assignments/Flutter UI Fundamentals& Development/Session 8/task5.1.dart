import 'package:flutter/material.dart';

class SongTile extends StatelessWidget {
  final String songName;
  final VoidCallback onAddToPlaylist;

  const SongTile({
    super.key,
    required this.songName,
    required this.onAddToPlaylist,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(songName),

      trailing: ElevatedButton(
        onPressed: onAddToPlaylist,
        child: const Text('Add to Playlist'),
      ),
    );
  }
}

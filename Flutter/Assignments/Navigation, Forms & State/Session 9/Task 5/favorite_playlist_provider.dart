import 'package:flutter/material.dart';

class FavoritePlaylistProvider extends ChangeNotifier {
  final List<String> _favoritePlaylists = [];

  List<String> get favoritePlaylists => List.unmodifiable(_favoritePlaylists);

  bool isFavorite(String playlistName) {
    return _favoritePlaylists.contains(playlistName);
  }

  void toggleFavorite(String playlistName) {
    if (playlistName.trim().isEmpty) return;

    if (_favoritePlaylists.contains(playlistName)) {
      _favoritePlaylists.remove(playlistName);
    } else {
      _favoritePlaylists.add(playlistName);
    }

    notifyListeners();
  }

  void removeFavorite(String playlistName) {
    if (_favoritePlaylists.remove(playlistName)) {
      notifyListeners();
    }
  }
}

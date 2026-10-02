/* Create a Dart class called Playlist representing a Spotify playlist with fields: playlistName and songCount. Write a function addSong() that increases songCount by 1. Create a Playlist object, add 3 songs using addSong(), and print the final songCount.
 */

class Playlist {
  String playlistName;
  int songCount;

  // Constructor
  Playlist(this.playlistName, this.songCount);

  // Method to add a song
  void addSong() {
    songCount++;
  }
}

void main() {
  // Create a Playlist object
  Playlist playlist = Playlist("Chill Vibes", 0);

  // Add 3 songs
  playlist.addSong();
  playlist.addSong();
  playlist.addSong();

  // Print final song count
  print("Playlist: ${playlist.playlistName}");
  print("Final Song Count: ${playlist.songCount}");
}

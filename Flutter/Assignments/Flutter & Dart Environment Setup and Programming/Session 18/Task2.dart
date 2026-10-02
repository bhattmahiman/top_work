/* Write a Dart class called Movie with fields: title, genre, and releaseYear. Add a constructor, then create two Movie objects for any Bollywood or Hollywood films you love and display their info using print(). */

class Movie {
  String title;
  String genre;
  int releaseYear;

  // Constructor
  Movie(this.title, this.genre, this.releaseYear);
}

void main() {
  // Create two Movie objects
  Movie movie1 = Movie("Jawan", "Action", 2023);
  Movie movie2 = Movie("3 Idiots", "Comedy/Drama", 2009);

  // Display movie information
  print("Movie 1:");
  print("Title: ${movie1.title}");
  print("Genre: ${movie1.genre}");
  print("Release Year: ${movie1.releaseYear}");

  print("\nMovie 2:");
  print("Title: ${movie2.title}");
  print("Genre: ${movie2.genre}");
  print("Release Year: ${movie2.releaseYear}");
}

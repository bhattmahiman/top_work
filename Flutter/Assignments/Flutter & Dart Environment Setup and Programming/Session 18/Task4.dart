/* Refactor your Movie class so that genre is optional (can be null) and releaseYear has a default value of 2024 if not provided. Test by creating a Movie object with only the title and print its details.<br><br><em><strong>Hint:</strong> Use named parameters with default values and nullability in the constructor.</em> */

class Movie {
  String title;
  String? genre;
  int releaseYear;

  // Constructor with named parameters
  Movie({required this.title, this.genre, this.releaseYear = 2024});

  void displayMovie() {
    print("Title: $title");
    print("Genre: ${genre ?? "Not specified"}");
    print("Release Year: $releaseYear");
  }
}

void main() {
  // Creating a Movie object with only the title
  Movie movie = Movie(title: "Jawan");

  movie.displayMovie();
}

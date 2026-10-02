/*Given a Dart map called movieRatings with 5 movie titles as keys and their ratings (out of 10) as values, 
use a for-in loop to print each movie and its rating in the format 'Jawan: 8/10'. */

void main() {
  Map<String, int> movieRatings = {
    "Jawan": 8,
    "Pathaan": 7,
    "3 Idiots": 9,
    "Dangal": 8,
    "KGF": 9,
  };

  for (var movie in movieRatings.entries) {
    print("${movie.key} : ${movie.value}/10");
  }
}

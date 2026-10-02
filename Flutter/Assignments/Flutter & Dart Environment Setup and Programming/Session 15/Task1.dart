/* Create a Dart list called favRestaurants containing 3 restaurant names you like (e.g., 'Barbeque Nation', 'Domino's', 'Hocco'). Print the list to the console. */

void main() {
  List<String> favRestaurants = ["Domino's", "McDonald's", "Taco Bell"];

  for (String restaurant in favRestaurants) {
    print("$restaurant");
  }
}

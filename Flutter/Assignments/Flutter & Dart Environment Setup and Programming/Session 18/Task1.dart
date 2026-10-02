/* Create a Dart class called Restaurant with fields name, cuisine, and rating. Add a constructor to initialize all fields, then create an object for a restaurant you like and print all its details. */

class Restaurant {
  String name;
  String cuisine;
  double rating;

  // Constructor
  Restaurant(this.name, this.cuisine, this.rating);
}

void main() {
  // Create a Restaurant object
  Restaurant restaurant = Restaurant("Hocco", "Fast Food", 4.5);

  // Print restaurant details
  print("Restaurant Name: ${restaurant.name}");
  print("Cuisine: ${restaurant.cuisine}");
  print("Rating: ${restaurant.rating}/5");
}

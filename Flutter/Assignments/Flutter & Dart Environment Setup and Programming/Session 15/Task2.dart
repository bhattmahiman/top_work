/*Add a new restaurant to favRestaurants using the add() method, then update the second restaurant's name to something else using its index. Print the updated list after each change. */

void main() {
  List<String> favRestaurants = ["Domino's", "McDonald's", "Taco Bell"];

  print("Before changing data: ");
  print(favRestaurants);

  favRestaurants.add("La Pino's");

  print("After adding new Restaurant : ");
  print(favRestaurants);

  favRestaurants[2] = "Pizza Hut";

  print("After updaing name : ");
  print(favRestaurants);
}

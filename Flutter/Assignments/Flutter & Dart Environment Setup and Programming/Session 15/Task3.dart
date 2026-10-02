/* Remove the last restaurant from favRestaurants using the removeLast() method, then remove a specific restaurant by name using remove(). Print the list after each removal.<br><br><em><strong>Hint:</strong> Use remove('RestaurantName') to delete by value.</em> */
void main() {
  List<String> favRestaurants = [
    "Barbeque Nation",
    "Domino's",
    "Hocco",
    "La Pino's",
  ];

  // Remove the last restaurant
  favRestaurants.removeLast();

  print("After removing the last restaurant:");
  print(favRestaurants);

  // Remove a specific restaurant by name
  favRestaurants.remove("Domino's");

  print("After removing Domino's:");
  print(favRestaurants);
}

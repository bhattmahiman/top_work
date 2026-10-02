/* Create a Dart Map called foodItem with keys 'name', 'price', and 'category' to represent a Zomato menu item, and print each value using its key. */

void main() {
  Map<String, dynamic> foodItem = {
    "name": "Paneer Pizza",
    "price": 250,
    "category": "Main Course",
  };

  print("Name: ${foodItem["name"]}");
  print("Price: ₹${foodItem["price"]}");
  print("Category: ${foodItem["category"]}");
}

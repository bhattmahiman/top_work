/* Restaurant Menu Manager */

import 'dart:io';

class MenuItem {
  String name;
  double price;
  bool isAvailable;

  MenuItem(this.name, this.price, this.isAvailable);
}

void main() {
  List<MenuItem> menu = [];

  print("========== RESTAURANT MENU ==========");

  stdout.write("Enter number of menu items: ");
  int numberOfItems = int.parse(stdin.readLineSync()!);

  // Take menu details from user
  for (int i = 0; i < numberOfItems; i++) {
    print("\nEnter details for Item ${i + 1}");

    stdout.write("Enter item name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter item price: ");
    double price = double.parse(stdin.readLineSync()!);

    stdout.write("Is the item available? (yes/no): ");
    String availability = stdin.readLineSync()!.toLowerCase();

    bool isAvailable = availability == "yes";

    menu.add(MenuItem(name, price, isAvailable));
  }

  // Print all menu items
  print("\n========== ALL MENU ITEMS ==========");

  for (MenuItem item in menu) {
    print(
      "Name: ${item.name}, "
      "Price: Rs ${item.price}, "
      "Available: ${item.isAvailable}",
    );
  }

  // Print available items
  print("\n========== AVAILABLE ITEMS ==========");

  for (MenuItem item in menu) {
    if (item.isAvailable == true) {
      print("${item.name} - Rs ${item.price}");
    }
  }

  // Create Map from the same menu data
  Map<String, double> menuMap = {};

  for (MenuItem item in menu) {
    menuMap[item.name] = item.price;
  }

  // Search for an item
  print("\n========== ITEM LOOKUP ==========");

  stdout.write("Enter item name to check price: ");
  String itemName = stdin.readLineSync()!;

  if (menuMap.containsKey(itemName)) {
    print("$itemName Price: Rs ${menuMap[itemName]}");
  } else {
    print("$itemName is not available in the menu.");
  }
}

import 'food_item.dart';

class Cart {
  static final List<FoodItem> items = [];

  static void addItem(FoodItem item) {
    items.add(item);
  }

  static void removeItem(int index) {
    items.removeAt(index);
  }

  static double getTotal() {
    double total = 0;

    for (FoodItem item in items) {
      total += item.price;
    }

    return total;
  }
}

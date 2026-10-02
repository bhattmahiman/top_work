/* Use a while loop in Dart to simulate a Flipkart-style shopping cart: starting with a list of 4 product names,
 print each product and remove it from the list one by one until the cart is empty.
 Hint: Use the removeAt(0) method to remove the first item in each iteration. */

void main() {
  List<String> cart = [
    "iPhone 16",
    "Samsung Galaxy S25",
    "Sony Headphones",
    "Gaming Mouse",
  ];

  while (cart.isNotEmpty) {
    String product = cart.removeAt(0);

    print("Removed from cart : $product");
  }

  print("Cart is empty...");
}

/* Given a Map representing a Flipkart product (with keys: 'title', 'price', 'inStock'), write Dart code to update the 'inStock' value to false and print the updated Map. */

void main() {
  Map<String, dynamic> product = {
    "title": "Samsung Galaxy S25",
    "price": 79999,
    "inStock": true,
  };

  // Update inStock value to false
  product["inStock"] = false;

  print("Updated Product:");
  print(product);
}

/* Build a Dart class called Product to represent items on Flipkart, with fields: productName, price, and isAvailable. Add a constructor and a method displayProduct() that prints all details in a nice format. Instantiate one Product and call displayProduct(). */

class Product {
  String productName;
  double price;
  bool isAvailable;

  // Constructor
  Product(this.productName, this.price, this.isAvailable);

  // Method to display product details
  void displayProduct() {
    print("----- Product Details -----");
    print("Product Name : $productName");
    print("Price        : ₹$price");
    print("Available    : ${isAvailable ? "Yes" : "No"}");
    print("---------------------------");
  }
}

void main() {
  // Create a Product object
  Product product = Product("Samsung Galaxy S25", 79999, true);

  // Display product details
  product.displayProduct();
}

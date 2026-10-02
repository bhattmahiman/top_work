/* Build a CustomerUser class that extends ProductUser and adds a method placeOrder(productName) which prints a message like 'Order placed for {productName} by {name}'. Use the this keyword to access the user's name. */

class ProductUser {
  String name;
  String email;

  ProductUser(this.name, this.email);

  void displayInfo() {
    print("Name: $name");
    print("Email: $email");
  }
}

// CustomerUser extends ProductUser
class CustomerUser extends ProductUser {
  CustomerUser(String name, String email) : super(name, email);

  // Method to place an order
  void placeOrder(String productName) {
    print("Order placed for $productName by ${this.name}");
  }
}

void main() {
  CustomerUser customer = CustomerUser("Mahiman", "mahiman@example.com");

  customer.placeOrder("iPhone 16");
}

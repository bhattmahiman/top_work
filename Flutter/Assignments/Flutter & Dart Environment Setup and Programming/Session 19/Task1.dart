/*Create a Dart class called ProductUser with properties name and email, and a method displayInfo() that prints both properties. */

class ProductUser {
  String name;
  String email;

  // Constructor
  ProductUser(this.name, this.email);

  // Method to display user information
  void displayInfo() {
    print("Name: $name");
    print("Email: $email");
  }
}

void main() {
  // Create a ProductUser object
  ProductUser user = ProductUser("Mahiman", "mahiman@example.com");

  // Display user information
  user.displayInfo();
}

/* Create a static variable totalUsers in the ProductUser class that keeps track of how many ProductUser (and its subclasses) objects have been created. Increment it in each constructor and print its value after creating three different users. */

class ProductUser {
  String name;
  String email;

  // Static variable shared by all ProductUser objects
  static int totalUsers = 0;

  // Constructor
  ProductUser(this.name, this.email) {
    totalUsers++;
  }

  void displayInfo() {
    print("Name: $name");
    print("Email: $email");
  }
}

// SellerUser inherits from ProductUser
class SellerUser extends ProductUser {
  String shopName;

  SellerUser(String name, String email, this.shopName) : super(name, email);
}

void main() {
  ProductUser user1 = ProductUser("Rahul", "rahul@example.com");
  ProductUser user2 = ProductUser("Priya", "priya@example.com");
  SellerUser user3 = SellerUser(
    "Mahiman",
    "mahiman@example.com",
    "Mahiman Electronics",
  );

  print("Total Users Created: ${ProductUser.totalUsers}");
}

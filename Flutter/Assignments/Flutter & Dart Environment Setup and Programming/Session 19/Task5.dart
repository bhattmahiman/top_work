/* Write a function processUser(User user) that accepts either a SellerUser or CustomerUser object and calls displayInfo(). Demonstrate polymorphism by passing both types and showing the correct method output. */

class User {
  String name;
  String email;

  User(this.name, this.email);

  void displayInfo() {
    print("Name: $name");
    print("Email: $email");
  }
}

class SellerUser extends User {
  String shopName;

  SellerUser(String name, String email, this.shopName) : super(name, email);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Shop Name: $shopName");
  }
}

class CustomerUser extends User {
  CustomerUser(String name, String email) : super(name, email);

  @override
  void displayInfo() {
    super.displayInfo();
    print("User Type: Customer");
  }
}

// Polymorphic function
void processUser(User user) {
  user.displayInfo();
}

void main() {
  SellerUser seller = SellerUser(
    "Mahiman",
    "seller@example.com",
    "Mahiman Electronics",
  );

  CustomerUser customer = CustomerUser("Rahul", "customer@example.com");

  print("Seller Details:");
  processUser(seller);

  print("\nCustomer Details:");
  processUser(customer);
}

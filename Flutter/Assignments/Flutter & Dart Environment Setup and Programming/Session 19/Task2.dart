/* Extend ProductUser to create a SellerUser class with an additional property shopName and override the displayInfo() method to also print the shop name.<br><br><em><strong>Hint:</strong> Use the super keyword to call the base class method inside your override.</em> */

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

// SellerUser extends ProductUser
class SellerUser extends ProductUser {
  String shopName;

  // Constructor
  SellerUser(String name, String email, this.shopName) : super(name, email);

  // Override displayInfo()
  @override
  void displayInfo() {
    super.displayInfo();
    print("Shop Name: $shopName");
  }
}

void main() {
  SellerUser seller = SellerUser(
    "Mahiman",
    "mahiman@example.com",
    "Mahiman Electronics",
  );

  seller.displayInfo();
}

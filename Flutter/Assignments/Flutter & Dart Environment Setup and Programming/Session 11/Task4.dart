/* Write a Dart function called showRoleFeatures that takes a user role as input ('admin', 'seller', or 'buyer') and 
uses a switch statement to print a different message for each role, like 'Admin: Access to all features', 'Seller: Can add products', 
'Buyer: Can browse and purchase'.*/

import 'dart:io';

void showRoleFeatures(String role) {
  switch (role) {
    case "admin":
      print("Admin: Access to all features");
      break;

    case "seller":
      print("Seller: Can add Products");
      break;

    case "buyer":
      print("Buyer: Can Browse and purchase");
      break;

    default:
      print("Invelid Role : Please enter admin, seller, or buyer");
  }
}

void main() {
  String? role;

  print("Enter Role : ");
  role = stdin.readLineSync()!;

  showRoleFeatures(role);
}

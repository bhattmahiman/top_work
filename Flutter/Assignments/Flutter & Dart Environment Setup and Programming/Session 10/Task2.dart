/*Write a Dart function checkDiscountEligibility that takes a user's order amount and returns true if the amount is greater than or equal to 500, otherwise false. Use a
logical operator and print a message like 'You are eligible for a discount!' or 'No discount available.' using string interpolation*/

import 'dart:io';

bool checkDiscountEligibility(double amount) {
  return amount >= 500;
}

void main() {
  double? amount;

  print("Enter amount : ");

  amount = double.parse(stdin.readLineSync()!);

  bool eligible = checkDiscountEligibility(amount);

  if (eligible) {
    print("You are Eligible for a discount!!");
  } else {
    print("No discount available!!");
  }
}

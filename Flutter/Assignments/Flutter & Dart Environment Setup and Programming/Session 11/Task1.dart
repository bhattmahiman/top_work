import 'dart:io';

void checkDiscountEligibility(int age) {
  if (age <= 22) {
    print("Eligible for student discount");
  } else {
    print("No discount available");
  }
}

void main() {
  int? age;

  print("Enter Yout age : ");

  age = int.parse(stdin.readLineSync()!);

  checkDiscountEligibility(age);
}

/*
Build a Dart snippet that simulates a Flipkart-style cart: given three product prices (as variables), 
calculate and print the total, then apply a 10% discount if the total is above 1000. 
Display the final amount with a message using string interpolation.
Hint: Use arithmetic and relational operators to check the discount condition. 
*/
import 'dart:io';

void main() {
  int? item_no;
  int i = 0;
  List<double> productAmount = [];

  print("Enter Item You want to add : ");

  item_no = int.parse(stdin.readLineSync()!);

  for (i = 0; i < item_no; i++) {
    print("Enter Product Amount : ");
    // product_amount = double.parse(stdin.readLineSync()!);
    double product_amount = double.parse(stdin.readLineSync()!);

    productAmount.add(product_amount);
  }

  print(
    "-------------------------------------------------------------------------",
  );

  i = 0;

  for (var proAmt in productAmount) {
    print("Product ${i + 1}: ₹$proAmt");
    i++;
  }

  print(
    "-------------------------------------------------------------------------",
  );

  // for (var i = 0; i < productAmount.length; i++) {
  //   print('Product ${i + 1}: ₹${productAmount[i]}');
  // }

  double total = 0;

  for (var proAmt in productAmount) {
    total += proAmt;
  }

  print("Total : $total");

  if (total >= 1000) {
    double discount = total * 0.10;

    double finalAmount = total - discount;

    print("10% discount : $discount");
    print("Final Amount is : $finalAmount");
  } else {
    print("No discount Available");
    print("Final Amount : $total");
  }
}

/*Order Confirmation Generator */

import 'dart:io';

void main() {
  int orderId = 1001;
  String? customerName;
  int? numberOfItems;
  double totalAmount = 0;

  int statusCode = 3;

  print("Enter Name:");
  customerName = stdin.readLineSync()!;

  print("Enter Number Of Items:");
  numberOfItems = int.parse(stdin.readLineSync()!);

  List<String> itemNames = [];
  List<double> itemPrices = [];

  // Take item details
  for (int i = 0; i < numberOfItems; i++) {
    print("Enter Item Name for No. ${i + 1}:");
    String itemName = stdin.readLineSync()!;

    print("Enter Price of ${i + 1} No.:");
    double itemPrice = double.parse(stdin.readLineSync()!);

    itemNames.add(itemName);
    itemPrices.add(itemPrice);

    totalAmount += itemPrice;
  }

  // Print order details
  print("\n========== ORDER CONFIRMATION ==========");
  print("Order ID       : $orderId");
  print("Customer Name  : $customerName");
  print("Number of Items: $numberOfItems");

  for (int i = 0; i < numberOfItems; i++) {
    print("Item ${i + 1}      : ${itemNames[i]}");
    print("Price ${i + 1}     : Rs ${itemPrices[i]}");
  }

  print("Total Amount   : Rs ${totalAmount.toStringAsFixed(2)}");

  // Delivery tier
  if (totalAmount > 500) {
    print("Delivery Tier  : Express Delivery");
  } else {
    print("Delivery Tier  : Standard Delivery");
  }

  // Order status
  switch (statusCode) {
    case 1:
      print("Order Status   : Preparing");
      break;

    case 2:
      print("Order Status   : Out for Delivery");
      break;

    case 3:
      print("Order Status   : Delivered");
      break;

    default:
      print("Order Status   : Unknown");
  }

  print("========================================");
}

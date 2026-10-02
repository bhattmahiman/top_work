/*Create a Dart program called price_calculator.dart that takes the base price of a food item (for example, a burger)
 and calculates the total price after adding 12% GST. Print both the original price and the final price using string interpolation.*/
import 'dart:io';

void main() {
  double? price;

  print("Enter Price : ");

  price = double.parse(stdin.readLineSync()!);

  print("Befor adding GST : ${price}");

  double? total_price;

  total_price = price * (1 + 12 / 100);

  print("After add 12% GST total price is : ${total_price}");
}

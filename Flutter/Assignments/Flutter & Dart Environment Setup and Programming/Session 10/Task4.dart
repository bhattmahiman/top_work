import 'dart:io';

void main() {
  String username;
  int item_no;

  print("Enter Your user name : ");
  username = stdin.readLineSync()!;

  print("Enter Item Number of Cart : ");
  item_no = int.parse(stdin.readLineSync()!);

  print("Hii ${username} your cart has ${item_no} items");
}

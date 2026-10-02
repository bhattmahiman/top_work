import 'dart:io';

void getDeliveryCharge(int order_amt) {
  if (order_amt < 200) {
    int final_amt = order_amt + 50;

    print("Final Amount : $order_amt + 50 = $final_amt");
  } else if (order_amt > 200 && order_amt < 500) {
    int final_amt = order_amt + 20;

    print("Final amount is : $order_amt + 20 = $final_amt ");
  } else {
    print("Final amount is : $order_amt Free delivery");
  }
}

void main() {
  int? order_amt;

  print("Enter Order Ampunt : ");
  order_amt = int.parse(stdin.readLineSync()!);

  getDeliveryCharge(order_amt);
}

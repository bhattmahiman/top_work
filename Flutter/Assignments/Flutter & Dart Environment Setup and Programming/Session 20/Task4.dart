/* Simulate a Flipkart-style payment process in Dart: create a function processPayment() that randomly throws an exception to simulate payment failure. Use try-catch to display either 'Payment Successful' or 'Payment Failed: [error message]'.<br><br><em><strong>Constraint:</strong> Use Random().nextBool() to decide if the payment fails.</em> */

import 'dart:math';

void processPayment() {
  bool paymentFailed = Random().nextBool();

  if (paymentFailed) {
    throw Exception("Insufficient balance");
  }

  print("Payment Successful");
}

void main() {
  try {
    processPayment();
  } catch (e) {
    print("Payment Failed: ${e.toString().replaceFirst("Exception: ", "")}");
  }
}

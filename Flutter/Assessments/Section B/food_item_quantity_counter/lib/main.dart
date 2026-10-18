import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FoodItemScreen(),
    );
  }
}

class FoodItemScreen extends StatefulWidget {
  const FoodItemScreen({super.key});

  @override
  State<FoodItemScreen> createState() => _FoodItemScreenState();
}

class _FoodItemScreenState extends State<FoodItemScreen> {
  // Food item details
  String foodName = "Pizza";
  double unitPrice = 299.0;

  // Quantity starts from 0
  int quantity = 0;

  // Increase quantity
  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  // Decrease quantity
  void decreaseQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Calculate total price
    double totalPrice = quantity * unitPrice;

    return Scaffold(
      appBar: AppBar(title: const Text("Food Item")),

      body: Padding(
        padding: const EdgeInsets.all(24.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Food name
            Text(
              foodName,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            // Unit price
            Text(
              "Unit Price: Rs ${unitPrice.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 30),

            // Quantity label
            const Text("Quantity", style: TextStyle(fontSize: 20)),

            const SizedBox(height: 10),

            // Quantity counter
            Text(
              "$quantity",
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            // + and - buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: decreaseQuantity,
                  child: const Text("-", style: TextStyle(fontSize: 25)),
                ),

                const SizedBox(width: 20),

                ElevatedButton(
                  onPressed: increaseQuantity,
                  child: const Text("+", style: TextStyle(fontSize: 25)),
                ),
              ],
            ),

            const SizedBox(height: 40),

            // Total price
            Text(
              "Total Price: Rs ${totalPrice.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> items = [
    {"name": "Pizza", "quantity": 2, "price": 299.0},
    {"name": "Burger", "quantity": 1, "price": 199.0},
    {"name": "Pasta", "quantity": 2, "price": 249.0},
  ];

  String orderStatus = "Order Not Placed";

  double calculateTotal() {
    double total = 0;

    for (var item in items) {
      total += item["quantity"] * item["price"];
    }

    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Order")),

      body: items.isEmpty
          ? const Center(
              child: Text("Your cart is empty", style: TextStyle(fontSize: 20)),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];

                      return ListTile(
                        title: Text(item["name"]),
                        subtitle: Text("Quantity: ${item["quantity"]}"),
                        trailing: Text("Rs ${item["price"]}"),
                      );
                    },
                  ),
                ),

                Text(
                  "Total: Rs ${calculateTotal()}",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  orderStatus,
                  style: const TextStyle(fontSize: 18, color: Colors.green),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      orderStatus = "Order Placed ›";
                    });
                  },
                  child: const Text("Place Order"),
                ),
              ],
            ),
    );
  }
}

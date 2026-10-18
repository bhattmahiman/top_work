import 'package:flutter/material.dart';

import '../models/cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void removeItem(int index) {
    setState(() {
      Cart.removeItem(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    double total = Cart.getTotal();

    return Scaffold(
      appBar: AppBar(title: const Text("My Cart")),

      body: Cart.items.isEmpty
          ? const Center(
              child: Text("Your cart is empty", style: TextStyle(fontSize: 20)),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: Cart.items.length,

                    itemBuilder: (context, index) {
                      final item = Cart.items[index];

                      return Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),

                        child: ListTile(
                          leading: const Icon(
                            Icons.fastfood,
                            color: Colors.orange,
                          ),

                          title: Text(item.name),

                          subtitle: Text("Rs ${item.price.toStringAsFixed(2)}"),

                          trailing: IconButton(
                            onPressed: () {
                              removeItem(index);
                            },

                            icon: const Icon(Icons.delete, color: Colors.red),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(20),

                  child: Column(
                    children: [
                      Text(
                        "Total: Rs ${total.toStringAsFixed(2)}",

                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 15),

                      SizedBox(
                        width: double.infinity,

                        child: ElevatedButton(
                          onPressed: Cart.items.isEmpty
                              ? null
                              : () {
                                  Navigator.pushNamed(
                                    context,
                                    '/order-summary',
                                    arguments: total,
                                  );
                                },

                          child: const Text("Place Order"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

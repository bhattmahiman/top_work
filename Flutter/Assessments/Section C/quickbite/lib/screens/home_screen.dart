import 'package:flutter/material.dart';

import '../models/food_item.dart';
import '../models/cart.dart';
import '../widgets/food_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<FoodItem> foodItems = [
    FoodItem(name: "Pizza", price: 299, isAvailable: false),
    FoodItem(name: "Burger", price: 199, isAvailable: true),
    FoodItem(name: "Pasta", price: 249, isAvailable: true),
    FoodItem(name: "French Fries", price: 99, isAvailable: true),
  ];

  void addToCart(FoodItem item) {
    setState(() {
      Cart.addItem(item);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("${item.name} added to cart"),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("QuickBite")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Popular Food",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Expanded(
              child: ListView.builder(
                itemCount: foodItems.length,

                itemBuilder: (context, index) {
                  final food = foodItems[index];

                  return FoodCard(
                    food: food,

                    onAdd: () {
                      addToCart(food);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },

        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}

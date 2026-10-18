import 'package:flutter/material.dart';
import '../models/food_item.dart';

class FoodCard extends StatelessWidget {
  final FoodItem food;
  final VoidCallback onAdd;

  const FoodCard({super.key, required this.food, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),

      child: Padding(
        padding: const EdgeInsets.all(12),

        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,

              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(10),
              ),

              child: const Icon(Icons.fastfood, size: 40, color: Colors.orange),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text("Rs ${food.price.toStringAsFixed(2)}"),

                  const SizedBox(height: 5),

                  Text(
                    food.isAvailable ? "Available" : "Not Available",
                    style: TextStyle(
                      color: food.isAvailable ? Colors.green : Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            ElevatedButton(
              onPressed: food.isAvailable ? onAdd : null,
              child: const Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}

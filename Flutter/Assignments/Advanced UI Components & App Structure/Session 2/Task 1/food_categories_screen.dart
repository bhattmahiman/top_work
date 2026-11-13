import 'package:flutter/material.dart';

class FoodCategoriesScreen extends StatelessWidget {
  FoodCategoriesScreen({super.key});

  final List<Map<String, dynamic>> categories = [
    {'name': 'Pizza', 'icon': Icons.local_pizza},
    {'name': 'Biryani', 'icon': Icons.rice_bowl},
    {'name': 'Burger', 'icon': Icons.lunch_dining},
    {'name': 'Desserts', 'icon': Icons.icecream},
    {'name': 'Chinese', 'icon': Icons.ramen_dining},
    {'name': 'South Indian', 'icon': Icons.restaurant},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Categories'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),

        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.2,

          children: categories.map((category) {
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(category['icon'], size: 45, color: Colors.deepOrange),

                  const SizedBox(height: 10),

                  Text(
                    category['name'],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

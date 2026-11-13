import 'package:flutter/material.dart';
import 'category_card.dart';

class FoodCategoriesScreen extends StatelessWidget {
  FoodCategoriesScreen({super.key});

  final List<Map<String, String>> categories = [
    {
      'name': 'Pizza',
      'image': 'https://images.unsplash.com/photo-1513104890138-7c749659a591',
    },
    {
      'name': 'Biryani',
      'image': 'https://images.unsplash.com/photo-1563379091339-03246963d96c',
    },
    {
      'name': 'Burger',
      'image': 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd',
    },
    {
      'name': 'Desserts',
      'image': 'https://images.unsplash.com/photo-1551024506-0bccd828d307',
    },
    {
      'name': 'Chinese',
      'image': 'https://images.unsplash.com/photo-1585032226651-759b368d7246',
    },
    {
      'name': 'South Indian',
      'image': 'https://images.unsplash.com/photo-1630383249896-424e482df921',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount = screenWidth >= 600 ? 3 : 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Categories'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),

        child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.2,

          children: categories.map((category) {
            return CategoryCard(
              name: category['name']!,
              image: category['image']!,
            );
          }).toList(),
        ),
      ),
    );
  }
}

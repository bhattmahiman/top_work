import 'package:flutter/material.dart';

class FoodCategoriesScreen extends StatelessWidget {
  FoodCategoriesScreen({super.key});

  final List<Map<String, dynamic>> categories = [
    {'name': 'Pizza', 'image': 'https://images.unsplash.com/photo- pizza'},
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
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Circular food image
                  ClipOval(
                    child: Image.network(
                      category['image'],
                      width: 85,
                      height: 85,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.fastfood,
                          size: 85,
                          color: Colors.deepOrange,
                        );
                      },
                    ),
                  ),

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

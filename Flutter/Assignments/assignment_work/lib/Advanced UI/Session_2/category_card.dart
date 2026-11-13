import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String image;

  const CategoryCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Circular food image
          ClipOval(
            child: Image.network(
              image,
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

          // Category name
          Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

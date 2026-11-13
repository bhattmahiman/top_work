import 'package:flutter/material.dart';

class FoodListScreen extends StatelessWidget {
  FoodListScreen({super.key});

  final List<String> foods = [
    'Pizza',
    'Burger',
    'Dosa',
    'Biryani',
    'Pasta',
    'Sandwich',
    'Pav Bhaji',
    'Idli',
    'Noodles',
    'Paneer Tikka',
  ];

  // Show bottom sheet on long press

  void showFoodOptions(BuildContext context, String food) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (bottomSheetContext) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                food,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              ListTile(
                leading: const Icon(Icons.favorite, color: Colors.red),
                title: const Text('Add to Favourites'),
                onTap: () {
                  Navigator.pop(bottomSheetContext);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('$food added to Favourites')),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.share, color: Colors.blue),
                title: const Text('Share'),
                onTap: () {
                  Navigator.pop(bottomSheetContext);
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Sharing $food')));
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Menu'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          for (String food in foods)
            Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),

                // Single tap
                onTap: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('You selected $food')));
                },

                // Long press
                onLongPress: () {
                  showFoodOptions(context, food);
                },

                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.restaurant,
                        color: Colors.deepOrange,
                        size: 28,
                      ),
                      const SizedBox(width: 15),
                      Text(
                        food,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

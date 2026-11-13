import 'package:flutter/material.dart';
import '../models/service_model.dart';
import '../widgets/category_grid_item.dart';
import 'details_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  final List<ServiceModel> categories = const [
    ServiceModel(
      name: 'Food',
      description: 'Discover restaurants, food delivery and dining services.',
      icon: Icons.restaurant,
      image:
          'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=600',
    ),
    ServiceModel(
      name: 'Travel',
      description: 'Explore travel services, hotels and transportation.',
      icon: Icons.flight,
      image:
          'https://images.unsplash.com/photo-1488646953014-85cb44e25828?w=600',
    ),
    ServiceModel(
      name: 'Shopping',
      description: 'Explore online shopping and exciting products.',
      icon: Icons.shopping_bag,
      image:
          'https://images.unsplash.com/photo-1441986300917-64674bd600d8?w=600',
    ),
    ServiceModel(
      name: 'Entertainment',
      description: 'Enjoy movies, events, shows and entertainment.',
      icon: Icons.movie,
      image:
          'https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?w=600',
    ),
    ServiceModel(
      name: 'Payments',
      description: 'Manage payments, bills and mobile recharges.',
      icon: Icons.payment,
      image: 'https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?w=600',
    ),
    ServiceModel(
      name: 'Sports',
      description: 'Discover sports, cricket and fantasy gaming services.',
      icon: Icons.sports_cricket,
      image:
          'https://images.unsplash.com/photo-1531415074968-036ba1b575da?w=600',
    ),
  ];

  void openDetails(BuildContext context, ServiceModel category) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailsScreen(service: category)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore Categories',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final columns = constraints.maxWidth >= 600 ? 3 : 2;

            return GridView.builder(
              itemCount: categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (context, index) {
                final category = categories[index];

                return CategoryGridItem(
                  category: category,
                  onTap: () => openDetails(context, category),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

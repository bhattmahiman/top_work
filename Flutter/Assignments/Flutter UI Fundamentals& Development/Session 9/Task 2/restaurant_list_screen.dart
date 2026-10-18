import 'package:flutter/material.dart';
import 'widgets/restaurant_card.dart';

class RestaurantListScreen extends StatelessWidget {
  const RestaurantListScreen({super.key});

  // Dummy restaurant data
  final List<Map<String, dynamic>> restaurants = const [
    {'name': 'Pizza Paradise', 'cuisine': 'Italian, Pizza', 'rating': 4.5},
    {'name': 'Spice Garden', 'cuisine': 'Indian, North Indian', 'rating': 4.2},
    {'name': 'Burger Hub', 'cuisine': 'American, Burgers', 'rating': 4.7},
    {'name': 'Sushi World', 'cuisine': 'Japanese, Sushi', 'rating': 4.3},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];

          return RestaurantCard(
            restaurantName: restaurant['name'] as String,
            cuisine: restaurant['cuisine'] as String,
            rating: restaurant['rating'] as double,
          );
        },
      ),
    );
  }
}

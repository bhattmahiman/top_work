import 'package:flutter/material.dart';
import 'package:my_music_theme/widgets/restaurant_card.dart';
import 'package:my_music_theme/widgets/offer_banner.dart';

class FoodHomeScreen extends StatelessWidget {
  const FoodHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> restaurants = [
      {'name': 'Pizza Paradise', 'cuisine': 'Italian, Pizza', 'rating': 4.5},
      {
        'name': 'Spice Garden',
        'cuisine': 'Indian, North Indian',
        'rating': 4.2,
      },
      {'name': 'Burger Hub', 'cuisine': 'American, Burgers', 'rating': 4.7},
      {'name': 'Sushi World', 'cuisine': 'Japanese, Sushi', 'rating': 4.3},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Food Delivery')),

      body: ListView(
        children: [
          // Offer banner at the top
          const OfferBanner(
            imageUrl:
                'https://images.unsplash.com/photo-1504674900247-0877df9cc836',
            offerText: '50% OFF on Your First Order!',
          ),

          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Popular Restaurants',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          // Display all restaurants
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
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
        ],
      ),
    );
  }
}

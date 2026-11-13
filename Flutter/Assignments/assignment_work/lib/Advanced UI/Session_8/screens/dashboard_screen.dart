import 'package:flutter/material.dart';

import '../models/restaurant.dart';
import '../widgets/app_drawer.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/restaurant_card.dart';
import 'orders_screen.dart';
import 'profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;

  final List<Restaurant> restaurants = const [
    Restaurant(
      name: 'The Burger House',
      cuisine: 'Burgers, Fast Food',
      rating: 4.5,
      image:
          'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600',
    ),
    Restaurant(
      name: 'Pizza Paradise',
      cuisine: 'Pizza, Italian',
      rating: 4.3,
      image:
          'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600',
    ),
    Restaurant(
      name: 'Spice Garden',
      cuisine: 'Indian, North Indian',
      rating: 4.6,
      image: 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600',
    ),
    Restaurant(
      name: 'Sushi World',
      cuisine: 'Japanese, Sushi',
      rating: 4.4,
      image:
          'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=600',
    ),
    Restaurant(
      name: 'Cafe Coffee',
      cuisine: 'Cafe, Beverages',
      rating: 4.2,
      image:
          'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=600',
    ),
    Restaurant(
      name: 'Sweet Treats',
      cuisine: 'Desserts, Bakery',
      rating: 4.7,
      image: 'https://images.unsplash.com/photo-1551024506-0bccd828d307?w=600',
    ),
  ];

  final List<Widget> screens = const [
    SizedBox.shrink(),
    OrdersScreen(),
    ProfileScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Foodie',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),

      // Side drawer
      drawer: const AppDrawer(),

      // Main content changes with bottom navigation
      body: selectedIndex == 0 ? buildHomeContent() : screens[selectedIndex],

      // Bottom navigation
      bottomNavigationBar: BottomNavBar(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }

  Widget buildHomeContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover delicious food!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Trending restaurants near you',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),

        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Keep two columns in portrait and landscape.
              // Limit grid width on larger screens.
              final gridWidth = constraints.maxWidth > 900
                  ? 900.0
                  : constraints.maxWidth;

              return Center(
                child: SizedBox(
                  width: gridWidth,
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: const EdgeInsets.all(12),
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: constraints.maxWidth > 600 ? 1.05 : 0.82,
                    children: restaurants.map((restaurant) {
                      return RestaurantCard(restaurant: restaurant);
                    }).toList(),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

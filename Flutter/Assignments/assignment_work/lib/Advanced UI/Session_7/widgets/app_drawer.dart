import 'package:flutter/material.dart';
import '../screens/orders_screen.dart';
import '../screens/favourites_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Profile Header
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),

            accountName: const Text(
              'Mahiman',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            accountEmail: const Text('mahiman@example.com'),

            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 40, color: Color(0xFF6A11CB)),
            ),
          ),

          // My Orders
          ListTile(
            leading: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.deepPurple,
            ),
            title: const Text('My Orders'),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OrdersScreen()),
              );
            },
          ),

          // Favourites
          ListTile(
            leading: const Icon(Icons.favorite_border, color: Colors.red),
            title: const Text('Favourites'),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavouritesScreen(),
                ),
              );
            },
          ),

          const Divider(),

          // Logout
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context);

              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Logout clicked!')));
            },
          ),

          const Spacer(),

          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Version 1.0.0',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

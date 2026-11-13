import 'package:flutter/material.dart';
import '../screens/placeholder_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void openScreen(BuildContext context, String title) {
    Navigator.pop(context);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PlaceholderScreen(title: title)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFF5722), Color(0xFFFF9800)],
              ),
            ),
            accountName: const Text(
              'Foodie User',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: const Text('foodie@example.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Colors.deepOrange, size: 40),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.account_balance_wallet_outlined),
            title: const Text('My Wallet'),
            onTap: () => openScreen(context, 'My Wallet'),
          ),

          ListTile(
            leading: const Icon(Icons.local_offer_outlined),
            title: const Text('Offers'),
            onTap: () => openScreen(context, 'Offers'),
          ),

          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: () => openScreen(context, 'Settings'),
          ),
        ],
      ),
    );
  }
}

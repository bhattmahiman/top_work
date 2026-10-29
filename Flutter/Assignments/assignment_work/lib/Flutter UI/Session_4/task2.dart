import 'package:flutter/material.dart';

class ZomatoStyleMenu extends StatelessWidget {
  const ZomatoStyleMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, size: 36, color: Colors.red),
              Text("Home", style: TextStyle(fontSize: 20)),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.fastfood, size: 36, color: Colors.red),
              Text("Order", style: TextStyle(fontSize: 20)),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.local_offer, size: 36, color: Colors.red),
              Text("Offers", style: TextStyle(fontSize: 20)),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.person, size: 36, color: Colors.red),
              Text("Profile", style: TextStyle(fontSize: 20)),
            ],
          ),
        ],
      ),
    );
  }
}

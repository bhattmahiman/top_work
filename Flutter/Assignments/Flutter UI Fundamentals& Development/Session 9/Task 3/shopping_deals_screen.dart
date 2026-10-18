import 'package:flutter/material.dart';
import 'widgets/offer_banner.dart';

class ShoppingDealsScreen extends StatelessWidget {
  const ShoppingDealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shopping Deals')),
      body: ListView(
        children: const [
          OfferBanner(
            imageUrl:
                'https://images.unsplash.com/photo-1441986300917-64674bd600d8',
            offerText: 'Big Shopping Sale - Up to 70% OFF!',
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Trending Deals',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({super.key});

  final List<Map<String, dynamic>> products = [
    // Electronics
    {'name': 'Samsung Galaxy M15', 'price': 13999, 'category': 'Electronics'},
    {'name': 'iPhone 15', 'price': 59999, 'category': 'Electronics'},
    {
      'name': 'Boat Wireless Headphones',
      'price': 1999,
      'category': 'Electronics',
    },

    // Fashion
    {'name': 'Men Casual T-Shirt', 'price': 499, 'category': 'Fashion'},
    {'name': 'Women Denim Jeans', 'price': 999, 'category': 'Fashion'},
    {'name': 'Running Shoes', 'price': 1499, 'category': 'Fashion'},

    // Home Appliances
    {
      'name': 'LG Washing Machine',
      'price': 18999,
      'category': 'Home Appliances',
    },
    {
      'name': 'Philips Mixer Grinder',
      'price': 2499,
      'category': 'Home Appliances',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flipkart Products'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView.separated(
        padding: const EdgeInsets.all(12),

        itemCount: products.length,

        // Build product cards
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            elevation: 2,
            child: ListTile(
              title: Text(
                product['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '₹${product['price']}',
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(Icons.shopping_cart, color: Colors.blue),
            ),
          );
        },

        // Insert category headings and dividers
        separatorBuilder: (context, index) {
          final currentCategory = products[index]['category'];

          final nextCategory = products[index + 1]['category'];

          if (currentCategory != nextCategory) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),

                Divider(color: Colors.blue, thickness: 3),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 8,
                  ),
                  child: Text(
                    nextCategory,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            );
          }

          return const Divider(thickness: 0.5, color: Colors.grey);
        },
      ),
    );
  }
}

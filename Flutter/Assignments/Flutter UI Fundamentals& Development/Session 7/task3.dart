import 'package:flutter/material.dart';

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Wireless Headphones',
      'price': '₹1,499',
      'icon': Icons.headphones,
    },
    {'name': 'Smart Watch', 'price': '₹2,999', 'icon': Icons.watch},
    {'name': 'Bluetooth Speaker', 'price': '₹999', 'icon': Icons.speaker},
    {'name': 'Gaming Mouse', 'price': '₹799', 'icon': Icons.mouse},
    {'name': 'Keyboard', 'price': '₹1,299', 'icon': Icons.keyboard},
    {'name': 'Mobile Phone', 'price': '₹14,999', 'icon': Icons.phone_android},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flipkart Products'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Adapt the number of columns to the available width
          int columns;

          if (constraints.maxWidth >= 900) {
            columns = 4; // Large tablet or desktop
          } else if (constraints.maxWidth >= 600) {
            columns = 3; // Tablet
          } else {
            columns = 2; // Mobile
          }

          return GridView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) {
              final product = products[index];

              return Card(
                elevation: 3,
                clipBehavior: Clip.antiAlias,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product image takes available space
                      Expanded(
                        child: Center(
                          child: Icon(
                            product['icon'] as IconData,
                            size: 60,
                            color: Colors.blue,
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),

                      // Product name adapts to available space
                      Flexible(
                        child: Text(
                          product['name'] as String,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(height: 5),

                      // Product price
                      Text(
                        product['price'] as String,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

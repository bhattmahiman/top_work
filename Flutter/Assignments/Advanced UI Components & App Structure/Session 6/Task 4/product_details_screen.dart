import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,

        // App Bar
        appBar: AppBar(
          backgroundColor: const Color(0xFF2874F0),
          foregroundColor: Colors.white,
          title: const Text(
            'Product Details',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.shopping_cart_outlined),
            SizedBox(width: 15),
          ],
        ),

        body: Column(
          children: [
            // Product Information
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Image Placeholder
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey.shade100,
                    child: Image.network(
                      "https://m.media-amazon.com/images/I/71tDWJ3ZHaL.jpg",
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'Samsung Galaxy Smartphone',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Row(
                          children: [
                            Text('4.5 ', style: TextStyle(color: Colors.white)),
                            Icon(Icons.star, size: 14, color: Colors.white),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '1,250 Ratings & 120 Reviews',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  const Row(
                    children: [
                      Text(
                        '₹24,999',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '₹29,999',
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '16% off',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Divider(height: 1),

            // Tabs
            const TabBar(
              labelColor: Color(0xFF2874F0),
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color(0xFF2874F0),
              indicatorWeight: 3,
              tabs: [
                Tab(text: 'Description'),
                Tab(text: 'Reviews'),
                Tab(text: 'Q&A'),
              ],
            ),

            // Tab Content
            Expanded(
              child: TabBarView(
                children: [
                  // Description Tab
                  SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product Description',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Experience powerful performance with this '
                          'Samsung Galaxy Smartphone. It comes with a '
                          'high-quality display, powerful processor, '
                          'long-lasting battery, and an advanced camera '
                          'system.',
                          style: TextStyle(fontSize: 15, height: 1.6),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Key Features',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('• 6.5-inch Full HD Display'),
                        Text('• 128GB Internal Storage'),
                        Text('• 8GB RAM'),
                        Text('• 5000mAh Battery'),
                        Text('• High-resolution Camera'),
                      ],
                    ),
                  ),

                  // Reviews Tab
                  ListView(
                    padding: const EdgeInsets.all(16),
                    children: const [
                      Text(
                        'Customer Reviews',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      ListTile(
                        leading: CircleAvatar(child: Text('A')),
                        title: Text('Amazing Product!'),
                        subtitle: Text(
                          'Great performance and excellent camera quality.',
                        ),
                        trailing: Icon(Icons.star, color: Colors.orange),
                      ),
                      Divider(),
                      ListTile(
                        leading: CircleAvatar(child: Text('R')),
                        title: Text('Good Value for Money'),
                        subtitle: Text(
                          'Battery backup is really good. Worth buying!',
                        ),
                        trailing: Icon(Icons.star, color: Colors.orange),
                      ),
                    ],
                  ),

                  // Q&A Tab
                  ListView(
                    padding: const EdgeInsets.all(16),
                    children: const [
                      Text(
                        'Questions & Answers',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      ListTile(
                        leading: Icon(Icons.help_outline),
                        title: Text('Does this phone support 5G?'),
                        subtitle: Text(
                          'Yes, this model supports 5G connectivity.',
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.help_outline),
                        title: Text('Is a charger included?'),
                        subtitle: Text(
                          'Please check the product box contents '
                          'for charger availability.',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

        // Bottom Buttons
        bottomNavigationBar: Container(
          height: 99,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.2),
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('ADD TO CART'),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF9F00),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text('BUY NOW'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

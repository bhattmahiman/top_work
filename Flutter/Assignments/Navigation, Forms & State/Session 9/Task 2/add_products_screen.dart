import 'package:flutter/material.dart';
import 'package:my_music_theme/session_9/cart_provider.dart';
import 'package:my_music_theme/session_9/view_cart_screen.dart';
import 'package:provider/provider.dart';

class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({super.key});

  final List<String> availableProducts = const [
    'Laptop',
    'Smartphone',
    'Headphones',
    'Smart Watch',
    'Keyboard',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        actions: [
          Consumer<CartProvider>(
            builder: (context, cart, child) {
              return IconButton(
                icon: Badge(
                  label: Text('${cart.products.length}'),
                  child: const Icon(Icons.shopping_cart),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ViewCartScreen()),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: availableProducts.length,
        itemBuilder: (context, index) {
          final product = availableProducts[index];

          return Card(
            child: ListTile(
              leading: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.deepPurple,
              ),
              title: Text(product),
              trailing: ElevatedButton(
                onPressed: () {
                  context.read<CartProvider>().addProduct(product);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$product added to cart'),
                      duration: const Duration(seconds: 1),
                    ),
                  );
                },
                child: const Text('Add to Cart'),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ViewCartScreen()),
          );
        },
        icon: const Icon(Icons.shopping_cart),
        label: const Text('View Cart'),
      ),
    );
  }
}

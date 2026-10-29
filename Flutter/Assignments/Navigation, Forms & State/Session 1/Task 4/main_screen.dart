// import 'package:assignment_work/Navigation/Session_1/cart_screen.dart';
import 'package:assignment_work/Navigation/Session_1/product_detail_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> products = [
    'Samsung Galaxy Smartphone',
    'Apple iPhone',
    'HP Laptop',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(title: Text("Main Screen")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.lightBlue[900],
              leading: Icon(Icons.shopping_bag, color: Colors.white),
              title: Text(
                products[index],
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailScreen(productName: products[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

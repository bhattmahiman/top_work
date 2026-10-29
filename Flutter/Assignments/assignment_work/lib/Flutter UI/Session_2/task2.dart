import 'package:flutter/material.dart';

class FlipkartWidget extends StatelessWidget {
  const FlipkartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 700,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/iPhone_18_Pro_Max.jpg',
              height: 500,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'iPhone 18 Pro Max',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        '₹2,00,000',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.red,
                    size: 36,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Item added Successfully !!",
                        style: TextStyle(color: Colors.black),
                      ),
                      backgroundColor: const Color.fromARGB(255, 150, 197, 235),
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                icon: Icon(Icons.shopping_cart),
                label: Text('Add to Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

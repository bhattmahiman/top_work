import 'package:flutter/material.dart';

void main() {
  // Task 1
  // String is appropriate because the food name is text.
  String favoriteFood = 'Pizza';

  // double is appropriate because the price can contain decimals.
  double foodPrice = 299.50;

  // bool is appropriate because vegetarian has only true/false values.
  bool isVegetarian = true;

  print('Favorite Food: $favoriteFood');
  print('Food Price: $foodPrice');
  print('Vegetarian: $isVegetarian');

  // Task 2
  // String is appropriate because the product name is text.
  String productName = 'iPhone 13';

  // double is appropriate because the product price can contain decimals.
  double productPrice = 69999.0;

  // bool is appropriate because stock status is true or false.
  bool isInStock = true;

  print(
    'Product: $productName, '
    'Price: $productPrice, '
    'In Stock: $isInStock',
  );

  // Task 3
  // int is appropriate because followers are counted as whole numbers.
  int followers = 1500;

  // int is appropriate because following is also a whole-number count.
  int following = 750;

  int difference = followers - following;

  print('Followers: $followers');
  print('Following: $following');
  print('Difference: $difference');

  // Task 4
  UserProfile user = UserProfile(
    name: 'Mahiman',
    age: 21,
    email: 'mahiman@example.com',
  );

  print('User Name: ${user.name}');
  print('User Age: ${user.age}');
  print('User Email: ${user.email}');

  runApp(const MyApp());
}

// Task 4
class UserProfile {
  // String is appropriate because name contains text.
  String name;

  // int is appropriate because age is a whole number.
  int age;

  // String is appropriate because an email address is text.
  String email;

  UserProfile({required this.name, required this.age, required this.email});
}

// Simple Flutter UI
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Session 9',
      home: Scaffold(
        appBar: AppBar(title: const Text('Session 9 - Variables')),
        body: const Center(
          child: Text(
            'Check the Debug Console',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

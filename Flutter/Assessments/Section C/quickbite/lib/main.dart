import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/order_summary_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "QuickBite",

      theme: ThemeData(
        primarySwatch: Colors.orange,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),

        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 16)),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
          ),
        ),
      ),

      initialRoute: '/',

      routes: {
        '/': (context) => const HomeScreen(),
        '/cart': (context) => const CartScreen(),
      },

      onGenerateRoute: (settings) {
        if (settings.name == '/order-summary') {
          final double total = settings.arguments as double;

          return MaterialPageRoute(
            builder: (context) {
              return OrderSummaryScreen(total: total);
            },
          );
        }

        return null;
      },
    );
  }
}

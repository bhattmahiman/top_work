import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<String> _products = [];

  List<String> get products => List.unmodifiable(_products);

  void addProduct(String productName) {
    if (productName.trim().isEmpty) return;

    _products.add(productName.trim());
    notifyListeners();
  }

  void removeProduct(int index) {
    if (index >= 0 && index < _products.length) {
      _products.removeAt(index);
      notifyListeners();
    }
  }
}

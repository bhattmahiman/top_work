import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:food_item_app/main.dart';

void main() {
  testWidgets('shows ordered items and calculates the total', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Margherita Pizza'), findsOneWidget);
    expect(find.text('Quantity: 2  •  Unit price: \$12.50'), findsOneWidget);
    expect(find.text('Total: \$39.25'), findsOneWidget);
  });

  testWidgets('updates the order status when placing an order', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Place Order'));
    await tester.pump();

    expect(find.text('Order Placed ›'), findsOneWidget);
  });

  testWidgets('shows an empty-cart message when there are no items', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: MyHomePage(items: [])));

    expect(find.text('Your cart is empty'), findsOneWidget);
    expect(find.byType(ListView), findsNothing);
  });
}

import 'package:flutter/material.dart';

class RestaurantSearchScreen extends StatefulWidget {
  const RestaurantSearchScreen({super.key});

  @override
  State<RestaurantSearchScreen> createState() => _RestaurantSearchScreenState();
}

class _RestaurantSearchScreenState extends State<RestaurantSearchScreen> {
  // Manage search input and keyboard focus
  final TextEditingController _searchController = TextEditingController();

  final FocusNode _searchFocusNode = FocusNode();

  final List<String> _restaurants = [
    'Dominos Pizza',
    'Burger King',
    'Subway',
    'Haldirams',
    'Pizza Hut',
    'McDonalds',
    'Honest Restaurant',
    'The Belgian Waffle Co.',
  ];

  String _searchQuery = '';

  List<String> get _filteredRestaurants {
    return _restaurants.where((restaurant) {
      return restaurant.toLowerCase().contains(
        _searchQuery.trim().toLowerCase(),
      );
    }).toList();
  }

  void _clearSearch() {
    _searchController.clear();

    setState(() {
      _searchQuery = '';
    });

    _searchFocusNode.requestFocus();
  }

  @override
  void dispose() {
    // Release resources to prevent memory leaks
    _searchController.dispose();
    _searchFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final results = _filteredRestaurants;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Zomato',
          style: TextStyle(
            color: Color(0xFFE23744),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              focusNode: _searchFocusNode,
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search for restaurants...',
                prefixIcon: const Icon(Icons.search, color: Color(0xFFE23744)),
                suffixIcon: _searchQuery.isNotEmpty
                    ? IconButton(
                        onPressed: _clearSearch,
                        icon: const Icon(Icons.clear),
                      )
                    : null,
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: results.isEmpty
                  ? const Center(child: Text('No restaurants found'))
                  : ListView.builder(
                      itemCount: results.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundColor: Color(0xFFFFE5E7),
                              child: Icon(
                                Icons.restaurant,
                                color: Color(0xFFE23744),
                              ),
                            ),
                            title: Text(results[index]),
                            subtitle: const Text(
                              'Restaurant · Food and dining',
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

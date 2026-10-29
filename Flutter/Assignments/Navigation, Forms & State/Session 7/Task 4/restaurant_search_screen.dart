import 'package:flutter/material.dart';

class RestaurantSearchScreen extends StatefulWidget {
  const RestaurantSearchScreen({super.key});

  @override
  State<RestaurantSearchScreen> createState() => _RestaurantSearchScreenState();
}

class _RestaurantSearchScreenState extends State<RestaurantSearchScreen> {
  final TextEditingController searchController = TextEditingController();

  // Hardcoded restaurant names
  final List<String> restaurants = [
    'Dominos Pizza',
    'Burger King',
    'Subway',
    'Haldirams',
    'Pizza Hut',
    'McDonalds',
    'The Belgian Waffle Co.',
    'Honest Restaurant',
  ];

  String searchText = '';

  // Filter restaurants based on search text
  List<String> get filteredRestaurants {
    return restaurants.where((restaurant) {
      return restaurant.toLowerCase().contains(searchText.trim().toLowerCase());
    }).toList();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredList = filteredRestaurants;

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
            // Search bar
            TextField(
              controller: searchController,
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search for restaurants...',
                prefixIcon: const Icon(Icons.search, color: Color(0xFFE23744)),
                suffixIcon: searchText.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          searchController.clear();
                          setState(() {
                            searchText = '';
                          });
                        },
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

            // Restaurant list
            Expanded(
              child: filteredList.isEmpty
                  ? const Center(
                      child: Text(
                        'No restaurants found',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    )
                  : ListView.builder(
                      itemCount: filteredList.length,
                      itemBuilder: (context, index) {
                        final restaurant = filteredList[index];

                        return Card(
                          elevation: 1,
                          margin: const EdgeInsets.only(bottom: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundColor: Color(0xFFFFE5E7),
                              child: Icon(
                                Icons.restaurant,
                                color: Color(0xFFE23744),
                              ),
                            ),
                            title: Text(
                              restaurant,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: const Text(
                              'Restaurant · Food and dining',
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
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

import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({super.key});

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();

    // Initialize the controller
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    // Dispose of the controller to prevent memory leaks
    searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Example'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SearchBar(
          controller: searchController,
          hintText: 'Search here...',
          leading: const Icon(Icons.search),
          trailing: [
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                searchController.clear();
              },
            ),
          ],
          onChanged: (value) {
            debugPrint('Search text: $value');
          },
        ),
      ),
    );
  }
}

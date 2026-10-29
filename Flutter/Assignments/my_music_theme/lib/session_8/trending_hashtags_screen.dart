import 'package:flutter/material.dart';

class TrendingHashtagsScreen extends StatefulWidget {
  const TrendingHashtagsScreen({super.key});

  @override
  State<TrendingHashtagsScreen> createState() => _TrendingHashtagsScreenState();
}

class _TrendingHashtagsScreenState extends State<TrendingHashtagsScreen> {
  List<String> trendingHashtags = [];

  @override
  void initState() {
    super.initState();

    // Fetch hardcoded trending hashtags on initialization
    fetchTrendingHashtags();
  }

  void fetchTrendingHashtags() {
    trendingHashtags = [
      '#Flutter',
      '#Dart',
      '#Coding',
      '#Technology',
      '#Travel',
      '#Foodie',
      '#Music',
      '#Photography',
      '#Gaming',
      '#Trending',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trending Hashtags'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: trendingHashtags.length,
        itemBuilder: (context, index) {
          final hashtag = trendingHashtags[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: const Icon(Icons.tag, color: Colors.deepPurple),
              title: Text(
                hashtag,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: const Icon(Icons.trending_up),
            ),
          );
        },
      ),
    );
  }
}

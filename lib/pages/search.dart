import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _allProducts = [
    "Apple iPhone 13",
    "Samsung Galaxy S21",
    "Google Pixel 6",
    "Sony WH-1000XM4",
    "Apple MacBook Pro",
    "Dell XPS 13",
  ];
  List<String> _searchResults = [];

  @override
  void initState() {
    super.initState();
    _searchResults = _allProducts;
  }

  void _filterSearchResults(String query) {
    setState(() {
      _searchResults = _allProducts
          .where((product) => product.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Products'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onChanged: _filterSearchResults,
              decoration: InputDecoration(
                hintText: 'Search for products...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_searchResults[index]),
                    onTap: () {
                      // Handle tap on product item
                      // e.g., Navigate to product details page
                    },
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

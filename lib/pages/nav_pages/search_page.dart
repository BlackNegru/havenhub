import 'package:flutter/material.dart';
import 'package:havenhub/misc/colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";
  List<String> _results = [];

  @override
  void initState() {
    super.initState();
    // Initialize with some sample data
    _results = List.generate(20, (index) => 'Item $index');
  }

  void _performSearch(String query) {
    // Implement your search logic here. For demonstration, we're filtering sample data.
    setState(() {
      _searchQuery = query;
      _results = List.generate(20, (index) => 'Item $index').where((item) {
        return item.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        backgroundColor: AppColors.mainColor,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _performSearch,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Optional Filters
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement filter logic here
                  },
                  child: Text('Filters'),
                  style: ElevatedButton.styleFrom(
                  ),
                ),
                Text(
                  'Showing ${_results.length} results',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          // Search Results
          Expanded(
            child: ListView.builder(
              itemCount: _results.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  elevation: 5,
                  child: ListTile(
                    title: Text(_results[index]),
                    onTap: () {
                      // Handle item tap
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Tapped on ${_results[index]}')),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

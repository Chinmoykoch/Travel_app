import 'package:flutter/material.dart';

class EventHappenings extends StatefulWidget {
  @override
  _EventHappeningsState createState() => _EventHappeningsState();
}

class _EventHappeningsState extends State<EventHappenings> {
  List<String> previousSearch = [];
  final TextEditingController searchController = TextEditingController();

  void _addToPreviousSearch(String query) {
    if (query.isNotEmpty && !previousSearch.contains(query)) {
      setState(() {
        previousSearch.add(query);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Bar with List"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                prefixIcon: Icon(Icons.search),
                suffixIcon: searchController.text.isEmpty
                    ? null
                    : IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          searchController.clear();
                          setState(() {});
                        },
                      ),
              ),
              onChanged: (query) {
                _addToPreviousSearch(query);
              },
            ),
          ),
          // Use Expanded properly here
          Expanded(
            child: ListView.builder(
              itemCount: previousSearch.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(previousSearch[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.cancel),
                    onPressed: () {
                      setState(() {
                        previousSearch.removeAt(index);
                      });
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

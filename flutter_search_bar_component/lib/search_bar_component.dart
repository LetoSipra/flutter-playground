import 'package:flutter/material.dart';
import 'package:flutter_components/data.dart';

class SearchBarComponent extends StatefulWidget {
  const SearchBarComponent({super.key});

  @override
  State<SearchBarComponent> createState() => _SearchBarComponentState();
}

class _SearchBarComponentState extends State<SearchBarComponent> {
  List<String> filteredData = [];

  searchResults(String query) {
    query.length >= 3
        ? setState(
            () {
              filteredData = data
                  .where(
                    (item) => item.toLowerCase().contains(
                          query.toLowerCase(),
                        ),
                  )
                  .toList();
            },
          )
        : setState(
            () {
              filteredData.clear();
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            onChanged: (value) => searchResults(value),
            decoration: InputDecoration(
                hintText: 'Search Countries',
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(15),
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                )),
          ),
        ),
        body: ListView.builder(
            itemCount: filteredData.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(filteredData[index]),
              );
            }));
  }
}

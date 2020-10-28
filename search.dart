import 'package:flutter/material.dart';
import './home.dart';

class Search extends StatelessWidget {
  Search();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 35,
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: 20),
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      onPressed: () {
        showSearch(context: context, delegate: DataSearch());
      },
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final items = [
    'sneakers',
    'polos',
    'jackets',
    'belts',
    'tee shirts',
    'loafers',
    'purses',
    'slippers',
    'high heels',
    'sweaters',
    'coats',
    'pants',
  ];

  final recentItems = [
    'slippers',
    'loafers',
    'sneakers',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = ' ';
          }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
        //Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/SearchPage',
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentItems
        : items.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.shopping_bag),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffC99F92),
        title: Text(
          'Search Results',
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'Oxygen',
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}

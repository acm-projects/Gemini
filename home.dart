import 'package:flutter/material.dart';
import './settings.dart';
import './search.dart';
import './suggested.dart';
import './cart.dart';
import './item.dart';

void home() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/SettingsPage': (context) => SettingsPage(),
        '/CartPage': (context) => CartPage(),
        '/ItemPage': (context) => ItemPage(),
        '/SuggestedPage': (context) => SuggestedPage(),
        '/SearchPage': (context) => SearchPage(),
        '/SettingsButton': (context) => SettingsButton(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: Settings(),
        actions: [
          Cart(),
          Search(),
        ],
        title: Text(
          'Home',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Suggested('Recommended'),
          Suggested('Popular'),
          Suggested('Recently Viewed'),
        ],
      ),
    );
  }
}

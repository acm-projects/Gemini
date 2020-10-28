import 'package:flutter/material.dart';
import 'package:gemini_app/nav_bar.dart';
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
        '/Home' : (context) => HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xffF4E4D6),
      appBar: AppBar(
        centerTitle: true,
        leading: Settings(),
        actions: [
          Cart(),
          Search(),
        ],
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Oxygen',
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xffC99F92),
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Suggested>[
                  Suggested('Recommended'),
                  Suggested('Popular'),
                  Suggested('Recently Viewed'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


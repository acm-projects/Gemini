import 'package:flutter/material.dart';
import 'package:gemini_app/main.dart';
import 'package:gemini_app/nav_bar.dart';
import 'package:gemini_app/register_page.dart';
import './settings.dart';
import './cart.dart';
import './item.dart';
import './home.dart';
import './camera_page.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _tabs= <Widget>[
    HomeScreen(),
    Login(),
    MyCam(),
    RegisterPage(),
    SettingsPage(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _tabs.elementAt(_selectedIndex)),
     bottomNavigationBar:  BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      iconSize: 30,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.white),
          title: Text('Home'),
          backgroundColor: Color(0xffC99F93),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.circle,color: Colors.white),
          title: Text('Public'),
          backgroundColor: Color(0xffC99F93),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt,color: Colors.white),
          title: Text('Camera'),
          backgroundColor: Color(0xffC99F93),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.saved_search, color: Colors.white),
          title: Text('Saved'),
          backgroundColor: Color(0xffC99F93),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.verified_user, color: Colors.white),
          title: Text('Profile'),
          backgroundColor: Color(0xffC99F93),
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
    ),
    );
  }
}


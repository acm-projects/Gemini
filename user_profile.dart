import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'item.dart';
import 'settings.dart';
import 'cart.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xffF4E4D6),
      appBar: AppBar(
        centerTitle: true,
        leading: Settings(),
        actions: [
          Cart(),
        ],
        title: Text(
          'Your Profile',
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Icon(
                          Icons.account_circle,
                          color: Color(0xff86466C),
                          size: 150,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Text(
                        'Your Name',
                        style: TextStyle(
                          fontSize: 23,
                          fontFamily: 'Oxygen',
                        )
                    ),
                  ),
                  Container(
                    color: Color(0xffefd7c3),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Item(),
                              Item(),
                              Item(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Item(),
                              Item(),
                              Item(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Item(),
                              Item(),
                              Item(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
            ),
            ),
          ),
        ],
      ),
    );
  }
}

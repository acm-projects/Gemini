import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gemini_app/category_saved.dart';
import 'cart.dart';
import 'settings.dart';
import 'item.dart';

class Saved extends StatefulWidget {
  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
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
          'Saved',
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 10, left: 10),
                      child: Text(
                          'Your saved collections...',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'Oxygen',
                          )
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Color(0xffC99F92),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Category(),
                            Category(),
                            Category(),
                            Category(),
                            Category(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 10, left: 10),
                      child: Text(
                          'Saved items...',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'Oxygen',
                          )
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xffefd7c3),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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

import 'package:flutter/material.dart';
import './home.dart';
import './suggested.dart';

class Item extends StatelessWidget {
  Item();

  void detail() {
    print('open item detail page');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 3.3),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      height: 125.0,
      width: 107,
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/ItemPage');
        },
      ),
    );
  }
}

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Item Details',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
    );
  }
}

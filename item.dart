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
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 3.3),
      decoration: BoxDecoration(
        border: Border.all(
            width: 0, style: BorderStyle.none,
        ),
      ),
      height: 125.0,
      width: 107,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Color(0xffF4E4D6),
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
      backgroundColor: Color(0xffF4E4D6),
      appBar: AppBar(
        backgroundColor: Color(0xffC99F92),
        title: Text(
          'Item Details',
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
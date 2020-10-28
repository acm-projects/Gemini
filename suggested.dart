import 'package:flutter/material.dart';
import './home.dart';
import './item.dart';

class Suggested extends StatelessWidget {
  final String category;

  Suggested(this.category);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey[100],
        height: 170.0,
        width: 350.0,
        margin: EdgeInsets.only(top: 12),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(top: 10),
                  color: Color(0xff5E314C),
                  textColor: Colors.white,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      category,
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontFamily: 'Oxygen',
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/SuggestedPage');
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Item(),
                  Item(),
                  Item(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuggestedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4E4D6),
      appBar: AppBar(
        backgroundColor: Color(0xffC99F92),
        title: Text(
          'Suggested',
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

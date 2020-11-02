import 'package:flutter/material.dart';
import './home.dart';
import './suggested.dart';

class Category extends StatelessWidget {
  Category();

  void detail() {
    print('open category page');
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
      height: 120,
      width: 120,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              color: Color(0xffF4E4D6),
              onPressed: () {
                Navigator.pushNamed(context, '/ItemPage');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Text(
                'Name',
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Oxygen',
                  color: Colors.white,
                )
            ),
          ),
        ],
      ),
    );
  }
}
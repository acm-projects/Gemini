import 'package:flutter/material.dart';
import './home.dart';
import './suggested.dart';
import 'item.dart';

class Category extends StatelessWidget {
  Category();

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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              color: Color(0xffF4E4D6),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => CategoryPage()) );
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

  class CategoryPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Color(0xffF4E4D6),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: (){}
          ),
        ],
      backgroundColor: Color(0xffC99F92),
      title: Text(
      'Category',
      style: TextStyle(
      fontSize: 25,
      fontFamily: 'Oxygen',
       ),
      ),
      centerTitle: true,
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Container(
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
                )
              ),
          ),
        ),
    );
    }
  }

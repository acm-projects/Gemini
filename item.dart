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
      width: 118,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Color(0xffF4E4D6),
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(builder: (context) => ItemPage()) );
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 200.0, bottom: 5),
                    child: Text(
                        'name',
                      style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 30,
                      )
                    ),
                  ),
                  Text(
                      'price',
                      style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 20,
                      )
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: 350,
                    child: Container(
                      color: Colors.white,
                    )
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 13, left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Oxygen',
                            )
                          ),
                      ],
                    )
                  )
                ],
              )
            ],
          ),
        )
      )
    );
  }
}

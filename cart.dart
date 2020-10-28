import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  Cart();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 35,
      alignment: Alignment.centerLeft,
      //padding: EdgeInsets.symmetric(horizontal: 10),
      icon: Icon(
        Icons.shopping_cart,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/CartPage');
      },
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4E4D6),
      appBar: AppBar(
        backgroundColor: Color(0xffC99F92),
        title: Text(
          'Cart',
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'Oxygen',
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          CartItems(),
        ]),
      ),
    );
  }
}

class CartItems extends StatelessWidget {
  CartItems();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffFFF9F3),
        ),
        color: Color(0xffFFF9F3),
      ),
      child: Row(
        children: [
          FlatButton(
            child: Text(
                'Item Name',
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 17,
                  color: Color(0xff5E314C),
                )
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/ItemPage');
            },
          ),
        ],
      ),
    );
  }
}

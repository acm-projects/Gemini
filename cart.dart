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
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Cart',
          style: TextStyle(fontSize: 25),
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
          color: Colors.black,
        ),
      ),
      child: Row(
        children: [
          FlatButton(
            child: Text('Item Name'),
            onPressed: () {
              Navigator.pushNamed(context, '/ItemPage');
            },
          ),
        ],
      ),
    );
  }
}

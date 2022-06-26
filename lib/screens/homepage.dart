import 'package:ecommerce2/screens/cart_screen.dart';
import 'package:ecommerce2/widgets/home_body.dart';
import 'package:flutter/material.dart';
import '../screens/cart_screen.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("flutter E-com"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart,size: 30,), onPressed: ()
          =>Navigator.of(context).pushNamed(CartScreen.routeName))
        ],
      ),
      body: Homebody(),
    );
  }
}
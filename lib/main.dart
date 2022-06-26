// import 'package:ecommerce2/screens/product_detial.dart';
import 'package:ecommerce2/models/orders.dart';

import './screens/product_detial.dart';
import 'package:ecommerce2/widgets/all_product.dart';
import 'package:flutter/material.dart';
import './screens/homepage.dart';
import 'package:provider/provider.dart';
import 'models/products.dart';
import './models/cart.dart';
import './screens/cart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ 
       ChangeNotifierProvider.value(
          value: Products(),
        ),
          ChangeNotifierProvider.value(
          value: Cart(),
        ),
         ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Ecommerce',
        theme: ThemeData(
          primaryColor: Colors.teal,
          accentColor: Colors.white
        ),
        home: HomePage(),
        routes: {
          ProductDetial.routeName:(ctx)=>ProductDetial(),
          CartScreen.routeName: (ctx)=>CartScreen(),
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'all_product.dart';
import 'category.dart';
class Homebody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Center(child: Text('Category', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
          SizedBox(height: 10,),
          Category(),
           SizedBox(height: 10,),
          Center(child: Text('Product',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
          Container(
            height: 400,
            child: AllProducts())
        ],
      );
  }
}
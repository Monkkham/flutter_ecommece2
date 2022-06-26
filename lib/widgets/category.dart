import 'package:flutter/material.dart';
import './category_card.dart';
class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
       children: <Widget>[
        Category_Card(
          Icon(Icons.book, size: 40,),
          'book'
        ),
         Category_Card(
          Icon(Icons.computer,size: 40,),
          'computer'
        ),
         Category_Card(
          Icon(Icons.home,size: 40,),
          'home'
        ),
         Category_Card(
          Icon(Icons.food_bank,size: 40,),
          'food_bank'
        ),
      ],
      ),
    );
  }
}
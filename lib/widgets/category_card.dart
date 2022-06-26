import 'package:flutter/material.dart';

class Category_Card extends StatelessWidget {
  final Icon icon;
  final String name;
  Category_Card(this.icon, this.name);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.blueGrey,
            )
          ],
        ),
        width: 200,
        child: Column(
          children: <Widget>[
            icon,
            Text(name,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
         
          ],
        ),
      ),
    );
  }
}
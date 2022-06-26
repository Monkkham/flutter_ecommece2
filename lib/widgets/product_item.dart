import 'package:ecommerce2/models/cart.dart';
import 'package:ecommerce2/models/products.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce2/screens/product_detial.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import './cart_item.dart';


class Product_item extends StatelessWidget {
  final String name;
  final String imageUrl;

  Product_item({required this.name, required this.imageUrl});

@override
Widget build(BuildContext context) {
  final pdt = Provider.of<Product>(context);
  final cart=Provider.of<Cart>(context);
  return GestureDetector(
    onTap: (){
      Navigator.of(context)
      .pushNamed(ProductDetial.routeName,arguments: pdt.id);
    },
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridTile(
        child:  Image.network(imageUrl),
        footer: GridTileBar(
          title: Text(name),
          trailing: IconButton(icon: Icon(Icons.shopping_cart),
          onPressed: (){
            Scaffold.of(context).showSnackBar(SnackBar(
              duration: Duration(seconds: 3),
              content: Text('Item added to Cart'),
            ));
            cart.addItem(pdt.id, pdt.name, pdt.price);
          }),
          backgroundColor: Colors.black,
        ),
      ),
    ),
  );
}
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import './product_item.dart';
class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData=Provider.of<Products>(context);
    final product=productData.items;
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: product.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
      (crossAxisCount: 2),
      itemBuilder: (ctx, i)=>ChangeNotifierProvider.value(value: product [i],
      child: Product_item(
      name: product[i].name,
      imageUrl: product[i].imgUrl,
      ),),
      
    );
  }
}

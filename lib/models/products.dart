import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Product(
    {required this.id,
    required this.category,
    required this.name,
    required this.description,
    required this.imgUrl,
    required this.price});
}
class Products with ChangeNotifier{
  List<Product> _items=[
    Product(
      id: '1',
      name: 'computer',
      imgUrl: 'https://cdn.britannica.com/77/170477-050-1C747EE3/Laptop-computer.jpg',
      price: 5,
      category: 'LAbtop',
      description: 'fehwiugfiulewqgfiueqgiudfegui'
    ),
        Product(
      id: '1',
      name: 'case',
      imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRknXoPbJ4MMvZfn2e6ou1k6W8H1f5MZhZdlA&usqp=CAU',
      price: 5,
      category: 'LAbtop',
      description: 'fehwiugfiulewqgfiueqgiudfegui'
    ),
        Product(
      id: '1',
      name: 'computer',
      imgUrl: 'https://cdn.britannica.com/77/170477-050-1C747EE3/Laptop-computer.jpg',
      price: 5,
      category: 'LAbtop',
      description: 'fehwiugfiulewqgfiueqgiudfegui'
    ),
        Product(
      id: '1',
      name: 'computer',
      imgUrl: 'https://cdn.britannica.com/77/170477-050-1C747EE3/Laptop-computer.jpg',
      price: 5,
      category: 'LAbtop',
      description: 'fehwiugfiulewqgfiueqgiudfegui'
    )
  ];
  List<Product> get items{
    return[..._items];
  }


  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
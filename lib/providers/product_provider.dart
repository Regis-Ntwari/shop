import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: 'p1',
        title: "Shirt",
        description: "A t-shirt ",
        price: 2.99,
        imageUrl:
            "https://media.istockphoto.com/id/483960103/photo/blank-black-t-shirt-front-with-clipping-path.jpg?s=1024x1024&w=is&k=20&c=n-53sp-rgdEyhzQLT5YTUEcafMj2qhf4Ke7mMWAQpxs="),
    Product(
        id: 'p2',
        title: "Shoes",
        description: "Running shoes ",
        price: 24.99,
        imageUrl:
            "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    Product(
        id: 'p3',
        title: "Suit",
        description: "A tailored suit ",
        price: 59.99,
        imageUrl:
            "https://images.unsplash.com/photo-1611937663641-5cef5189d71b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
    Product(
        id: 'p4',
        title: "Tuxedo",
        description: "black Tuxedo ",
        price: 89.99,
        imageUrl:
            "https://images.unsplash.com/photo-1522968439036-e6338d0ed84f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
    Product(
        id: 'p5',
        title: "Overcoat",
        description: "brown overcoat ",
        price: 49.99,
        imageUrl:
            "https://plus.unsplash.com/premium_photo-1674719144570-0728faf14f96?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
  ];

  List<Product> get products {
    return [..._items];
  }

  Product findById(String productId) {
    return _items.firstWhere((element) => element.id == productId);
  }
}

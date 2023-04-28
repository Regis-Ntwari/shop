import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem(
      {super.key,
      required this.id,
      required this.title,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            color: Theme.of(context).colorScheme.secondary,
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart,
                color: Theme.of(context).colorScheme.secondary),
            onPressed: () {},
          ),
        ),
        child: GestureDetector(
            onTap: () =>
                Navigator.of(context).pushNamed(ProductDetail.routeName),
            child: Image.network(imageUrl, fit: BoxFit.cover)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          leading: Consumer<Product>(
            builder: (ctx, product, child) => IconButton(
                color: Theme.of(context).colorScheme.secondary,
                icon: Icon(product.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border),
                onPressed: () => product.toggleFavorite()),
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart,
                color: Theme.of(context).colorScheme.secondary),
            onPressed: () {},
          ),
        ),
        child: GestureDetector(
            onTap: () => Navigator.of(context)
                .pushNamed(ProductDetail.routeName, arguments: product.id),
            child: Image.network(product.imageUrl, fit: BoxFit.cover)),
      ),
    );
  }
}

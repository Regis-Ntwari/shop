import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/badge.dart';
import '../providers/cart.dart';
import '../widgets/product_grid.dart';

enum FilterOptions { favorites, all }

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({super.key});

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  bool showFavs = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
        actions: [
          PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.all) {
                    showFavs = false;
                  } else {
                    showFavs = true;
                  }
                });
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    const PopupMenuItem(
                      value: FilterOptions.favorites,
                      child: Text('Only Favorites'),
                    ),
                    const PopupMenuItem(
                      value: FilterOptions.all,
                      child: Text('Show All'),
                    )
                  ]),
          Badge(
            value: 2.toString(),
            color: Theme.of(context).colorScheme.secondary,
            child: IconButton(
                icon: const Icon(Icons.shopping_cart), onPressed: () {}),
          ),
        ],
      ),
      body: ProductGrid(
        showFavorites: showFavs,
      ),
    );
  }
}

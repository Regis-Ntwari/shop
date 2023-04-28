import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/product_provider.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final product = Provider.of<ProductProvider>(context, listen: false)
        .findById(productId);
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
    );
  }
}

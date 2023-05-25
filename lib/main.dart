import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/Cart.dart';
import './providers/product_provider.dart';
import './screens/product_detail_screen.dart';
import './screens/products_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProvider.value(value: ProductProvider()),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            colorScheme:
                ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
                    .copyWith(secondary: Colors.deepOrange),
            fontFamily: 'Lato'),
        home: const ProductsOverviewScreen(),
        routes: {ProductDetail.routeName: (context) => const ProductDetail()},
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_tile.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(product: products[index]);
        },
      ),
    );
  }
}

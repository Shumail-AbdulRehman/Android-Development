import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: Column(
        children: [
          Image.network(product.imageUrl),
          Text(product.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(product.description, textAlign: TextAlign.center),
          ),
          Text('\$${product.price}', style: TextStyle(fontSize: 20, color: Colors.green)),
        ],
      ),
    );
  }
}

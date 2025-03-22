class Product {
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

List<Product> products = [
  Product(
    title: 'Product 1',
    description: 'This is Product 1',
    price: 10.0,
    imageUrl: 'https://via.placeholder.com/150',
  ),
  Product(
    title: 'Product 2',
    description: 'This is Product 2',
    price: 20.0,
    imageUrl: 'https://via.placeholder.com/150',
  ),
];

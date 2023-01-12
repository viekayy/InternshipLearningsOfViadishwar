class Product {
  final int id;
  final String productName;
  final String productDescription;
  final String productImage;
  final double price;
  bool favorite;
  Product(
      {required this.id,
      required this.productName,
      required this.productDescription,
      required this.productImage,
      required this.price,
      required this.favorite});
}

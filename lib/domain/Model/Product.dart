class Product {
  final int id;
  final String name;
  final double price;
  final String imagePath;
  final String brandimagePath;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.brandimagePath,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        imagePath: json['imagePath'],
        brandimagePath: json['brandimagePath']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'imagePath': imagePath,
      'brandimagePath': brandimagePath,
    };
  }
}

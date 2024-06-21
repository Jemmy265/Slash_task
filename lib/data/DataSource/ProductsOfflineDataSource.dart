import 'package:injectable/injectable.dart';
import 'package:slash_task/domain/DataSource/ProductsDataSource.dart';
import 'package:slash_task/domain/Model/Product.dart';

@Injectable(as: ProductsDataSource)
class ProductsOfflineDataSource extends ProductsDataSource {
  @override
  List<Product> getProducts() {
    return products;
  }

  List<Product> products = [
    Product(
      id: 1,
      imagePath: "assets/images/stitch.png",
      name: "Stitch Keychain",
      price: 55,
      brandimagePath: "assets/images/keychain logo.png",
    ),
    Product(
        id: 2,
        imagePath: "assets/images/baby dress.png",
        name: "Baby Girl Dress",
        price: 230,
        brandimagePath: "assets/images/dress logo.png"),
    Product(
        id: 3,
        imagePath: "assets/images/bag.png",
        name: "Printes bag",
        price: 180,
        brandimagePath: "assets/images/bag logo.png"),
    Product(
        id: 4,
        imagePath: "assets/images/notebook.png",
        name: "Notebook",
        price: 80,
        brandimagePath: "assets/images/keychain logo.png"),
    Product(
        id: 5,
        imagePath: "assets/images/jacket.png",
        name: "Leather Jacket",
        price: 340,
        brandimagePath: "assets/images/bag logo.png"),
    Product(
        id: 6,
        imagePath: "assets/images/medal.png",
        name: "Dog Medal",
        price: 45,
        brandimagePath: "assets/images/keychain logo.png"),
  ];
}

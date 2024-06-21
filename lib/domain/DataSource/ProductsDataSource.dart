import 'package:slash_task/domain/Model/Product.dart';

abstract class ProductsDataSource {
  List<Product> getProducts();
}

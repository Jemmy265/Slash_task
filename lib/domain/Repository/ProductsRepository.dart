import 'package:slash_task/domain/Model/Product.dart';

abstract class ProductsRepository {
  List<Product> getProducts();
}

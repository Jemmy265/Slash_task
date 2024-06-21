import 'package:injectable/injectable.dart';
import 'package:slash_task/domain/Model/Product.dart';
import 'package:slash_task/domain/Repository/ProductsRepository.dart';

@injectable
class GetProductsUsecase {
  ProductsRepository productsRepository;

  GetProductsUsecase(this.productsRepository);

  List<Product> invoke() {
    return productsRepository.getProducts();
  }
}

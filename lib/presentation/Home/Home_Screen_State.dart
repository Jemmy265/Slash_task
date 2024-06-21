import 'package:slash_task/domain/Model/Product.dart';

abstract class HomeScreenState {}

class InitialState extends HomeScreenState {}

class LoadingState extends HomeScreenState {
  String? loadingMessage;

  LoadingState({this.loadingMessage});
}

class ErrorState extends HomeScreenState {
  String errorMessage;

  ErrorState({required this.errorMessage});
}

class SuccessState extends HomeScreenState {
  List<Product> products;

  SuccessState(this.products);
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:slash_task/domain/Usecase/GetProductsUsecase.dart';
import 'package:slash_task/presentation/Home/Home_Screen_State.dart';

@injectable
class HomeScreenViewModel extends Cubit<HomeScreenState> {
  HomeScreenViewModel(this.productsUsecase) : super(InitialState());
  GetProductsUsecase productsUsecase;

  void getAllProducts() {
    emit(LoadingState());
    try {
      var products = productsUsecase.invoke();
      emit(SuccessState(products));
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }
}

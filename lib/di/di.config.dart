// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/DataSource/ProductsOfflineDataSource.dart' as _i4;
import '../data/Repository/ProductsRepository.dart' as _i6;
import '../domain/DataSource/ProductsDataSource.dart' as _i3;
import '../domain/Repository/ProductsRepository.dart' as _i5;
import '../domain/Usecase/GetProductsUsecase.dart' as _i7;
import '../presentation/Home/Home_Screen_ViewModel.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ProductsDataSource>(() => _i4.ProductsOfflineDataSource());
    gh.factory<_i5.ProductsRepository>(() => _i6.ProductsRepositoryImpl());
    gh.factory<_i7.GetProductsUsecase>(
        () => _i7.GetProductsUsecase(gh<_i5.ProductsRepository>()));
    gh.factory<_i8.HomeScreenViewModel>(
        () => _i8.HomeScreenViewModel(gh<_i7.GetProductsUsecase>()));
    return this;
  }
}

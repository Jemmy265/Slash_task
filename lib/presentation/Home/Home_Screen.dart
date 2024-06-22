import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/di/di.dart';
import 'package:slash_task/domain/Model/Product.dart';
import 'package:slash_task/presentation/Home/Home_Screen_State.dart';
import 'package:slash_task/presentation/Home/Home_Screen_ViewModel.dart';
import 'package:slash_task/presentation/components/BottomNavBar.dart';
import 'package:slash_task/presentation/components/CategoriesList.dart';
import 'package:slash_task/presentation/components/MyAppBar.dart';
import 'package:slash_task/presentation/components/Products_List.dart';
import 'package:slash_task/presentation/components/SearchRow.dart';
import 'package:slash_task/presentation/components/title_item.dart';
import 'package:slash_task/presentation/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenViewModel viewModel = getIt<HomeScreenViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: viewModel,
      builder: (context, state) {
        if (state is LoadingState) {
          return CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          );
        } else if (state is InitialState) {
          return CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          );
        } else if (state is SuccessState) {
          return BuildSuccessWidget(state.products);
        } else if (state is ErrorState) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return Container();
        }
      },
    );
  }

  Widget BuildSuccessWidget(List<Product> products) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                MyAppBar(),
                SizedBox(
                  height: 10.h,
                ),
                SearchRow(),
                ImageSlideshow(
                  autoPlayInterval: 3000,
                  isLoop: true,
                  children: [
                    Image.asset("assets/images/Hot Deal 1.png"),
                    Image.asset("assets/images/Hot Deal 1.png")
                  ],
                ),
                TitleItem(title: "Categories"),
                SizedBox(
                  height: 10.h,
                ),
                CategoriesList(),
                SizedBox(
                  height: 40.h,
                ),
                TitleItem(title: "Best Selling"),
                SizedBox(
                  height: 10.h,
                ),
                ProductsList(Constants.bestSelling),
                SizedBox(
                  height: 40.h,
                ),
                TitleItem(title: "New Arrival"),
                SizedBox(
                  height: 10.h,
                ),
                ProductsList(Constants.newArrival),
                SizedBox(
                  height: 40.h,
                ),
                TitleItem(title: "Recommended for you"),
                SizedBox(
                  height: 10.h,
                ),
                ProductsList(Constants.recommended),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

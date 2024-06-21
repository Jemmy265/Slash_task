import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/di/di.dart';
import 'package:slash_task/domain/Model/Product.dart';
import 'package:slash_task/presentation/Home/Home_Screen_State.dart';
import 'package:slash_task/presentation/Home/Home_Screen_ViewModel.dart';
import 'package:slash_task/presentation/components/category_item.dart';
import 'package:slash_task/presentation/components/product_widget.dart';
import 'package:slash_task/presentation/components/title_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenViewModel viewModel = getIt<HomeScreenViewModel>();
  final List<String> locations = [
    'Nasr City',
    'Zamalek',
    'Giza',
    '6 october',
    'Sheraton',
  ];
  String? selectedLocation;

  @override
  void initState() {
    // TODO: implement initState
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Slash.",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageIcon(AssetImage("assets/images/location.png")),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                isExpanded: true,
                                hint: Text(
                                  'Select location\nNasr City',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).hintColor,
                                  ),
                                ),
                                items: locations
                                    .map((String item) =>
                                        DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ))
                                    .toList(),
                                value: selectedLocation,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedLocation = value!;
                                  });
                                },
                                buttonStyleData: const ButtonStyleData(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  height: 40,
                                  width: 140,
                                ),
                                menuItemStyleData: const MenuItemStyleData(
                                  height: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ImageIcon(AssetImage("assets/images/notification.png"))
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 272.w,
                      height: 90.h,
                      // the height in figma is 45, but 45 is not suitable for all devices
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          prefixIcon: ImageIcon(
                            AssetImage("assets/images/search-normal.png"),
                            color: Color(0xff5f5f5f),
                          ),
                          hintStyle: TextStyle(
                              color: Color(0xff969696),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                          fillColor: Color(0xffe4e4e4),
                          filled: true,
                          hintText: "Search here... ",
                        ),
                      ),
                    ),
                    Container(
                        width: 47.w,
                        height: 90.h,
                        decoration: BoxDecoration(
                          color: Color(0xffe4e4e4),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image(
                            image: AssetImage(
                                "assets/images/Horizontal-Slider-2--Streamline-Flex.svg.png")))
                  ],
                ),
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
                Container(
                    height: 200.h,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: 8.w,
                      ),
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => categories[index],
                    )),
                SizedBox(
                  height: 40.h,
                ),
                TitleItem(title: "Best Selling"),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    height: 300.h,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: 8.w,
                      ),
                      itemCount: bestSelling.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => bestSelling[index],
                    )),
                SizedBox(
                  height: 40.h,
                ),
                TitleItem(title: "New Arrival"),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    height: 300.h,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: 8.w,
                      ),
                      itemCount: newArrival.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => newArrival[index],
                    )),
                SizedBox(
                  height: 40.h,
                ),
                TitleItem(title: "Recommended for you"),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    height: 300.h,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: 8.w,
                      ),
                      itemCount: recommended.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => recommended[index],
                    )),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            label: "Home",
            icon: ImageIcon(AssetImage("assets/images/home.png"))),
        BottomNavigationBarItem(
            label: "Favorites",
            icon: ImageIcon(
              AssetImage("assets/images/heart.png"),
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "My Cart",
            icon: ImageIcon(
              AssetImage("assets/images/shopping-cart.png"),
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "Profile",
            icon: ImageIcon(
              AssetImage("assets/images/profile-circle.png"),
              color: Colors.black,
            )),
      ]),
    );
  }
  List<Widget> categories = [
    CategoryItem(imagePath: "assets/images/fashion.png", title: "Fashion"),
    CategoryItem(imagePath: "assets/images/games.png", title: "Games"),
    CategoryItem(
        imagePath: "assets/images/accessories.png", title: "Accessories"),
    CategoryItem(imagePath: "assets/images/books.png", title: "Books"),
    CategoryItem(imagePath: "assets/images/fashion.png", title: "Fashion"),
    CategoryItem(imagePath: "assets/images/games.png", title: "Games"),
    CategoryItem(
        imagePath: "assets/images/accessories.png", title: "Accessories"),
    CategoryItem(imagePath: "assets/images/books.png", title: "Books"),
  ];
  List<Widget> bestSelling = [
    ProductWidget(
      product: Product(
          id: 1,
          name: "Stitch Keychain",
          price: 55,
          imagePath: "assets/images/stitch.png",
          brandimagePath: "assets/images/keychain logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 2,
          name: "Baby Girl Dress",
          price: 230,
          imagePath: "assets/images/baby dress.png",
          brandimagePath: "assets/images/dress logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 1,
          name: "Stitch Keychain",
          price: 55,
          imagePath: "assets/images/stitch.png",
          brandimagePath: "assets/images/keychain logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 2,
          name: "Baby Girl Dress",
          price: 230,
          imagePath: "assets/images/baby dress.png",
          brandimagePath: "assets/images/dress logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 1,
          name: "Stitch Keychain",
          price: 55,
          imagePath: "assets/images/stitch.png",
          brandimagePath: "assets/images/keychain logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 2,
          name: "Baby Girl Dress",
          price: 230,
          imagePath: "assets/images/baby dress.png",
          brandimagePath: "assets/images/dress logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 1,
          name: "Stitch Keychain",
          price: 55,
          imagePath: "assets/images/stitch.png",
          brandimagePath: "assets/images/keychain logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 2,
          name: "Baby Girl Dress",
          price: 230,
          imagePath: "assets/images/baby dress.png",
          brandimagePath: "assets/images/dress logo.png"),
    ),
  ];
  List<Widget> newArrival = [
    ProductWidget(
      product: Product(
          id: 1,
          name: "Printed bag",
          price: 180,
          imagePath: "assets/images/bag.png",
          brandimagePath: "assets/images/bag logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 2,
          name: "Notebook",
          price: 80,
          imagePath: "assets/images/notebook.png",
          brandimagePath: "assets/images/keychain logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 1,
          name: "Printed bag",
          price: 180,
          imagePath: "assets/images/bag.png",
          brandimagePath: "assets/images/bag logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 2,
          name: "Notebook",
          price: 80,
          imagePath: "assets/images/notebook.png",
          brandimagePath: "assets/images/keychain logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 1,
          name: "Printed bag",
          price: 180,
          imagePath: "assets/images/bag.png",
          brandimagePath: "assets/images/bag logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 2,
          name: "Notebook",
          price: 80,
          imagePath: "assets/images/notebook.png",
          brandimagePath: "assets/images/keychain logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 1,
          name: "Printed bag",
          price: 180,
          imagePath: "assets/images/bag.png",
          brandimagePath: "assets/images/bag logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 2,
          name: "Notebook",
          price: 80,
          imagePath: "assets/images/notebook.png",
          brandimagePath: "assets/images/keychain logo.png"),
    ),
  ];
  List<Widget> recommended = [
    ProductWidget(
      product: Product(
          id: 1,
          name: "Leather Jacket",
          price: 340,
          imagePath: "assets/images/jacket.png",
          brandimagePath: "assets/images/bag logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 2,
          name: "Dog Medal",
          price: 45,
          imagePath: "assets/images/medal.png",
          brandimagePath: "assets/images/keychain logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 1,
          name: "Leather Jacket",
          price: 340,
          imagePath: "assets/images/jacket.png",
          brandimagePath: "assets/images/bag logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 2,
          name: "Dog Medal",
          price: 45,
          imagePath: "assets/images/medal.png",
          brandimagePath: "assets/images/keychain logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 1,
          name: "Leather Jacket",
          price: 340,
          imagePath: "assets/images/jacket.png",
          brandimagePath: "assets/images/bag logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 2,
          name: "Dog Medal",
          price: 45,
          imagePath: "assets/images/medal.png",
          brandimagePath: "assets/images/keychain logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 1,
          name: "Leather Jacket",
          price: 340,
          imagePath: "assets/images/jacket.png",
          brandimagePath: "assets/images/bag logo.png"),
    ),
    ProductWidget(
      product: Product(
          id: 2,
          name: "Dog Medal",
          price: 45,
          imagePath: "assets/images/medal.png",
          brandimagePath: "assets/images/keychain logo.png"),
    ),
  ];
}

import 'package:flutter/material.dart';
import 'package:slash_task/domain/Model/Product.dart';
import 'package:slash_task/presentation/components/category_item.dart';
import 'package:slash_task/presentation/components/product_widget.dart';

class Constants {
  static List<Widget> categories = [
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
  static List<Widget> bestSelling = [
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
  static List<Widget> newArrival = [
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
  static List<Widget> recommended = [
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

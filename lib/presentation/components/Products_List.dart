import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsList extends StatelessWidget {
  List<Widget> products;

  ProductsList(this.products);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300.h,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            width: 8.w,
          ),
          itemCount: products.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => products[index],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/domain/Model/Product.dart';

class ProductWidget extends StatelessWidget {
  Product product;

  ProductWidget({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      width: 124,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(product.imagePath),
              ImageIcon(
                  AssetImage("assets/images/Heart--Streamline-Flex 1.png"))
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text(
                product.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "EGP ${product.price}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              Image.asset(product.brandimagePath),
              Image.asset("assets/images/add.png"),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductWidget extends StatelessWidget {
  String productimagePath;
  String brandimagePath;
  String productName;
  double price;

  ProductWidget(
      {required this.productimagePath,
      required this.productName,
      required this.price,
      required this.brandimagePath});

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
              Image.asset(productimagePath),
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
                productName,
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
                "EGP $price",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              Image.asset(brandimagePath),
              Image.asset("assets/images/add.png"),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleItem extends StatelessWidget {
  String title;

  TitleItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        Row(
          children: [
            Text(
              "See all",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 5.w,
            ),
            Image.asset("assets/images/arrow_right.png")
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/presentation/Styles.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              hintStyle: MyTheme.TextFieldHint,
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
    );
  }
}

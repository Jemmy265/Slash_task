import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/presentation/constants.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.h,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            width: 8.w,
          ),
          itemCount: Constants.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Constants.categories[index],
        ));
  }
}

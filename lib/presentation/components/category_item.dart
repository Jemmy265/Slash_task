import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  String imagePath;
  String title;

  CategoryItem({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset(imagePath),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}

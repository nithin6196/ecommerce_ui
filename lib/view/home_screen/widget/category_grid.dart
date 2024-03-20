import 'package:ecommerce_ui/core/constants/color_constants.dart';
import 'package:ecommerce_ui/core/constants/image_constants.dart';
import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    super.key,
    required this.indexValue,
  });
  final int indexValue;

  @override
  Widget build(BuildContext context) {
    List categoryList = [
      "Fruits",
      "Veggies",
      "Dairy",
      "Essentials",
    ];
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 3),
          alignment: Alignment.bottomCenter,
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorConstants.normalGrey.withOpacity(.5),
              image: DecorationImage(
                image: AssetImage(ImageConstants.categoryImageList[indexValue]),
              )),
          child: Text(
            categoryList[indexValue],
            style: const TextStyle(fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }
}

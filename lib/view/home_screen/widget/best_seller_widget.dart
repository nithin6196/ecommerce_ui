// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/core/constants/image_constants.dart';
import 'package:ecommerce_ui/view/product_screen/product_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/color_constants.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({
    super.key,
    required this.imageIndex,
  });
  final int imageIndex;

  @override
  Widget build(BuildContext context) {
    List itemNameList = [
      "Red label Tea Leaf,\n1 kg",
      "Kalibavi Splits,\nkeshew",
      "Chakki Fresh,\natta",
      "Tide washing powder,\ndetergent"
    ];
    List itemPrice = [12, 5, 3, 10];
    return Stack(
      children: [
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductsScreen(),
              )),
          child: Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.sizeOf(context).width * .6,
            width: MediaQuery.sizeOf(context).width * .35,
            decoration: BoxDecoration(
              color: ColorConstants.normalWhite,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  ImageConstants.itemsList[imageIndex],
                  scale: 1.9,
                ),
                Text(
                  itemNameList[imageIndex],
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                ),
                Text(
                  "\$${itemPrice[imageIndex]}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.green,
            )),
        Positioned(
          bottom: 2,
          right: 2,
          child: Container(
            color: Colors.green,
            child: Icon(
              Icons.add_shopping_cart,
              color: ColorConstants.normalWhite,
            ),
          ),
        )
      ],
    );
  }
}

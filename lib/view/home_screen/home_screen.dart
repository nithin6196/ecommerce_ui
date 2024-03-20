// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_ui/core/constants/color_constants.dart';
import 'package:ecommerce_ui/core/constants/image_constants.dart';
import 'package:ecommerce_ui/view/home_screen/widget/best_seller_widget.dart';
import 'package:ecommerce_ui/view/home_screen/widget/category_grid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryGreen,
        leading: Icon(
          Icons.subject_sharp,
          color: ColorConstants.normalWhite,
        ),
        title: TextField(
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              prefixIcon: Icon(
                Icons.search,
                color: ColorConstants.normalWhite,
              ),
              hintText: "Search",
              hintStyle: TextStyle(color: ColorConstants.normalWhite),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              fillColor: ColorConstants.normalGrey.withOpacity(.6),
              filled: true),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * .2,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(ImageConstants.vegetablesImage),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.primaryGreen),
                ),
              ],
            ),
            SizedBox(height: 25),
            SizedBox(
              height: 120,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: ImageConstants.categoryImageList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CategoryGrid(
                    indexValue: index,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Seller",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.primaryGreen),
                )
              ],
            ),
            SizedBox(height: 12),
            SizedBox(
              height: MediaQuery.sizeOf(context).width * .54,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ImageConstants.itemsList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: BestSellerWidget(imageIndex: index),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

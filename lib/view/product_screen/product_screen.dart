// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_ui/controller/product_list_controller.dart';
import 'package:ecommerce_ui/core/constants/color_constants.dart';
import 'package:ecommerce_ui/core/constants/image_constants.dart';
import 'package:ecommerce_ui/view/checkout_screen/checkout_screen.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.normalWhite.withOpacity(.9),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Product Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                    color: ColorConstants.normalWhite,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstants.itemsList[0]))),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Red Label Tea",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 55,
                          color: ColorConstants.primaryGreen1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "4.2",
                                style: TextStyle(
                                    color: ColorConstants.normalWhite),
                              ),
                              Icon(
                                Icons.star,
                                color: ColorConstants.normalWhite,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "96 ratings",
                          style: TextStyle(
                              color: ColorConstants.normalGrey,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    RichText(
                        text: TextSpan(
                            text: "\$12 ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                            children: [
                          TextSpan(
                              text: " 5% off",
                              style: TextStyle(
                                  color: ColorConstants.primaryGreen,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17))
                        ]))
                  ],
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: CircleAvatar(
                  child: Icon(
                    Icons.send,
                    color: ColorConstants.primaryGreen,
                  ),
                ),
              ),
            ]),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                  color: ColorConstants.normalWhite,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Divider(height: 20),
                  ListView.builder(
                    itemCount: ProductListController.productList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        children: [
                          Text(
                            ProductListController.productList[index].text,
                            style: TextStyle(
                                color: ColorConstants.normalGrey,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 80),
                          Text(
                            ProductListController.productList[index].subtext,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "More Details",
                        style: TextStyle(
                          color: ColorConstants.primaryGreen,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: ColorConstants.normalGrey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: ColorConstants.primaryGreen,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckOut(),
                          )),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: ColorConstants.primaryGreen,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "ADD TO CART",
                            style: TextStyle(
                                color: ColorConstants.normalWhite,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

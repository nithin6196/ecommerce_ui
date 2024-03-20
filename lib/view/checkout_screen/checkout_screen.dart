// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.normalWhite.withOpacity(.9),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "CheckOut",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

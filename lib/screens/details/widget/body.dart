import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/models/product.dart';
import 'package:e_commerce_app/screens/details/widget/color_dots.dart';
import 'package:e_commerce_app/screens/details/widget/product_description.dart';
import 'package:e_commerce_app/screens/details/widget/product_images.dart';
import 'package:e_commerce_app/screens/details/widget/top_rounded_container.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:e_commerce_app/widget/default_button.dart';
import 'package:e_commerce_app/widget/rounded_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorsDots(product: product),
                      TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15,
                              top: getProportionateScreenWidth(10),
                              bottom: getProportionateScreenWidth(40),
                            ),
                            child: DefaultButton(text: "Add To Cart", press: () {}),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

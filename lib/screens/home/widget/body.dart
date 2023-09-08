import 'package:e_commerce_app/screens/home/widget/categories.dart';
import 'package:e_commerce_app/screens/home/widget/discount_banner.dart';
import 'package:e_commerce_app/screens/home/widget/home_header.dart';
import 'package:e_commerce_app/screens/home/widget/popular_product.dart';
import 'package:e_commerce_app/screens/home/widget/special_offers.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            const HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            const DiscountBanner(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            const Categories(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            const SpecialOffers(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            const PopularProduct(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:e_commerce_app/screens/home/widget/section_tile.dart';
import 'package:e_commerce_app/screens/home/widget/special_card_offer.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special for you",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(15),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialCardOffer(
                image: "assets/images/Image Banner 2.png",
                category: "Smartphone",
                numOfBrands: 15,
                press: () {},
              ),
              SpecialCardOffer(
                image: "assets/images/Image Banner 3.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
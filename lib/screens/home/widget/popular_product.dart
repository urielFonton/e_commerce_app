import 'package:e_commerce_app/screens/home/widget/section_tile.dart';
import 'package:e_commerce_app/widget/product_card.dart';
import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../../size_config.dart';
import '../../details/details_screen.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular product", press: () {}),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length,
                  (index) => ProductCard(product: demoProducts[index], press: () { 
                    Navigator.pushNamed(context, DetailsScreen.routeName, arguments: ProductDetailsArguments(product: demoProducts[index]));
                   },)),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
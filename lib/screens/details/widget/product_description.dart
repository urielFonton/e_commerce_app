import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/models/product.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.product, required this.pressOnSeeMore,
  });

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              width: getProportionateScreenWidth(64),
              decoration: BoxDecoration(
                  color: product.isFavourite
                      ? const Color(0xFFFFE6E6)
                      : const Color(0xFFF5F6F9),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                  color: product.isFavourite
                      ? const Color(0xFFFF4848)
                      : const Color(0xFFD8DEE4))),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(64)),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20), vertical: 10),
          child: GestureDetector(
            onTap: pressOnSeeMore,
            child: Row(
              children: const [
                Text(
                  "See more details",
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios, size: 12, color: kPrimaryColor,),
              ],
            ),
          ),
        )
      ],
    );
  }
}
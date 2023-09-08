import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/models/product.dart';
import 'package:e_commerce_app/screens/details/widget/body.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:e_commerce_app/widget/rounded_icon_button.dart';
import 'package:flutter/material.dart';

class ColorsDots extends StatelessWidget {
  const ColorsDots({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(children: [
        ...List.generate(
            product.colors.length,
            (index) => ColorDot(
                  color: product.colors[index],
                  isSelected: selectedColor == index,
                )),
        Spacer(),
        RoundedIconButton(iconData: Icons.remove, press: () {}),
        SizedBox(width: getProportionateScreenWidth(40),),
        RoundedIconButton(iconData: Icons.add, press: () {}),
      ]),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
          //color: product.colors[0],
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
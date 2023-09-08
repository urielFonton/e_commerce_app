import 'package:e_commerce_app/size_config.dart';
import 'package:e_commerce_app/widget/rounded_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends PreferredSize {
  final double rating;

  CustomAppBar({
    super.key,
    required super.child,
    required super.preferredSize,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Padding(
          padding: EdgeInsets.only(top: getProportionateScreenHeight(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedIconButton(
                iconData: CupertinoIcons.back,
                press: () => Navigator.pop(context),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(14),
                    vertical: getProportionateScreenHeight(5)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Text(
                      rating.toString(),
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset("assets/icons/Star Icon.svg")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
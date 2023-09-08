import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key, required this.text, required this.press,
  });

  final String text;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
        ),
          color: kPrimaryColor,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: Colors.white),
          )),
    );
  }
}
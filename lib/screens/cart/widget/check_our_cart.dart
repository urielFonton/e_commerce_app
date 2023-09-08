import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:e_commerce_app/widget/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckOurCart extends StatefulWidget {
  const CheckOurCart({
    super.key,
  });

  @override
  State<CheckOurCart> createState() => _CheckOurCartState();
}

class _CheckOurCartState extends State<CheckOurCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(15),
          horizontal: getProportionateScreenWidth(30)),
      //height: 174,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: 20,
                color: const Color(0xFFDADADA).withOpacity(0.15))
          ]),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: getProportionateScreenHeight(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                  color: const Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                const Spacer(),
                const Text("Add voucher code"),
                const SizedBox(width: 10,),
                const Icon(Icons.arrow_forward_ios_outlined, size: 12, color: kTextColor,)
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text.rich(
                 TextSpan(
                    text: "Total:\n", children: [
                      TextSpan(text: "\$337.15", style: TextStyle(fontSize: 16, color: Colors.black))
                    ])
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(text: "Check Out", press: () {}),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
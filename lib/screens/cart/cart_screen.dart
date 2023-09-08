import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/models/Cart.dart';
import 'package:e_commerce_app/screens/cart/widget/body.dart';
import 'package:e_commerce_app/screens/cart/widget/check_our_cart.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:e_commerce_app/widget/default_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static String routeName = "/cart_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: const CheckOurCart(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(CupertinoIcons.back)),
      title: Column(
        children: [
          const Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
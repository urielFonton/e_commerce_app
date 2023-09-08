import 'package:e_commerce_app/screens/details/widget/body.dart';
import 'package:e_commerce_app/screens/details/widget/custom_app_bar.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/product.dart';
import '../../widget/rounded_icon_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments? arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments?;

    return Scaffold(
        backgroundColor: Color(0xFFF5F6F9),
        appBar: CustomAppBar(
          preferredSize: Size.fromHeight(
            AppBar().preferredSize.height,
          ),
          child: RoundedIconButton(
            iconData: CupertinoIcons.back,
            press: () => Navigator.pop(context),
          ),
          rating: arguments!.product.rating,
        ), body: Body(product: arguments.product,),);
  }
}



// Il faut passer le produit à l'écran du détail, c'est à dire, à chaque produit correspont son détail
// Du coup, il nous faut créer un argument en guise de class et le passer à la namedRoute

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}

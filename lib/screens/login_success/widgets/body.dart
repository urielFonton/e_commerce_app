import 'package:e_commerce_app/screens/home/home_screen.dart';
import 'package:e_commerce_app/widget/default_button.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset("assets/images/success.png", height: SizeConfig.screenHeight * 0.4,),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Text("Login Success" , style: TextStyle(
          fontSize: getProportionateScreenWidth(25),
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenHeight * 0.6,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
            child: DefaultButton(text: "Back to home", press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            }),
          ),
        ),
        const Spacer()
      ],
    );
  }
}
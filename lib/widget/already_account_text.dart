import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class AlreadyAccountText extends StatelessWidget {
  const AlreadyAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account? ",
          style:
              TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
            child: Text(
              "Sign In",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: kPrimaryColor),
            )),
      ],
    );
  }
}
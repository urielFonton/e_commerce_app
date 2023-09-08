import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/screens/otp/widgets/otp_form.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:e_commerce_app/widget/default_button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text("We sent you code to +229 623 3** **"),
              buildOtpTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.10),
              const OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.2),
              GestureDetector(
                  onTap: () {
                    // resend yout OTP
                  },
                  child: const Text(
                    "Resend OTP",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Row buildOtpTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will exoire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: const TextStyle(color: Colors.redAccent),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}



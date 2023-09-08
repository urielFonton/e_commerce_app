import 'package:e_commerce_app/screens/profile/widget/profile_menu.dart';
import 'package:e_commerce_app/screens/profile/widget/profile_picture.dart';
import 'package:e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicture(
          profilePic: const AssetImage("assets/images/Profile Image.png"),
          press: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        ProfileMenu(icon: "assets/icons/User Icon.svg", text: "My Account", press: () {},),
        ProfileMenu(icon: "assets/icons/Bell.svg", text: "My Notifications", press: () {},),
        ProfileMenu(icon: "assets/icons/Settings.svg", text: "My Settings", press: () {},),
        ProfileMenu(icon: "assets/icons/Question mark.svg", text: "My Help Center", press: () {},),
        ProfileMenu(icon: "assets/icons/Log out.svg", text: "Log Out", press: () {
          Navigator.pushNamed(context, SignInScreen.routeName);
        },),
      ],
    );
  }
}
import 'package:e_commerce_app/enums.dart';
import 'package:e_commerce_app/screens/home/widget/body.dart';
import 'package:e_commerce_app/screens/profile/widget/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home,),
    );
  }
}
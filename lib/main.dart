import 'package:e_commerce_app/routs.dart';
import 'package:e_commerce_app/screens/splash/splash_screen.dart';
import 'package:e_commerce_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ALL in ONE",
      theme: theme(),
      debugShowCheckedModeBanner: false,
     // home: const SplashScreen(),
    initialRoute: SplashScreen.routeName,
     routes: routes,
    );
  }
}
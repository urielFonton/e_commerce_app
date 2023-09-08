import 'package:e_commerce_app/constant.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: appbarTheme(),
        fontFamily: "Muli",
        textTheme: textTheme(),
        inputDecorationTheme: inputDecorationTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            );
  return InputDecorationTheme(
            contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 18),
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            border: outlineInputBorder,
          );
}

TextTheme textTheme() {
  return const TextTheme(
        bodyLarge: TextStyle(color: kTextColor),
        bodyMedium: TextStyle(color: kTextColor),
      );
}

AppBarTheme appbarTheme() {
  return const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: TextTheme(
          titleLarge: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18),
        ),
        centerTitle: true,
      );
}
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryLight = Color(0xffB7935F);
  static const Color black = Color(0xff242424);
  static const Color white = Color(0xffF8F8F8);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: black,
        unselectedItemColor: white,
        backgroundColor: primaryLight,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: black,
          )),
      textTheme: TextTheme(
          headlineSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: black,
      )));
}

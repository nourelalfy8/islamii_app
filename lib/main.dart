import 'package:flutter/material.dart';
import 'package:islamii_app/app_theme.dart';
import 'package:islamii_app/home_screen.dart';
import 'package:islamii_app/tabs/hadeth/hadeth_details_screen.dart';
import 'package:islamii_app/tabs/quran/sura_details_screen.dart';

void main() {
  runApp(IslamiiApp());
}

class IslamiiApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        // SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        // HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: AppTheme.lightTheme,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
    );
  }
}

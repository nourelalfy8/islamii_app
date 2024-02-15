import 'package:flutter/material.dart';
import 'package:islamii_app/tabs/hadeth/hadeth.dart';
import 'package:islamii_app/app_theme.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth_details';

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadeth.title),
        ),
        body: Container(
          color: AppTheme.white,
          child: ListView.builder(
            itemBuilder: (context, index) => Text(hadeth.content[index]),
            itemCount: hadeth.content.length,
          ),
        ),
      ),
    );
  }
}

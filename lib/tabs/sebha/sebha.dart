import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/head_sebha_logo.png'),
        Image.asset('assets/images/body_sebha_logo.png'),
        Text('عدد التسبيحات'),
        Container(
          color: Theme.of(context).primaryColor,
          child: Text('30'),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: Text('سبحان الله'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/radio_image.png')),
        Text('إذاعة القرآن الكريم'),
        Row(
          children: [
            Icon(
              Icons.skip_previous,
              color: Theme.of(context).primaryColor,
            ),
            Icon(
              Icons.play_arrow_sharp,
              color: Theme.of(context).primaryColor,
            ),
            Icon(
              Icons.skip_next,
              color: Theme.of(context).primaryColor,
            ),
          ],
        )
      ],
    );
  }
}

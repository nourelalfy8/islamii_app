import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii_app/tabs/hadeth/hadeth.dart';

class HadethTap extends StatelessWidget {
  // List<hadeth> ahadeth = [];
  @override
  Widget build(BuildContext context) {
    // loadAhadethFile();
    return Column(
      children: [
        Image.asset('assets/images/hadeth_logo.png'),
        SizedBox(
          height: 16,
        ),
        // Expanded(
        //     child: ListView.separated(
        //   itemBuilder: (context, index) => InkWell(
        //       onTap: () {
        //         Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
        //             arguments: SuraDetailsArgs(index, suraNames[index]));
        //       },
        //       child: Text(
        //         suraNames[index],
        //         style: Theme.of(context).textTheme.headlineSmall,
        //       )),
        //   itemCount: suraNames.length,
        //   separatorBuilder: (context, index) => SizedBox(
        //     height: 8,
        //   ),
        // ))
      ],
    );
  }

  // Future<void> loadAhadethFile() async {
  //   String ahadethFileContent =
  //       await rootBundle.loadString('assets/files/ahadeth.txt');
  //   List<String> ahadethStrings = ahadethFileContent.split('#\r\n');
  // }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii_app/tabs/hadeth/hadeth.dart';
import 'package:islamii_app/tabs/hadeth/hadeth_details_screen.dart';
import 'package:islamii_app/widgets/loading_indicator.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      loadAhadethFile();
    }
    ;
    return Column(
      children: [
        Image.asset('assets/images/hadeth_logo.png'),
        SizedBox(
          height: 16,
        ),
        Expanded(
            child: ahadeth.isEmpty
                ? LoadingIndicator()
                : ListView.separated(
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              HadethDetailsScreen.routeName,
                              arguments: ahadeth[index]);
                        },
                        child: Text(
                          ahadeth[index].title,
                          style: Theme.of(context).textTheme.headlineSmall,
                        )),
                    itemCount: ahadeth.length,
                    separatorBuilder: (context, index) => SizedBox(
                      height: 8,
                    ),
                  ))
      ],
    );
  }

  Future<void> loadAhadethFile() async {
    String ahadethFileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethStrings = ahadethFileContent.split('#\r\n');
    ahadeth = ahadethStrings.map((hadethString) {
      List<String> hadethLines = hadethString.split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      List<String> content = hadethLines;
      return Hadeth(title, content);
    }).toList();
    setState(() {});
  }
}

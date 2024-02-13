import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii_app/app_theme.dart';
import 'package:islamii_app/widgets/loading_indicator.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (ayat.isEmpty) {
      loadSuraFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/default_bg.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.suraName),
          ),
          body: ayat.isEmpty
              ? LoadingIndicator()
              : Container(
                  decoration: BoxDecoration(
                      color: AppTheme.white,
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.05,
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                  ),
                  padding: EdgeInsets.all(20),
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(
                      ayat[index],
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    itemCount: ayat.length,
                  ),
                ),
        ));
  }

  Future<void> loadSuraFile(int index) async {
    String sura = await rootBundle.loadString(
      'assets/files/${index + 1}.txt',
    );
    ayat = sura.split('\n');
    setState(() {});
  }
}

class SuraDetailsArgs {
  int index;
  String suraName;
  SuraDetailsArgs(this.index, this.suraName);
}

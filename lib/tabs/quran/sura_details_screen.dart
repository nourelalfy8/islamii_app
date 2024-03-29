// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:islamii_app/app_theme.dart';
// import 'package:islamii_app/widgets/loading_indicator.dart';

// class SuraDetailsScreen extends StatefulWidget {
//   static const String routeName = 'sura_details';

//   @override
//   State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
// }

// class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
//   List<String> ayat = [];

//   @override
//   Widget build(BuildContext context) {
//     SuraDetailsArgs args =
//         ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
//     if (ayat.isEmpty) {
//       loadSuraFile(args.index);
//     }
//     return Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('assets/images/default_bg.png'),
//                 fit: BoxFit.cover)),
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text(args.suraName),
//           ),
//           body: ayat.isEmpty
//               ? LoadingIndicator()
//               : Container(
//                   color: AppTheme.white,
//                   child: ListView.builder(
//                     itemBuilder: (context, index) => Text(ayat[index]),
//                     itemCount: ayat.length,
//                   ),
//                 ),
//         ));
//   }

//   Future<void> loadSuraFile(int index) async {
//     String sura = await rootBundle.loadString(
//       'assets/files/${index + 1}.txt',
//     );
//     ayat = sura.split('\r\n');
//     setState(() {});
//   }
// }

// class SuraDetailsArgs {
//   int index;
//   String suraName;
//   SuraDetailsArgs(this.index, this.suraName);
// }

import 'package:flutter/material.dart';
import 'package:islamii_app/tabs/hadeth/hadeth_tab.dart';
import 'package:islamii_app/tabs/quran/quran_tab.dart';
import 'package:islamii_app/tabs/radio/radio_tab.dart';
import 'package:islamii_app/tabs/sebha/sebha.dart';
import 'package:islamii_app/tabs/settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
  static const String routeName = 'home_screen';
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    RadioTab(),
    SebhaTab(),
    HadethTap(),
    QuranTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('إسلامي'),
        ),
        body: tabs[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                label: 'radio'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                label: 'sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                label: 'hadeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                label: 'quran'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'settings'),
          ],
        ),
      ),
    );
  }
}

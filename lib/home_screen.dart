import 'package:flutter/material.dart';
import 'package:islame/tabs/hadith_tab.dart';
import 'package:islame/tabs/quran_tab.dart';
import 'package:islame/tabs/radio_tab.dart';
import 'package:islame/tabs/sebha_tab.dart';
import 'package:islame/tabs/time_tab.dart';
import 'package:islame/widgets/active_nav_bar_icon.dart';
import 'package:islame/widgets/inactive_nav_bar_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];
  List<String> backgraundImagesName = [
    'quran_background',
    'hadith_background',
    'sebha_background',
    'radio_background',
    'time_background',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/${backgraundImagesName[currentIndex]}.png',
            ),
            fit: BoxFit.fill,
          ),
        ),

        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Image.asset(
              'assets/images/islami_header.png',
              height: MediaQuery.sizeOf(context).height * 0.20,
            ),

            Expanded(child: tabs[currentIndex]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: 'quran'),
            activeIcon: ActiveNavBarIcon(iconName: 'quran'),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: 'hadith'),
            activeIcon: ActiveNavBarIcon(iconName: 'hadith'),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: 'sebha'),
            activeIcon: ActiveNavBarIcon(iconName: 'sebha'),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: 'radio'),
            activeIcon: ActiveNavBarIcon(iconName: 'radio'),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: 'time'),
            activeIcon: ActiveNavBarIcon(iconName: 'time'),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}

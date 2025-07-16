import 'package:flutter/material.dart';
import 'package:islami/nav_bar_selected_icon.dart';
import 'package:islami/nav_bar_unselected_icon.dart';
import 'package:islami/tabs/hadeth_tab.dart';
import 'package:islami/tabs/quran_tab.dart';
import 'package:islami/tabs/radio_tab.dart';
import 'package:islami/tabs/sebha_tab.dart';
import 'package:islami/tabs/time_tab.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName ='/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs= [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),


  ];
  List<String>backgroundImageNames =[
    'quran_background',
    'hadeth_background',
    'sebha_background',
    'radio_background',
    'time_background',



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image:AssetImage(
            'assets/images/${backgroundImageNames[currentIndex]}.png',
        ),
          fit: BoxFit.fill,
        )
        ),
        child: Column(
          children: [Image.asset('assets/images/header.png'),tabs[currentIndex]

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentIndex ,
          onTap: (index){
            currentIndex = index;
            setState(() {

            });
          },

          items: [
            BottomNavigationBarItem

            (icon:NavBarUnselectedIcon(imageName: 'quran',) ,

           activeIcon:NavBarSelectedIcon(imageName: 'quran'),
           label : 'Quran',
          ),
            BottomNavigationBarItem

              (icon:NavBarUnselectedIcon(imageName: 'hadeth',) ,

              activeIcon:NavBarSelectedIcon(imageName: 'hadeth'),
              label : 'Hadeth',
            ),
            BottomNavigationBarItem

              (icon:NavBarUnselectedIcon(imageName: 'sebha',) ,

              activeIcon:NavBarSelectedIcon(imageName: 'sebha'),
              label : 'Sebha',
            ),
            BottomNavigationBarItem

              (icon:NavBarUnselectedIcon(imageName: 'radio',) ,

              activeIcon:NavBarSelectedIcon(imageName: 'radio'),
              label : 'Radio',
            ),
            BottomNavigationBarItem

              (icon:NavBarUnselectedIcon(imageName: 'time',) ,

              activeIcon:NavBarSelectedIcon(imageName: 'time'),
              label : 'Time',
            ),
      ],
      ),
    );
  }
}

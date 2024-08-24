import 'package:flutter/material.dart';
import 'package:havenhub/pages/nav_pages/bar_item_page.dart';
import 'package:havenhub/pages/nav_pages/home_page.dart';
import 'package:havenhub/pages/nav_pages/my_page.dart';
import 'package:havenhub/pages/nav_pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages= [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),

  ];
  int currentIndex=0;

  void onTap(int index) {
    setState(() {  // Call setState to rebuild the widget with the new index
      currentIndex = index;
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(label:("Home"),icon: Icon(Icons.apps)),
            BottomNavigationBarItem(label:("Bar"),icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(label:("Search"),icon: Icon(Icons.search)),
            BottomNavigationBarItem(label:("Me"),icon: Icon(Icons.person)),
          ]
      ),
    );
  }
}

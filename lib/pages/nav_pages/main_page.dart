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
  List pages=[
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.apps)),
            BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart_sharp)),
            BottomNavigationBarItem(icon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.person)),
      ]),
      
    );
  }
}

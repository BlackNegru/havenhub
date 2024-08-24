import 'package:flutter/material.dart';
//import 'package:havenhub/pages/welcome_page.dart';
import 'package:havenhub/pages/nav_pages/main_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),//WelcomePage(),
    );
  }
}


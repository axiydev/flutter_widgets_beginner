import 'package:flutter/material.dart';
import 'package:flutter_widgets_beginner/pages/five_page/five_page.dart';
import 'package:flutter_widgets_beginner/pages/fourth_page/fourth_page.dart';
import 'package:flutter_widgets_beginner/pages/home_page/home_page.dart';
import 'package:flutter_widgets_beginner/pages/second_page/second_page.dart';
import 'package:flutter_widgets_beginner/pages/six_page/six_page.dart';
import 'package:flutter_widgets_beginner/pages/third_page/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.path: (context) => const HomePage(),
        SecondPage.path: (context) => const SecondPage(),
        ThirdPage.path: (context) => const ThirdPage(),
        FourthPage.path: (context) => const FourthPage(),
        FivePage.path: (context) => const FivePage(),
        SixPage.path: (context) => const SixPage()
      },
      initialRoute: HomePage.path,
    );
  }
}

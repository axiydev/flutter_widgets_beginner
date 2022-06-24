import 'package:flutter/material.dart';
import 'package:flutter_widgets_beginner/pages/drow_page/drow_page.dart';
import 'package:flutter_widgets_beginner/pages/five_page/five_page.dart';
import 'package:flutter_widgets_beginner/pages/fourth_page/fourth_page.dart';
import 'package:flutter_widgets_beginner/pages/home_page/home_page.dart';
import 'package:flutter_widgets_beginner/pages/lesson_6/lesson_6.dart';
import 'package:flutter_widgets_beginner/pages/other_rw_page/other_rw.dart';
import 'package:flutter_widgets_beginner/pages/second_page/second_page.dart';
import 'package:flutter_widgets_beginner/pages/six_page/six_page.dart';
import 'package:flutter_widgets_beginner/pages/third_page/third_page.dart';
import 'package:flutter_widgets_beginner/pages/tile_page/tile_page.dart';

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
        SixPage.path: (context) => const SixPage(),
        Lesson6Page.path: (context) => const Lesson6Page(),
        DrowPage.path: (context) => const DrowPage(),
        TilePage.path: (context) => const TilePage(),
        OtherRwPage.path: (context) => const OtherRwPage()
      },
      initialRoute: HomePage.path,
    );
  }
}

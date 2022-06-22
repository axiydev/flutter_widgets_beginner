import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  static const path = '/third_page';
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 200,
        width: 200,
        // margin: const EdgeInsets.only(top: 20, left: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
        ),
        // alignment: Alignment.topLeft,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.alarm,
              size: 30,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}

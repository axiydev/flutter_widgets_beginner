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
        padding: const EdgeInsets.only(left: 20),
        color: Colors.green,
        alignment: Alignment.topLeft,
        child: const Icon(
          Icons.alarm,
          size: 30,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}

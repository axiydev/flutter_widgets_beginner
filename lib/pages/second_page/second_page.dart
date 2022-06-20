import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static const path = "/second_page";
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build method");
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "Second Page",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}

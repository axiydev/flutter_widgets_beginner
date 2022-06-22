import 'package:flutter/material.dart';

class FivePage extends StatefulWidget {
  static const path = '/five_page';
  const FivePage({Key? key}) : super(key: key);

  @override
  State<FivePage> createState() => _FivePageState();
}

class _FivePageState extends State<FivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),
          const Positioned(
              top: 50, left: 100, child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}

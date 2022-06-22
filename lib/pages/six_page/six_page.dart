import 'package:flutter/material.dart';

class SixPage extends StatefulWidget {
  static const path = "/six_page";
  const SixPage({Key? key}) : super(key: key);

  @override
  State<SixPage> createState() => _SixPageState();
}

class _SixPageState extends State<SixPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.red,
            child: const Text("Hello"),
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
            child: const Text("Hello"),
          ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     color: Colors.red,
          //     child: const Text("Hello"),
          //   ),
          // ),
          Expanded(
            // flex: 8,
            child: Container(
              color: Colors.green,
            ),
          ),
        ]),
      )),
    );
  }
}

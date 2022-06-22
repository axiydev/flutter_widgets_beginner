import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  static const path = '/fourth_page';
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          // key: const PageStorageKey<String>("page key"),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 110,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 110,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
              Container(
                height: 100,
                width: 120,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.pink,
              ),
              Container(
                width: 150,
                height: 100,
                color: Colors.orange,
              ),
              Container(
                height: 100,
                width: 130,
                color: Colors.black,
              ),
            ],
          ),
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(mainAxisSize: MainAxisSize.min, children: [
        FloatingActionButton(
          heroTag: "float",
          onPressed: () {},
          child: const Icon(Icons.safety_check),
        ),
        FloatingActionButton(
          heroTag: "float1",
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ]),
    );
  }
}

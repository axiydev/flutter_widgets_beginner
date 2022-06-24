import 'package:flutter/material.dart';

class DrowPage extends StatefulWidget {
  static const path = '/draw_page';
  const DrowPage({Key? key}) : super(key: key);

  @override
  State<DrowPage> createState() => _DrowPageState();
}

class _DrowPageState extends State<DrowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Wrap(direction: Axis.horizontal, children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey,
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    "full name",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    "sarvarjonpubg@gmail.com",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green[400],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green[400],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
          ],
        ),
      )),
    );
  }
}

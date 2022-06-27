import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherPageForTab extends StatefulWidget {
  static const path = "/other_page_tab";
  const OtherPageForTab({Key? key}) : super(key: key);

  @override
  State<OtherPageForTab> createState() => _OtherPageForTabState();
}

class _OtherPageForTabState extends State<OtherPageForTab> {
  List<Widget?> listPage = [
    Container(
      color: Colors.red,
      child: Center(
          child: Container(
        height: 100,
        width: 100,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: const Center(
          child: Material(
            child: Text(
              "M",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      )),
    ),
    Container(
      color: Colors.blue,
      child: const Center(
        child: Icon(
          Icons.search,
          size: 70,
        ),
      ),
    )
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return StatefulBuilder(builder: (context, setState) {
      return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home)),
              BottomNavigationBarItem(icon: Icon(Icons.search))
            ],
          ),
          tabBuilder: (context, index) => listPage[index]!);
    });
  }
}

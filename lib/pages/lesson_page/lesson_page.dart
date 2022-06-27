import 'package:flutter/material.dart';

class PageExample extends StatefulWidget {
  static const path = "/page_example";
  const PageExample({Key? key}) : super(key: key);

  @override
  State<PageExample> createState() => _PageExampleState();
}

class _PageExampleState extends State<PageExample> {
  PageController? _pageController;
  late int _currentIndex;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    _currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return StatefulBuilder(builder: (context, setState) {
      return Scaffold(
          appBar: AppBar(),
          body: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: size.height,
                width: size.width,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'first page',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: size.height,
                width: size.width,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'second page',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: size.height,
                width: size.width,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'third page',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: size.height,
                width: size.width,
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'fourth page',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: NavigationBar(
              selectedIndex: _currentIndex,
              onDestinationSelected: (index) {
                setState(() {
                  _currentIndex = index;
                });

                _pageController!.animateToPage(index,
                    duration: const Duration(milliseconds: 450),
                    curve: Curves.easeIn);
              },
              destinations: const [
                NavigationDestination(
                  label: 'first',
                  icon: Icon(Icons.home),
                ),
                NavigationDestination(
                  label: 'second',
                  icon: Icon(Icons.search),
                ),
                NavigationDestination(
                  label: 'third',
                  icon: Icon(Icons.notification_add),
                ),
                NavigationDestination(
                  label: 'fourth',
                  icon: Icon(Icons.access_alarm),
                ),
              ]));
    });
  }
}

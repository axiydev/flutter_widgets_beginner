import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_beginner/pages/home_page/widgets/custom_tile_widget.dart';
import 'package:flutter_widgets_beginner/pages/lesson_sliver/page_sliver.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  static const path = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int? _counter;
  int _selectedIndex = 0;
  @override
  void initState() {
    _counter = 0;
    print("INITEDD");
    super.initState();
  }

  @override
  void dispose() {
    _counter = 0;
    print("DISPOSED");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build method");
    return StatefulBuilder(
        builder: ((context, setState) => Scaffold(
              drawer: Drawer(
                child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      color: Colors.blue,
                      padding:
                          const EdgeInsets.only(top: 50, left: 20, bottom: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //avtar image
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      "https://wall.bestcarmagz.net/sites/default/files/porsche-taycan-2020-wallpapers-34756-1044058.png",
                                    ))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Michael Clerk",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            "michaelclerk@gmail.com",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() => _selectedIndex = 0);
                            },
                            child: CustomTileWidget(
                              icon: Icons.home,
                              text: 'Home',
                              isSelected: _selectedIndex == 0,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() => _selectedIndex = 1);
                            },
                            child: CustomTileWidget(
                              icon: Icons.person,
                              text: 'Profile',
                              isSelected: _selectedIndex == 1,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() => _selectedIndex = 2);
                            },
                            child: CustomTileWidget(
                              icon: Icons.people,
                              text: 'About us',
                              isSelected: _selectedIndex == 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              appBar: AppBar(
                centerTitle: true,
                title: const Text('home page'),
                actions: const [
                  Icon(CupertinoIcons.alarm),
                  Icon(CupertinoIcons.bell),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              body: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(children: [
                    // Text(
                    //   "Salom $_counter",
                    //   style: const TextStyle(
                    //       fontSize: 30,
                    //       fontWeight: FontWeight.bold,
                    //       color: Color.fromRGBO(168, 19, 168, 0.5),
                    //       fontFamily: 'Incosolata'),
                    // ),
                    // Text(
                    //   "Salom $_counter",
                    //   style: GoogleFonts.dancingScript(
                    //       color: MyCustomColors.first[200],
                    //       fontSize: 30,
                    //       fontWeight: FontWeight.bold),
                    // ),
                    // Text(
                    //   "Salom $_counter",
                    //   style: const TextStyle(
                    //       fontSize: 30,
                    //       fontWeight: FontWeight.bold,
                    //       color: Color.fromRGBO(168, 19, 168, 0.5),
                    //       fontFamily: 'Incosolata'),
                    // ),
                    // Text(
                    //   "Salom $_counter",
                    //   style: GoogleFonts.dancingScript(
                    //       color: MyCustomColors.first[200],
                    //       fontSize: 30,
                    //       fontWeight: FontWeight.bold),
                    // ),
                    // Text(
                    //   "Salom $_counter",
                    //   style: const TextStyle(
                    //       fontSize: 30,
                    //       fontWeight: FontWeight.bold,
                    //       color: Color.fromRGBO(168, 19, 168, 0.5),
                    //       fontFamily: 'Incosolata'),
                    // ),
                    // Text(
                    //   "Salom $_counter",
                    //   style: GoogleFonts.dancingScript(
                    //       color: MyCustomColors.first[200],
                    //       fontSize: 30,
                    //       fontWeight: FontWeight.bold),
                    // ),

                    const SizedBox(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://wall.bestcarmagz.net/sites/default/files/porsche-taycan-2020-wallpapers-34756-1044058.png",
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        print('material button');
                      },
                      color: Colors.grey,
                      elevation: 10,
                      child: Text('Material button',
                          style: GoogleFonts.roboto(
                              color: Colors.blue,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: Text('Text button',
                          style: GoogleFonts.roboto(
                              color: Colors.blue,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),

                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: const BorderSide(width: 2, color: Colors.red)),
                      child: Text('Text button',
                          style: GoogleFonts.roboto(
                              color: Colors.blue,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),

                    ElevatedButton(
                      style: ButtonStyle(
                          shadowColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                      onPressed: () {},
                      child: Text('Text button',
                          style: GoogleFonts.roboto(
                              color: Colors.red,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(CupertinoIcons.bag)),
                    CupertinoButton(
                        color: Colors.green,
                        child: const Text('Cupertino button'),
                        onPressed: () {}),

                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Elevated button with icon')),

                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.alarm),
                        label: const Text('text button with icon')),

                    CupertinoButton.filled(
                        child: const Text('cupertino'), onPressed: () {}),

                    GestureDetector(
                      child: Text('Press Me',
                          style: GoogleFonts.roboto(
                              color: Colors.red,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        print('pressed  ---------------');
                      },
                    ),
                    InkWell(
                      child: Text('Press Me',
                          style: GoogleFonts.roboto(
                              color: Colors.red,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        print('pressed  ---------------');
                      },
                    ),
                  ]),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                tooltip: 'Bosma kuyasan',
                onPressed: () {
                  _counter = _counter! + 1;
                  Navigator.of(context).pushNamed(PageSliver.path);
                  setState(() {});
                },
                child: const Icon(CupertinoIcons.add),
              ),
            )));
  }
}

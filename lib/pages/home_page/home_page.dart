import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_beginner/pages/other_rw_page/other_rw.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  static const path = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int? _counter;
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
              drawer: const Drawer(),
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
                  // CachedNetworkImage(
                  //   imageUrl:
                  //       "https://wall.bestcarmagz.net/sites/default/files/porsche-taycan-2020-wallpapers-34756-1044058.png",
                  //   errorWidget: (context, imageUrl, data) => Container(
                  //     height: 200,
                  //     width: 200,
                  //     color: Colors.yellow,
                  //   ),
                  // ),
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
              floatingActionButton: FloatingActionButton(
                tooltip: 'Bosma kuyasan',
                onPressed: () {
                  _counter = _counter! + 1;
                  Navigator.of(context).pushNamed(OtherRwPage.path);
                  setState(() {});
                },
                child: const Icon(CupertinoIcons.add),
              ),
            )));
  }
}

import 'package:flutter/material.dart';

class TilePage extends StatefulWidget {
  static const path = '/tile+page';
  const TilePage({Key? key}) : super(key: key);

  @override
  State<TilePage> createState() => _TilePageState();
}

class _TilePageState extends State<TilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      "Full Name",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      "Google@gmail.com",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 20,
          shrinkWrap: true,
          itemBuilder: (context, index) => _customTile(),
        ),
      ),
    );
  }

  Widget _customTile() {
    return Container(
      height: 100,
      width: double.maxFinite,
      color: Colors.transparent,
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.network(
              "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Text("data"),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

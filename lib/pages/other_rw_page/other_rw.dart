import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_beginner/pages/other_rw_page/model/item_model.dart';

class OtherRwPage extends StatefulWidget {
  static const path = "/other_rw_page";
  const OtherRwPage({Key? key}) : super(key: key);

  @override
  State<OtherRwPage> createState() => _OtherRwPageState();
}

class _OtherRwPageState extends State<OtherRwPage> {
  List<ItemModel> myList = [
    const ItemModel(
        imageUrl:
            "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
        name: 'Salom'),
    const ItemModel(
        imageUrl:
            "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
        name: 'Hello'),
    const ItemModel(
        imageUrl:
            "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
        name: 'PDP'),
    const ItemModel(
        imageUrl:
            "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
        name: 'G1'),
    const ItemModel(
        imageUrl:
            "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
        name: 'Flutter'),
    const ItemModel(
        imageUrl:
            "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
        name: 'Developers'),
    const ItemModel(
        imageUrl:
            "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
        name: 'Hello'),
    const ItemModel(
        imageUrl:
            "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
        name: 'Hello'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 3,
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            shrinkWrap: true,
            childAspectRatio: 10 / 12, //   x / y
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _customWidget(
                    imageUrl:
                        "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
                    name: "Salom"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _customWidget(
                    imageUrl:
                        "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
                    name: "Salom"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _customWidget(
                    imageUrl:
                        "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
                    name: "Salom"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _customWidget(
                    imageUrl:
                        "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
                    name: "Salom"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _customWidget(
                    imageUrl:
                        "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
                    name: "Salom"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _customWidget(
                    imageUrl:
                        "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
                    name: "Salom"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _customWidget(
                    imageUrl:
                        "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
                    name: "Salom"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _customWidget(
                    imageUrl:
                        "https://i.pinimg.com/originals/f6/7d/fe/f67dfefbf70944d426cebf2f5d0b1a3a.jpg",
                    name: "Salom"),
              ),
            ],
          ),
        ));
  }

  Widget _customWidget({String? name, String? imageUrl}) {
    return Card(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl!,
              width: 100,
              fit: BoxFit.cover,
              errorWidget: (context, url, child) => const FlutterLogo(size: 50),
            ),
            Text(name!),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_beginner/utils/additional_functions.dart';
import 'dart:io' show Platform;

class Lesson6Page extends StatefulWidget {
  static const path = '/lesson_6_page';
  const Lesson6Page({Key? key}) : super(key: key);

  @override
  State<Lesson6Page> createState() => _Lesson6PageState();
}

class _Lesson6PageState extends State<Lesson6Page> with AdditionalFunctions {
  bool? canPop = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => canPop!,
      child: CupertinoPageScaffold(
          child: SafeArea(
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            TextButton(
              child: const Text(
                'dialog',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              onPressed: () => Platform.isIOS
                  ? AdditionalFunctions.iosStyleDialog(context)
                  : AdditionalFunctions.androidStyleDialog(context),
            ),
            StatefulBuilder(builder: (context, setState) {
              return TextButton(
                child: const Text(
                  'back',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    canPop = true;
                  });
                  if (canPop!) {
                    Navigator.of(context).pop();
                  }
                },
              );
            }),
          ]),
        ),
      )),
    );
  }
}

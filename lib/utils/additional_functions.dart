import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin AdditionalFunctions {
  static void androidStyleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Alert dialog'),
              content: const Text("Bu alert dialog"),
              actions: [
                TextButton(
                    onPressed: () {
                      if (Navigator.canPop(context)) {
                        Navigator.of(context)
                          ..pop()
                          ..pop();
                      }
                    },
                    child: const Text('ok')),
                TextButton(onPressed: () {}, child: const Text('ok')),
              ],
            ));
  }

  static iosStyleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: const Text("Dialog"),
              content: const Text("Bu ios style dialog"),
              actions: [
                CupertinoDialogAction(
                    onPressed: () {
                      if (Navigator.canPop(context)) {
                        Navigator.of(context)
                          ..pop()
                          ..pop();
                      }
                    },
                    child: const Text('ok')),
                CupertinoDialogAction(
                    onPressed: () {}, child: const Text('ok')),
              ],
            ));
  }
}

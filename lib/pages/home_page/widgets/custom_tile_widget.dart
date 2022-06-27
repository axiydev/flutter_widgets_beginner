import 'package:flutter/material.dart';

class CustomTileWidget extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final bool? isSelected;
  const CustomTileWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Icon(
                icon!,
                color: isSelected! ? Colors.blue : Colors.grey,
              )),
          const Spacer(
            flex: 1,
          ),
          Expanded(
              flex: 14,
              child: Text(
                text!,
                style: TextStyle(
                    color: isSelected! ? Colors.blue : Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
        ],
      ),
    );
  }
}

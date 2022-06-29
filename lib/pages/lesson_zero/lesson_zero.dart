import 'dart:developer';

import 'package:flutter/material.dart';

class ZeroPage extends StatefulWidget {
  static const path = '/zero_page';
  const ZeroPage({Key? key}) : super(key: key);

  @override
  State<ZeroPage> createState() => _ZeroPageState();
}

class _ZeroPageState extends State<ZeroPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 450));
    _animation =
        Tween<double>(begin: 0.0, end: 1).animate(_animationController!);

    super.initState();
  }

  _createAnimation() {
    _animationController!.status == AnimationStatus.completed
        ? _animationController!.reverse()
        : _animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Flow(
        delegate: FlowDemoDelegate(
          myAnimation: _animation!,
        ),
        children: [
          for (var i = 0; i < 5; i++)
            Container(
              constraints: BoxConstraints.tight(const Size(50, 50)),
              child: FloatingActionButton(
                heroTag: 'index$i',
                onPressed: _createAnimation,
                child: const Icon(Icons.abc),
              ),
            ),
        ],
      )),
    );
  }
}

class FlowDemoDelegate extends FlowDelegate {
  final Animation<double> myAnimation;
  FlowDemoDelegate({required this.myAnimation}) : super(repaint: myAnimation);
  @override
  void paintChildren(FlowPaintingContext context) {
    for (int i = context.childCount - 1; i >= 0; i--) {
      log(context.getChildSize(i)!.height.toString());
      double dy = (context.getChildSize(i)!.height + 10) * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(0, dy * myAnimation.value + 10, 0),
      );
    }
  }

  @override
  bool shouldRepaint(covariant FlowDemoDelegate oldDelegate) {
    return myAnimation != oldDelegate.myAnimation;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return const Size(50.0, double.infinity);
  }

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return i == 0 ? constraints : BoxConstraints.tight(const Size(50.0, 50.0));
  }
}

import 'package:flutter/material.dart';

class CircularBorder extends StatelessWidget {
  final Widget child;
  final double padding;
  final double borderWidth;
  final Color color;
  final double radius;

  const CircularBorder(
      {Key? key,
      required this.radius,
      required this.child,
      required this.padding,
      required this.borderWidth,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding),
        width: radius,
        height: radius,
        child: child,
        decoration: ShapeDecoration(
            color: Colors.transparent,
            shape: CircleBorder(
                side: BorderSide(width: borderWidth, color: color))));
  }
}

import 'package:finance_app_one/common/colors.dart';
import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  final double radius;
  final String imageUrl;
  const CircularAvatar({Key? key, this.radius = 25, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      // backgroundColor: pink,
      // radius: radius,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(250),
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}

import 'package:finance_app_one/common/colors.dart';
import 'package:finance_app_one/common/constants.dart';
import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  final double? width;
  final Widget child;
  // final double height;

  const CommonCard({Key? key, this.width, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      constraints: const BoxConstraints(minHeight: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: cardWhite,
          boxShadow: const [
            BoxShadow(
              color: linkWater,
              offset: Offset(5, 5),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(cardPadding),
        child: child,
      ),
    );
  }
}

import 'package:finance_app_one/common/colors.dart';
import 'package:finance_app_one/common/constants.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final bool? isSafe;
  const Background({Key? key, required this.child, this.isSafe = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _child = Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 0),
      child: child,
    );
    return Scaffold(
        backgroundColor: selago,
        body: isSafe! ? SafeArea(child: _child) : _child);
  }
}

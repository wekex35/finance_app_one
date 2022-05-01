import 'package:finance_app_one/common/colors.dart';
import 'package:finance_app_one/common/constants.dart';
import 'package:flutter/material.dart';

class ButtonNM extends StatelessWidget {
  final double width;
  final String label;
  final Function()? onClick;

  const ButtonNM(
      {Key? key, required this.width, required this.label, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: eastBay),
      width: width,
      height: 45,
      alignment: Alignment.center,
      child: InkWell(
          child: Text(
            label,
            style: const TextStyle(
                color: cardWhite, fontWeight: FontWeight.bold, fontSize: 14),
          ),
          onTap: onClick),
    );
  }
}

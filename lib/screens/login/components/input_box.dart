import 'package:finance_app_one/common/constants.dart';
import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  const InputBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(cardPadding),
      child: TextField(
        decoration: InputDecoration(labelText: "hellpo"),
      ),
    );
  }
}

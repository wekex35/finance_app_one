import 'package:finance_app_one/common/colors.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  IconData selectedIcon = Icons.add;
  @override
  Widget build(BuildContext context) {
    const botArray = [
      Icons.home_outlined,
      Icons.credit_card,
      Icons.add,
      Icons.currency_bitcoin_outlined,
      Icons.account_circle_outlined
    ];
    _selectButton(e) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIcon = e;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(5),
          constraints: const BoxConstraints(
            minWidth: 60,
          ),
          decoration: BoxDecoration(
              color: e == selectedIcon ? eastBay : Colors.transparent,
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            e,
            color: e == selectedIcon ? cardWhite : nevada,
            size: 35,
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: botArray.map((e) => _selectButton(e)).toList()),
    );
  }
}

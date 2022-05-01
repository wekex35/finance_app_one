import 'package:finance_app_one/common/colors.dart';
import 'package:finance_app_one/common/constants.dart';
import 'package:flutter/material.dart';

class ChipSelector extends StatefulWidget {
  final List<String> list;
  const ChipSelector({Key? key, required this.list}) : super(key: key);

  @override
  State<ChipSelector> createState() => _ChipSelectorState();
}

class _ChipSelectorState extends State<ChipSelector> {
  String selected = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding),
      child: SizedBox(
        height: 40,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: widget.list.map<Widget>((e) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selected = e;
                  });
                },
                child: Container(
                    margin: const EdgeInsets.only(right: 15),
                    constraints: const BoxConstraints(minWidth: 100),
                    decoration: BoxDecoration(
                        color: selected == e ? eastBay : cardWhite,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                            color: linkWater,
                            offset: Offset(5, 5),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ]),
                    alignment: Alignment.center,
                    child: Text(
                      "$e",
                      style: TextStyle(
                        color: selected == e ? cardWhite : cinder,
                      ),
                    )),
              );
            }).toList()),
      ),
    );
  }
}

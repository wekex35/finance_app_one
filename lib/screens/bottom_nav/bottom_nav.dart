import 'package:finance_app_one/screens/bottom_nav/components/bottom_bar.dart';
import 'package:finance_app_one/screens/home/home_main.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: HomeMain()),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}

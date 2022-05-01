import 'package:finance_app_one/common/colors.dart';
import 'package:finance_app_one/common/constants.dart';
import 'package:finance_app_one/components/circular_avatar.dart';
import 'package:finance_app_one/components/common_card.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final double width;
  const ProfileCard({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _menuRow() {
      return Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          const Spacer(),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
        ],
      );
    }

    Widget _vertDivider = Container(
      height: 45,
      width: 1,
      color: Colors.black,
    );
    _transactionAmount(String amount, String title) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '\$$amount',
            style: const TextStyle(color: eastBay, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(title),
        ],
      );
    }

    _nameProfession(String name, String profession) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: cardPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: eastBay, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(profession),
          ],
        ),
      );
    }

    _transactionDetailse() {
      return Padding(
        padding: const EdgeInsets.only(top: cardPadding),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _transactionAmount('5000', 'Income'),
            _vertDivider,
            _transactionAmount('5000', 'Expanses'),
            _vertDivider,
            _transactionAmount('5000', 'Loan'),
          ],
        ),
      );
    }

    return CommonCard(
        width: width,
        child: Column(
          children: [
            _menuRow(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CircularAvatar(
                  radius: 150, imageUrl: "assets/profile_main.jpg"),
            ),
            _nameProfession("Hira Riaz", "UI designer"),
            _transactionDetailse(),
          ],
        ));
  }
}

import 'package:finance_app_one/common/app_utils.dart';
import 'package:finance_app_one/common/constants.dart';
import 'package:finance_app_one/components/section_header.dart';
import 'package:finance_app_one/components/backgroud.dart';
import 'package:finance_app_one/components/button_nm.dart';
import 'package:finance_app_one/components/common_card.dart';
import 'package:finance_app_one/screens/home/components/profile_card.dart';
import 'package:finance_app_one/screens/recent_transactions/recent_transactions.dart';
import 'package:flutter/material.dart';

import 'components/transactions.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;

        return Background(
          isSafe: false,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ProfileCard(
                width: width,
              ),
              const SectionHeader(
                leftTitle: "Overview",
                rightTitle: "Sept 13, 2021",
                leftIcon: Icon(Icons.notifications_active_outlined),
              ),
              const TransactionsList(),
              const SizedBox(
                height: defaultPadding,
              ),
              ButtonNM(
                width: width,
                label: "Recent Transactions",
                onClick: () {
                  openScreen(context, const RecentTransaction());
                },
              ),
              const SizedBox(
                height: defaultPadding,
              ),
            ],
          ),
        );
      },
    );
  }
}

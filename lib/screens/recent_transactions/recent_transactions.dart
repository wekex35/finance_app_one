import 'package:finance_app_one/components/chip_selector.dart';
import 'package:finance_app_one/common/constants.dart';
import 'package:finance_app_one/components/section_header.dart';
import 'package:finance_app_one/components/backgroud.dart';
import 'package:finance_app_one/components/button_nm.dart';
import 'package:flutter/material.dart';

import 'components/transaction_card.dart';
import 'components/transaction_circle.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: ListView(children: [
        const SectionHeader(
          leftTitle: "Recent Transactions",
          rightTitle: "See All",
        ),
        const ChipSelector(
          list: ["All", "Income", "Expanse"],
        ),
        const SectionHeader(
          leftTitle: "Today",
        ),
        const TransactionCard(),
        TransactionCircle(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: ButtonNM(
              width: MediaQuery.of(context).size.width, label: "See Details"),
        )
      ]),
    );
  }
}

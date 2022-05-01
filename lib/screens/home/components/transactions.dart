import 'package:finance_app_one/common/colors.dart';
import 'package:finance_app_one/common/constants.dart';
import 'package:finance_app_one/common/data/sample_data.dart';
import 'package:finance_app_one/components/common_card.dart';
import 'package:finance_app_one/model/transation_model.dart';
import 'package:flutter/material.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const titleFontStyle =
        TextStyle(color: cinder, fontSize: 16, fontWeight: FontWeight.bold);
    _titleSubTitle({
      required String title,
      required String subTitle,
    }) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleFontStyle,
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 12),
          ),
        ],
      );
    }

    _iconBox(icon) {
      return Container(
        margin: const EdgeInsets.only(right: defaultPadding - 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: iconBg, borderRadius: BorderRadius.circular(15)),
        child: Icon(icon),
      );
    }

    _transCard({
      required String title,
      required String subTitle,
      required String amount,
      required IconData icon,
    }) {
      return Padding(
        padding: const EdgeInsets.only(top: defaultPadding - 5),
        child: CommonCard(
            child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _iconBox(icon),
            _titleSubTitle(title: title, subTitle: subTitle),
            const Spacer(),
            Text(
              amount,
              style: titleFontStyle,
            )
          ],
        )),
      );
    }

    return Column(
        children: transactionArrays.map((e) {
      TransactionModel transData = TransactionModel.fromJSON(e);
      return _transCard(
          title: transData.title,
          subTitle: transData.subTitle,
          amount: transData.amount,
          icon: transData.icon);
    }).toList());
  }
}

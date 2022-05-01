import 'package:finance_app_one/common/colors.dart';
import 'package:finance_app_one/common/constants.dart';
import 'package:finance_app_one/components/common_card.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding),
      child: CommonCard(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Icon(
            Icons.mail_outline,
            size: 40,
            color: eastBay,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Payment",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: cinder)),
              SizedBox(
                height: 5,
              ),
              Text("Payment from Andrea",
                  style: TextStyle(fontSize: 12, color: nevada))
            ],
          ),
          const Spacer(),
          const Text("\$150",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: eastBay)),
        ],
      )),
    );
  }
}

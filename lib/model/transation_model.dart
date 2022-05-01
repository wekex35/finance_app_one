import 'package:flutter/material.dart';

class TransactionModel {
  late String title;
  late String subTitle;
  late IconData icon;
  late String amount;

  TransactionModel({
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.amount,
  });

  TransactionModel.fromJSON(Map<String, dynamic> data) {
    title = data['title'];
    subTitle = data['subTitle'];
    icon = data['icon'];
    amount = data['amount'];
  }
}

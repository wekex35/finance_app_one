import 'package:finance_app_one/screens/login/login_screen.dart';
import 'package:finance_app_one/screens/recent_transactions/recent_transactions.dart';
import 'package:flutter/material.dart';
import 'common/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, backgroundColor: eastBay),
      home: const LoginScreen(),
    );
  }
}

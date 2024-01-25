import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/color.dart';

class Expense_Screen extends StatefulWidget {
  const Expense_Screen({Key? key}) : super(key: key);

  @override
  State<Expense_Screen> createState() => _Expense_ScreenState();
}

class _Expense_ScreenState extends State<Expense_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        title: Text("Expense Screen"),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/color.dart';

class Service_Charge_Screen extends StatefulWidget {
  const Service_Charge_Screen({Key? key}) : super(key: key);

  @override
  State<Service_Charge_Screen> createState() => _Service_Charge_ScreenState();
}

class _Service_Charge_ScreenState extends State<Service_Charge_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        title: Text("Service Charge Screen"),
      ),
    );
  }
}

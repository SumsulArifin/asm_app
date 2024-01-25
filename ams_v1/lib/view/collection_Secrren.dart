import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/color.dart';

class Collection_Screen extends StatefulWidget {
  const Collection_Screen({Key? key}) : super(key: key);

  @override
  State<Collection_Screen> createState() => _Collection_ScreenState();
}

class _Collection_ScreenState extends State<Collection_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        title: Text("Collection Screen"),
      ),
    );
  }
}
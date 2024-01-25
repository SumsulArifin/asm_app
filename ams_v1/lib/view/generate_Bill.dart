import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/color.dart';

class GenerateBillScreen extends StatefulWidget {
  const GenerateBillScreen({Key? key}) : super(key: key);

  @override
  State<GenerateBillScreen> createState() => _Generate_Bill_ScreenState();
}

class _Generate_Bill_ScreenState extends State<GenerateBillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        title: Text("Generate Bill Screen"),
      ),
    );
  }
}

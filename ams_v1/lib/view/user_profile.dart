import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/color.dart';

class User_Profile_Screen extends StatefulWidget {
  const User_Profile_Screen({Key? key}) : super(key: key);

  @override
  State<User_Profile_Screen> createState() => _User_Profile_ScreenState();
}

class _User_Profile_ScreenState extends State<User_Profile_Screen> {
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

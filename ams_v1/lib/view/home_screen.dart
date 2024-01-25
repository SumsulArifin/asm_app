import 'package:ams_v1/res/color.dart';
import 'package:ams_v1/view_model/home_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/routes/routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bodyColor,
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
              decoration: BoxDecoration(
                color: AppColors.bodyColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.userprofile);
                        },
                        child: Icon(
                          Icons.account_circle_outlined,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.login);
                        },
                        child: Icon(
                          Icons.logout_rounded,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.only(left: 3, bottom: 15),
                    child: Text(
                      "Hello User",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            // Row with 3 InkWell widgets
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                      height: 40,
                      width: 40,,
                      child: Card(
                        elevation: 20,
                        color: AppColors.homeIcon,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset("assets/images/img_building_1.png", width: 40, height: 40),
                                           // ElevatedButton(
                              //   onPressed: () {},
                              //   child: Text("Press", style: TextStyle(color: Colors.green)),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      // child: InkWell(
                      //   onTap: () {
                      //     Navigator.pushNamed(context, RoutesName.flatSetup);
                      //   },
                      //   child: Column(
                      //     children: [
                      //       Image.asset(
                      //         "assets/images/img_building_1.png",
                      //         width: 70,
                      //         height: 70,
                      //         fit: BoxFit.cover,
                      //       ),
                      //       SizedBox(height: 8),
                      //       Text(
                      //         "Flat Setup",
                      //         style: TextStyle(
                      //           fontSize: 12,
                      //           fontWeight: FontWeight.w600,
                      //           color: Colors.black,
                      //         ),
                      //       ),
                      //
                      //     ],
                      //   ),
                      // ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.createUser);
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/img_add_1.png",
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Create User",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.generateBillScreen);
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/img_bill_1.png",
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Generate Bill",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.serviceChargeScreen);
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/img_cost_1.png",
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Service Charge",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
      
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.expense);
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/img_budget_1.png",
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Expense",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.collection);
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/img_coin_collecting.png",
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Collection",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:ams_v1/res/color.dart';
// import 'package:flutter/material.dart';
//
// import '../view_model/services/splash_services.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   SplashServices splashServices = SplashServices();
//
//   @override
//   void initState() {
//     super.initState();
//     splashServices.checkAuthentication(context);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     double screenWidth = MediaQuery.of(context).size.width;
//
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           color: AppColors.bodyColor,
//           width: double.infinity,
//           padding: EdgeInsets.symmetric(
//             horizontal: screenWidth * 0.05,
//             vertical: screenHeight * 0.03,
//           ),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 _buildHouseLogoAndText(context, screenHeight, screenWidth),
//                 Divider(
//                   indent: screenWidth * 0.09,
//                   endIndent: screenWidth * 0.09,
//                 ),
//                 SizedBox(height: screenHeight * 0.01),
//                 Container(
//                   width: screenWidth * 0.7,
//                   margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
//                   child: Text(
//                     "Protected by reCAPTCHA and subject to the Rhombus Privacy Policy and Terms of Service.",
//                     style: TextStyle(
//                       fontSize: screenHeight * 0.015,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: screenHeight * 0.1),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildHouseLogoAndText(
//       BuildContext context,
//       double screenHeight,
//       double screenWidth,
//       ) {
//     return Align(
//       alignment: Alignment.center,
//       child: SizedBox(
//         height: screenHeight * 0.4,
//         width: screenWidth * 0.8,
//         child: Stack(
//           alignment: Alignment.bottomCenter,
//           children: [
//             Image.asset(
//               'assets/images/img_pngtree_house_logo.png',
//               height: double.infinity,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 width: screenWidth * 0.5,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(screenWidth * 0.03),
//                   child: Text(
//                     "Your Dream Home",
//                     style: TextStyle(
//                       fontSize: screenHeight * 0.02,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:ams_v1/res/color.dart';
import 'package:flutter/material.dart';

import '../view_model/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    splashServices.checkAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: AppColors.bodyColor,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 13.0,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
              children: [
                _buildHouseLogoAndText(context),
                Divider(
                  indent: 27.0,
                  endIndent: 27.0,
                ),
                SizedBox(height: 7.0),
                Container(
                  width: 267.0,
                  margin: EdgeInsets.only(
                    left: 36.0,
                    right: 41.0,
                  ),
                  child: Text(
                    "Protected by reCAPTCHA and subject to the Rhombus Privacy Policy and Terms of Service.",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 82.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHouseLogoAndText(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 332.0,
        width: 302.0,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'assets/images/img_pngtree_house_logo.png',
              height: 332.0,
              width: 302.0,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Text(
                  "Your Dream Home",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




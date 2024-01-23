
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
    // TODO: implement initState
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
          child: Column(
            children: [
              _buildHouseLogoAndText(context),
              Spacer(),
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
                    )
                ),
              ),
              SizedBox(height: 82.0),
            ],
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
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              'assets/images/img_pngtree_house_logo.png', // Replace with the correct path to your image in the assets folder
              height: 332.0,
              width: 302.0,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 200.0,
                margin: EdgeInsets.only(
                  left: 29.0,
                  bottom: 22.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Text(
                    "Your Dream Home",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.w700,
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// import '../view_model/services/splash_services.dart';
//
//
//
// class SplashView extends StatefulWidget {
//   const SplashView({Key? key}) : super(key: key);
//
//   @override
//   _SplashViewState createState() => _SplashViewState();
// }
//
// class _SplashViewState extends State<SplashView> {
//
//   SplashServices splashServices = SplashServices();
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     splashServices.checkAuthentication(context);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Center(
//         child: Text('Splash screen', style: Theme.of(context).textTheme.headline4,),
//       ),
//     );
//   }
// }
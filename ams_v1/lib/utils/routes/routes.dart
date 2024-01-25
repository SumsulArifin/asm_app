

import 'package:ams_v1/utils/routes/routes_name.dart';
import 'package:ams_v1/view/collection_Secrren.dart';
import 'package:ams_v1/view/createUser_screen.dart';
import 'package:ams_v1/view/expense_Screen.dart';
import 'package:ams_v1/view/flat_setup.dart';
import 'package:ams_v1/view/generate_Bill.dart';
import 'package:ams_v1/view/service_Charge_Screen.dart';
import 'package:ams_v1/view/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view/home_screen.dart';
import '../../view/login_view.dart';
import '../../view/signp_view.dart';
import '../../view/splash_view.dart';


class Routes {

  static Route<dynamic>  generateRoute(RouteSettings settings){

    switch(settings.name){
      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext context) => const SplashScreen());

      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginView());
      case RoutesName.signUp:
        return MaterialPageRoute(builder: (BuildContext context) => const SignUpView());
      case RoutesName.flatSetup:
        return MaterialPageRoute(builder: (BuildContext context) => const FlatSetup());
      case RoutesName.createUser:
        return MaterialPageRoute(builder: (BuildContext context) => const CreateUserScreen());
      case RoutesName.generateBillScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const GenerateBillScreen());
      case RoutesName.serviceChargeScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const Service_Charge_Screen());
      case RoutesName.expense:
        return MaterialPageRoute(builder: (BuildContext context) => const Expense_Screen());
      case RoutesName.collection:
        return MaterialPageRoute(builder: (BuildContext context) => const Collection_Screen());
      case RoutesName.userprofile:
        return MaterialPageRoute(builder: (BuildContext context) => const User_Profile_Screen());



      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });

    }
  }
}
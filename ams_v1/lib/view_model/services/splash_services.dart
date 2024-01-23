import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../model/user_model.dart';
import '../../utils/routes/routes_name.dart';
import '../user_view_model.dart';


class SplashServices {
  Future<UserModel> getUserData() async {
    return await UserViewModel().getUser();
  }

  Future<void> checkAuthentication(BuildContext context) async {
    try {
      UserModel value = await getUserData();

      print(value.token.toString());

      await Future.delayed(Duration(seconds: 3));

      if (value.token.toString() == 'null' || value.token.toString() == '') {
        Navigator.pushNamed(context, RoutesName.login);
      } else {
        Navigator.pushNamed(context, RoutesName.home);
      }
    } catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
    }
  }
}


//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
//
// import '../../model/user_model.dart';
// import '../../utils/routes/routes_name.dart';
// import '../user_view_model.dart';
//
//
// class SplashServices {
//
//
//   Future<UserModel> getUserDate() => UserViewModel().getUser();
//
//
//   void checkAuthentication(BuildContext context)async{
//
//     getUserDate().then((value)async{
//
//       print(value.token.toString());
//
//       if(value.token.toString() == 'null' || value.token.toString() == ''){
//         await Future.delayed(Duration(seconds: 3));
//         Navigator.pushNamed(context, RoutesName.login);
//       }else {
//         await  Future.delayed(Duration(seconds: 3));
//         Navigator.pushNamed(context, RoutesName.home);
//       }
//
//     }).onError((error, stackTrace){
//       if(kDebugMode){
//         print(error.toString());
//       }
//     });
//
//   }
//
//
//
// }
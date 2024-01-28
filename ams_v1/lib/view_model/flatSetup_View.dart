import 'package:ams_v1/model/customerUser_model.dart';
import 'package:ams_v1/respository/flatSetup_repository.dart';
import 'package:flutter/cupertino.dart';

import '../data/response/api_response.dart';

class FlatSetupView with ChangeNotifier {

  final _myRepo = FlatSetupRepository();

  ApiResponse<UserListModel> userList = ApiResponse.loading();

  setUserList(ApiResponse<UserListModel> response){
    userList = response ;
    notifyListeners();
  }

  Future<void> fetchUserListApi ()async{

    setUserList(ApiResponse.loading());

    _myRepo.fetchUserList().then((value){

      setUserList(ApiResponse.completed(value));

    }).onError((error, stackTrace){

      setUserList(ApiResponse.error(error.toString()));

    });
  }


}
import 'package:ams_v1/model/customerUser_model.dart';

import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiService.dart';
import '../res/app_url.dart';

class FlatSetupRepository{
  BaseApiServices _apiServices = NetworkApiService() ;

  Future<UserListModel> fetchUserList()async{

    try{

      dynamic response = await _apiServices.getGetApiResponse(AppUrl.getAllUserApiEndPoint);
      return response=UserListModel.fromJson(response);
      // return response = CustomerListModel().fromJson(response);

    }catch(e){
      rethrow ;
    }
  }
}
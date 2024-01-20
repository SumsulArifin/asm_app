import 'package:ams_v1/model/customer_model.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiService.dart';
import '../res/app_url.dart';

class HomeRepository {

  BaseApiServices _apiServices = NetworkApiService() ;

  Future<CustomerListModel> fetchCustomerList()async{

    try{

      dynamic response = await _apiServices.getGetApiResponse(AppUrl.getAllCustomerApiEndPoint);
      return response=CustomerListModel.fromJson(response);
      // return response = CustomerListModel().fromJson(response);

    }catch(e){
      rethrow ;
    }
  }

}
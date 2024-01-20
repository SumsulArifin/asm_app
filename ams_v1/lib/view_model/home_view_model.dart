

import 'package:flutter/cupertino.dart';

import '../data/response/api_response.dart';
import '../model/customer_model.dart';
import '../model/movies_model.dart';
import '../respository/home_repository.dart';

class HomeViewViewModel with ChangeNotifier {

  final _myRepo = HomeRepository();

  ApiResponse<CustomerListModel> customerList = ApiResponse.loading();

  setCustomerList(ApiResponse<CustomerListModel> response){
    customerList = response ;
    notifyListeners();
  }


  Future<void> fetchCustomerListApi ()async{

    setCustomerList(ApiResponse.loading());

    _myRepo.fetchCustomerList().then((value){

      setCustomerList(ApiResponse.completed(value));

    }).onError((error, stackTrace){

      setCustomerList(ApiResponse.error(error.toString()));

    });
  }


}
class UserModel {
  String? token;
  int? customersId;

  UserModel({this.token, this.customersId});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      token: json['token'],
      customersId: json['customers_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'customers_id': customersId,
    };
  }
}
